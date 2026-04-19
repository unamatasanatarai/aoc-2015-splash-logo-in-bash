# 🎄 Advent of Code 2015 Splash Logo — Bash Edition

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Bash](https://img.shields.io/badge/Bash-%3E%3D4.0-blue)](https://www.gnu.org/software/bash/)
[![Platform](https://img.shields.io/badge/Platform-Unix%2Flinux%20%7C%20macOS-lightgrey)]()
[![Terminal](https://img.shields.io/badge/Terminal-Truecolor%20Required-green)]()

A terminal-based tribute to the iconic animated Christmas tree from Advent of Code 2015.

![Advent of Code 2015 Christmas Tree Splash Logo](aoc-christmass-tree-202604191451.gif)

---

## ✨ Overview

This script renders a stylized ASCII Christmas tree and animates a glowing band of light moving across its branches—similar to the original Advent of Code homepage.

It’s lightweight, dependency-free, and runs in most modern terminals that support 24-bit color.

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/unamatasanatarai/aoc-2015-splash-logo-in-bash.git
cd aoc-2015-splash-logo-in-bash
````

### 2. Make the script executable

```bash
chmod +x christmas-tree-aoc-2015.sh
```

### 3. Run the animation

```bash
./christmas-tree-aoc-2015.sh
```

Press `Ctrl + C` to exit.

---

## 🧠 How It Works

* Uses ANSI escape codes to:

  * Clear and redraw the screen
  * Hide/show the cursor
  * Apply truecolor (24-bit RGB) styling
* Simulates animation by:

  * Moving a “highlight window” down the tree
  * Dynamically calculating color gradients per line
* Runs in a loop with controlled frame timing (`sleep`)

---

## 🌈 Features

* **Truecolor Gradient Animation** — smooth lighting effect using 24-bit ANSI colors
* **Zero Dependencies** — pure Bash, no external tools
* **Terminal Control** — safely restores cursor and input state
* **Lightweight & Portable** — works on most Unix-like systems

---

## ⚠️ Requirements

* Bash (≥ 4.0 recommended)
* Terminal with **24-bit color support** (e.g. iTerm2, Windows Terminal, GNOME Terminal)

---

## 🛑 Exit Behavior

The script restores terminal settings on exit using traps, so your shell remains usable.

---

## 📜 License

MIT — see [LICENSE](LICENSE) for details.

---

## 🙌 Acknowledgment

Inspired by Advent of Code by Eric Wastl.
