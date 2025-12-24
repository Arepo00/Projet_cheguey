import re

def enable_r8_proguard_groovy(build_gradle: str) -> str:
    """
    Best-effort for Groovy DSL (build.gradle):
    - enables minifyEnabled true
    - enables shrinkResources true
    - ensures proguardFiles line exists
    """
    txt = build_gradle

    # ensure inside "release { }" block we have minifyEnabled/shrinkResources/proguardFiles
    # naive but practical for student projects.
    release_block = re.search(r"buildTypes\s*\{\s*.*?release\s*\{.*?\}\s*.*?\}", txt, re.S)
    if not release_block:
        # If no buildTypes/release block exists, add a minimal one
        insert_point = re.search(r"android\s*\{", txt)
        if insert_point:
            idx = insert_point.end()
            addition = """
    buildTypes {
        release {
            minifyEnabled true
            shrinkResources true
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'
        }
    }
"""
            txt = txt[:idx] + addition + txt[idx:]
            return txt
        return txt

    # If release exists, patch flags
    def ensure_line(block: str, line: str) -> str:
        if line.strip() in block:
            return block
        return block.rstrip() + "\n            " + line.strip() + "\n"

    # extract the release { ... } part
    m = re.search(r"(release\s*\{)(.*?)(\})", txt, re.S)
    if not m:
        return txt

    header, body, closing = m.group(1), m.group(2), m.group(3)

    # normalize minifyEnabled/shrinkResources
    body = re.sub(r"minifyEnabled\s+(true|false)", "minifyEnabled true", body)
    body = re.sub(r"shrinkResources\s+(true|false)", "shrinkResources true", body)

    if "minifyEnabled" not in body:
        body = ensure_line(body, "minifyEnabled true")
    if "shrinkResources" not in body:
        body = ensure_line(body, "shrinkResources true")
    if "proguardFiles" not in body:
        body = ensure_line(body, "proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'proguard-rules.pro'")

    return txt[:m.start()] + header + body + closing + txt[m.end():]
