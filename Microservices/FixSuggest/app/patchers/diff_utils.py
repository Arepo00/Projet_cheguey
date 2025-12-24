import difflib

def unified_diff(old: str, new: str, filename: str) -> str:
    old_lines = old.splitlines(keepends=True)
    new_lines = new.splitlines(keepends=True)
    diff = difflib.unified_diff(
        old_lines, new_lines,
        fromfile=f"{filename} (before)",
        tofile=f"{filename} (after)",
        lineterm=""
    )
    return "\n".join(diff)
