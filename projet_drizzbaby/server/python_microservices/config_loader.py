"""
Configuration loader for microservices.
Loads vulnerability patterns and checks from config.json
"""
import json
from pathlib import Path
from typing import Any, List, Dict, Optional


class ConfigLoader:
    """Loads and caches configuration from JSON."""

    _instance = None
    _config: Optional[Dict[str, Any]] = None

    def __new__(cls):
        if cls._instance is None:
            cls._instance = super(ConfigLoader, cls).__new__(cls)
        return cls._instance

    @staticmethod
    def _get_config_path() -> Path:
        """Get path to config.json file."""
        return Path(__file__).parent / "config.json"

    @classmethod
    def load_config(cls) -> Dict[str, Any]:
        """Load configuration from config.json (cached)."""
        if cls._config is None:
            config_path = cls._get_config_path()
            if not config_path.exists():
                raise FileNotFoundError(f"Configuration file not found: {config_path}")
            with open(config_path, "r") as f:
                cls._config = json.load(f)
        return cls._config

    @classmethod
    def get_manifest_patterns(cls) -> List[Dict[str, Any]]:
        """Get manifest vulnerability patterns."""
        config = cls.load_config()
        return config.get("manifest_patterns", [])

    @classmethod
    def get_dangerous_permissions(cls) -> List[Dict[str, Any]]:
        """Get list of dangerous permissions to check."""
        config = cls.load_config()
        return config.get("dangerous_permissions", [])

    @classmethod
    def get_crypto_patterns(cls) -> List[Dict[str, Any]]:
        """Get cryptographic vulnerability patterns."""
        config = cls.load_config()
        return config.get("crypto_patterns", [])

    @classmethod
    def get_secret_patterns(cls) -> List[Dict[str, Any]]:
        """Get secret detection patterns."""
        config = cls.load_config()
        return config.get("secret_patterns", [])

    @classmethod
    def get_network_patterns(cls) -> List[Dict[str, Any]]:
        """Get network vulnerability patterns."""
        config = cls.load_config()
        return config.get("network_patterns", [])

    @classmethod
    def get_general_recommendations(cls) -> List[Dict[str, Any]]:
        """Get general security recommendations."""
        config = cls.load_config()
        return config.get("general_recommendations", [])

    @classmethod
    def reload_config(cls):
        """Force reload of configuration from disk."""
        cls._config = None
        return cls.load_config()


# Convenience functions for direct access
def get_manifest_patterns() -> List[Dict[str, Any]]:
    """Get manifest vulnerability patterns."""
    return ConfigLoader.get_manifest_patterns()


def get_dangerous_permissions() -> List[Dict[str, Any]]:
    """Get list of dangerous permissions to check."""
    return ConfigLoader.get_dangerous_permissions()


def get_crypto_patterns() -> List[Dict[str, Any]]:
    """Get cryptographic vulnerability patterns."""
    return ConfigLoader.get_crypto_patterns()


def get_secret_patterns() -> List[Dict[str, Any]]:
    """Get secret detection patterns."""
    return ConfigLoader.get_secret_patterns()


def get_network_patterns() -> List[Dict[str, Any]]:
    """Get network vulnerability patterns."""
    return ConfigLoader.get_network_patterns()


def get_general_recommendations() -> List[Dict[str, Any]]:
    """Get general security recommendations."""
    return ConfigLoader.get_general_recommendations()


def reload_config():
    """Force reload of configuration from disk."""
    return ConfigLoader.reload_config()
