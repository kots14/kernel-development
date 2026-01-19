#!/usr/bin/env bash
set -euo pipefail

# Minimal installer for Ubuntu/Debian systems

command -v apt-get >/dev/null 2>&1 || { echo "Error: apt-get not found. This script is for Debian/Ubuntu." >&2; exit 1; }

SUDO=""
if [ "$EUID" -ne 0 ]; then
    SUDO="sudo"
fi

PACKAGES=(build-essential nasm gdb qemu-system-x86)

echo "Updating package lists..."
$SUDO apt-get update -y

echo "Installing: ${PACKAGES[*]}"
$SUDO apt-get install -y --no-install-recommends "${PACKAGES[@]}"

echo "Installation complete."