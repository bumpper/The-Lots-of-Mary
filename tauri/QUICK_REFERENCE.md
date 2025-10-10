# Quick Reference - Lots of Mary Cross-Platform Build

Quick command reference for building Lots of Mary on different platforms.

## Prerequisites Summary

| Platform | Requirements |
|----------|-------------|
| **All** | Node.js 16+, Rust (latest) |
| **Windows** | Visual Studio Build Tools, WebView2 |
| **macOS** | Xcode Command Line Tools |
| **Linux** | webkit2gtk, build-essential |
| **Fedora** | webkit2gtk4.1-devel, rpm-build |

---

## Quick Start Commands

### Windows

```cmd
# Development
quick-dev.bat
# or
npm run dev:windows

# Build
quick-build.bat
# or
npm run build:windows
```

### macOS

```bash
# First time: make executable
chmod +x quick-dev.sh quick-build.sh

# Development
./quick-dev.sh
# or
npm run dev:mac

# Build
./quick-build.sh
# or
npm run build:mac
```

### Linux (Ubuntu/Debian)

```bash
# First time: make executable
chmod +x quick-dev.sh quick-build.sh

# Development
./quick-dev.sh
# or
npm run dev:linux

# Build
./quick-build.sh
# or
npm run build:linux-deb
```

### Linux (Fedora/RHEL)

```bash
# First time: make executable
chmod +x quick-dev.sh quick-build.sh

# Development
./quick-dev.sh
# or
npm run dev:linux

# Build
./quick-build.sh
# or
npm run build:fedora
```

---

## NPM Scripts Reference

### Development Scripts

```bash
npm run dev              # Generic dev mode
npm run dev:windows      # Windows dev mode
npm run dev:mac          # macOS dev mode
npm run dev:linux        # Linux dev mode
```

### Build Scripts

```bash
npm run build            # Generic build (all targets)
npm run build:windows    # Windows (MSI + NSIS)
npm run build:mac        # macOS (DMG + APP)
npm run build:mac-intel  # macOS Intel (DMG + APP)
npm run build:linux      # Linux (DEB + AppImage)
npm run build:linux-deb  # Linux DEB + AppImage
npm run build:linux-rpm  # Linux RPM only
npm run build:fedora     # Fedora (RPM + AppImage)
npm run build:macos      # Alias for build:mac
```

### Utility Scripts

```bash
npm run platform:info    # Show platform information
npm run clean            # Clean Rust build artifacts
npm run clean:all        # Clean everything (node_modules + target)
```

---

## Installation Commands

### Windows

```cmd
# Install Node.js from: https://nodejs.org/
# Install Rust from: https://rustup.rs/
# Install Visual Studio Build Tools

# Then:
npm install
```

### macOS

```bash
# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Node.js
brew install node

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Then:
npm install
```

### Ubuntu/Debian

```bash
# Install system dependencies
sudo apt update
sudo apt install -y libwebkit2gtk-4.1-dev build-essential curl wget file libssl-dev libayatana-appindicator3-dev librsvg2-dev

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Then:
npm install
```

### Fedora/RHEL

```bash
# Install system dependencies
sudo dnf install -y webkit2gtk4.1-devel openssl-devel curl wget file libappindicator-gtk3-devel librsvg2-devel rpm-build

# Install Node.js
curl -fsSL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo dnf install -y nodejs

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Then:
npm install
```

---

## Output Locations

### Windows
```
src-tauri\target\release\bundle\
├── msi\lots-of-mary_1.0.0_x64_en-US.msi
└── nsis\lots-of-mary_1.0.0_x64-setup.exe
```

### macOS
```
src-tauri/target/release/bundle/
├── dmg/lots-of-mary_1.0.0_aarch64.dmg
└── macos/Lots-of-Mary.app
```

### Linux (DEB)
```
src-tauri/target/release/bundle/
├── deb/lots-of-mary_1.0.0_amd64.deb
└── appimage/lots-of-mary_1.0.0_amd64.AppImage
```

### Linux (RPM)
```
src-tauri/target/release/bundle/
├── rpm/lots-of-mary-1.0.0-1.x86_64.rpm
└── appimage/lots-of-mary_1.0.0_amd64.AppImage
```

---

## Common Troubleshooting

### "cargo not found"
```bash
# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Restart terminal
```

### "node not found"
```bash
# Download from: https://nodejs.org/
# Or use package manager (brew, apt, dnf)
```

### "Permission denied" (Unix)
```bash
chmod +x quick-dev.sh quick-build.sh
```

### Missing dependencies (Linux)
```bash
# Ubuntu/Debian
sudo apt install libwebkit2gtk-4.1-dev build-essential

# Fedora
sudo dnf install webkit2gtk4.1-devel gcc
```

### Build is slow
- First build: 10-30 minutes (normal)
- Subsequent builds: 1-5 minutes
- Don't delete `target/` directory

---

## File Transfer Between Platforms

### What to Copy
✅ Copy:
- `src/` directory
- `src-tauri/` directory
- `scripts/` directory
- `package.json`
- `quick-*.sh` and `quick-*.bat`
- Documentation files

❌ Don't Copy:
- `node_modules/` (regenerate with `npm install`)
- `src-tauri/target/` (regenerate with build)

### After Transfer
```bash
cd lots-of-mary/tauri
npm install
chmod +x quick-dev.sh quick-build.sh  # Unix only
```

---

## Platform Detection

```bash
# Check current platform configuration
npm run platform:info
```

Output shows:
- Platform name
- Architecture
- OS release
- Build targets
- Output directory

---

## Version Information

```bash
# Check versions
node --version    # Should be v16+
npm --version
cargo --version
rustc --version
```

---

## Clean Build

```bash
# Clean Rust artifacts only
npm run clean

# Clean everything (including node_modules)
npm run clean:all

# Then reinstall
npm install
```

---

## Documentation Files

- **[BUILD_INSTRUCTIONS_CROSS_PLATFORM.md](BUILD_INSTRUCTIONS_CROSS_PLATFORM.md)** - Complete build guide
- **[PLATFORM_SETUP.md](PLATFORM_SETUP.md)** - Platform-specific setup
- **[CROSS_PLATFORM_SUMMARY.md](CROSS_PLATFORM_SUMMARY.md)** - Implementation overview
- **[QUICK_REFERENCE.md](QUICK_REFERENCE.md)** - This file

---

## Support Resources

- **Tauri Documentation:** https://tauri.app/
- **Rust Documentation:** https://doc.rust-lang.org/
- **Node.js Documentation:** https://nodejs.org/docs/

---

**Quick Tip:** Use the quick-start scripts (`quick-dev.bat` or `quick-dev.sh`) for the fastest way to get started!
