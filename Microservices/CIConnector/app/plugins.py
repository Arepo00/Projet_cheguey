from __future__ import annotations

import os
import re
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Any

import yaml


@dataclass
class Plugin:
    name: str
    source_file: str
    data: Dict[str, Any]


class Yaml12SafeLoader(yaml.SafeLoader):
    """
    YAML loader that avoids YAML 1.1 "on/off/yes/no" being parsed as booleans.
    Keeps true/false as booleans.
    """


# Remove default bool resolver (YAML 1.1), then re-add ONLY true/false.
for ch, patterns in list(Yaml12SafeLoader.yaml_implicit_resolvers.items()):
    Yaml12SafeLoader.yaml_implicit_resolvers[ch] = [
        (tag, regexp) for (tag, regexp) in patterns
        if tag != "tag:yaml.org,2002:bool"
    ]

Yaml12SafeLoader.add_implicit_resolver(
    "tag:yaml.org,2002:bool",
    re.compile(r"^(?:true|false)$", re.IGNORECASE),
    list("tTfF"),
)


def load_plugins(plugins_dir: str) -> Dict[str, Plugin]:
    pdir = Path(plugins_dir)
    if not pdir.exists():
        return {}

    plugins: Dict[str, Plugin] = {}
    for yml_file in sorted(pdir.glob("*.y*ml")):
        raw = yml_file.read_text(encoding="utf-8")
        doc = yaml.load(raw, Loader=Yaml12SafeLoader) or {}
        name = doc.get("name") or yml_file.stem
        plugins[name] = Plugin(name=name, source_file=str(yml_file), data=doc)

    return plugins
