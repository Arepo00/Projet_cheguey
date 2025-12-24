from xml.etree import ElementTree as ET

ANDROID_NS = "http://schemas.android.com/apk/res/android"

def _get_android_attr(name: str) -> str:
    return f"{{{ANDROID_NS}}}{name}"

def set_exported_false(manifest_xml: str) -> str:
    """
    Conservative patch:
    - sets android:exported="false" ONLY when exported is explicitly "true"
    - does not guess components that should remain exported
    """
    root = ET.fromstring(manifest_xml)
    ET.register_namespace("android", ANDROID_NS)

    changed = 0
    for tag in ["activity", "activity-alias", "service", "receiver", "provider"]:
        for el in root.findall(f".//{tag}"):
            exported_attr = _get_android_attr("exported")
            val = el.get(exported_attr)
            if val is not None and val.strip().lower() == "true":
                el.set(exported_attr, "false")
                changed += 1

    # If nothing changed, return original to avoid useless diffs
    if changed == 0:
        return manifest_xml

    return ET.tostring(root, encoding="utf-8", xml_declaration=True).decode("utf-8")
