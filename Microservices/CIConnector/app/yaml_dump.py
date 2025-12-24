from __future__ import annotations

from io import StringIO
from typing import Any
from ruamel.yaml import YAML
from ruamel.yaml.scalarstring import LiteralScalarString


def _to_literal(obj: Any) -> Any:
    """
    Convert multiline strings into YAML literal blocks (|).
    """
    if isinstance(obj, dict):
        return {k: _to_literal(v) for k, v in obj.items()}
    if isinstance(obj, list):
        return [_to_literal(x) for x in obj]
    if isinstance(obj, str) and "\n" in obj:
        s = obj.strip("\n")
        return LiteralScalarString(s + "\n")
    return obj


def dump_yaml(data: Any) -> str:
    y = YAML()
    y.version = (1, 2)                 # YAML 1.2 => 'on' is NOT boolean
    y.indent(mapping=2, sequence=4, offset=2)
    y.width = 120
    y.preserve_quotes = True

    data2 = _to_literal(data)

    buf = StringIO()
    y.dump(data2, buf)
    return buf.getvalue()
