# Platform Setup Guide for Lots of Mary

This guide provides detailed setup instructions for building the Lots of Mary application on different operating systems.

## Table of Contents

- [Windows Setup](#windows-setup)
- [macOS Setup](#macos-setup)
- [Linux Ubuntu/Debian Setup](#linux-ubuntudebian-setup)
- [Linux Fedora/RHEL Setup](#linux-fedorarhel-setup)
- [Transferring Projects Between Platforms](#transferring-projects-between-platforms)
- [Common Issues and Solutions](#common-issues-and-solutions)

---

## Windows Setup

### Prerequisites

1. **Node.js** (v16 or higher)
   - Download from: https://nodejs.org/
   - Choose the LTS version
   - Verify installation: `node --version`

2. **Rust**
   - Download from: https://rustup.rs/
   - Run the installer and follow prompts
   - Restart your terminal after installation
   - Verify installation: `cargo --version`

3. **Visual Studio Build Tools**
   - Download from: https://visualstudio.microsoft.com/downloads/
   - Install "Build Tools for Visual Studio 2022"
   - Select "Desktop development with C++"
   - This provides the C++ compiler needed by Rust

4. **WebView2** (Usually pre-installed)
   - Pre-installed on Windows 11
   - For Windows 10, download from: https://developer.microsoft.com/microsoft-edge/webview2/

### Installation Steps

```cmd
# 1. Clone or copy the project
cd path\to\lots-of-mary\tauri

# 2. Install Node.js dependencies
npm install

# 3. Test the setup
npm run dev:windows
```

### Building

```cmd
# Quick build (recommended)
quick-build.bat

# Or manual build
npm run build:windows
```

---

## macOS Setup

### Prerequisites

1. **Xcode Command Line Tools**
   ```bash
   xcode-select --install
   ```
   - Follow the prompts to install
   - This provides essential build tools

2. **Homebrew** (Package Manager)
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

3. **Node.js**
   ```bash
   # Using Homebrew
   brew install node
   
   # Verify installation
   node --version
   ```

4. **Rust**
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   
   # Follow the prompts (usually just press Enter)
   # Restart your terminal
   
   # Verify installation
   cargo --version
   ```

### Installation Steps

```bash
# 1. Navigate to project
cd /path/to/lots-of-mary/tauri

# 2. Install Node.js dependencies
npm install

# 3. Make scripts executable
chmod +x quick-dev.sh quick-build.sh

# 4. Test the setup
./quick-dev.sh
```

### Building

```bash
# Quick build (recommended)
./quick-build.sh

# Or manual build
npm run build:mac
```

### Apple Silicon vs Intel

- **Apple Silicon (M1/M2/M3):** Use `npm run build:mac`
- **Intel Macs:** Use `npm run build:mac-intel`
- The quick-build.sh script automatically detects your architecture

---

## Linux Ubuntu/Debian Setup

### Prerequisites

1. **System Dependencies**
   ```bash
   sudo apt update
   sudo apt install -y \
     libwebkit2gtk-4.1-dev \
     build-essential \
     curl \
     wget \
     file \
     libssl-dev \
     libayatana-appindicator3-dev \
     librsvg2-dev
   ```

2. **Node.js**
   ```bash
   # Using NodeSource repository (recommended)
   curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
   sudo apt install -y nodejs
   
   # Verify installation
   node --version
   npm --version
   ```

3. **Rust**
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   
   # Follow the prompts
   # Restart your terminal or run:
   source $HOME/.cargo/env
   
   # Verify installation
   cargo --version
   ```

### Installation Steps

```bash
# 1. Navigate to project
cd /path/to/lots-of-mary/tauri

# 2. Install Node.js dependencies
npm install

# 3. Make scripts executable
chmod +x quick-dev.sh quick-build.sh

# 4. Test the setup
./quick-dev.sh
```

### Building

```bash
# Quick build (recommended)
./quick-build.sh

# Or manual build
npm run build:linux-deb
```

---

## Linux Fedora/RHEL Setup

### Prerequisites

1. **System Dependencies**
   ```bash
   sudo dnf install -y \
     webkit2gtk4.1-devel \
     openssl-devel \
     curl \
     wget \
     file \
     libappindicator-gtk3-devel \
     librsvg2-devel \
     rpm-build
   ```

2. **Node.js**
   ```bash
   # Using NodeSource repository
   curl -fsSL https://rpm.nodesource.com/setup_lts.x | sudo bash -
   sudo dnf install -y nodejs
   
   # Verify installation
   node --version
   npm --version
   ```

3. **Rust**
   ```bash
   curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
   
   # Follow the prompts
   # Restart your terminal or run:
   source $HOME/.cargo/env
   
   # Verify installation
   cargo --version
   ```

### Installation Steps

```bash
# 1. Navigate to project
cd /path/to/lots-of-mary/tauri

# 2. Install Node.js dependencies
npm install

# 3. Make scripts executable
chmod +x quick-dev.sh quick-build.sh

# 4. Test the setup
./quick-dev.sh
```

### Building

```bash
# Quick build (recommended)
./quick-build.sh

# Or manual build
npm run build:fedora
```

---

## Transferring Projects Between Platforms

### What to Transfer

**Include:**
- All source files (`src/`, `src-tauri/`)
- Configuration files (`package.json`, `tauri.conf.json`, etc.)
- Scripts (`quick-*.sh`, `quick-*.bat`)
- Documentation files

**Exclude (will be regenerated):**
- `node_modules/` directory
- `src-tauri/target/` directory
- `.git/` directory (if using Git, clone instead)

### Transfer Methods

#### Method 1: USB Drive

```bash
# On source machine (exclude build artifacts)
# Windows
xcopy /E /I /EXCLUDE:exclude.txt lots-of-mary E:\lots-of-mary

# macOS/Linux
rsync -av --exclude='node_modules' --exclude='target' \
  lots-of-mary/ /Volumes/USB/lots-of-mary/
```

#### Method 2: Git Repository

```bash
# On source machine
git init
git add .
git commit -m "Initial commit"
git remote add origin <your-repo-url>
git push -u origin main

# On target machine
git clone <your-repo-url>
cd lots-of-mary/tauri
npm install
```

#### Method 3: Network Transfer

```bash
# Using scp (Linux/macOS)
scp -r lots-of-mary/ user@target-machine:/path/to/destination/

# Using rsync (Linux/macOS)
rsync -avz --exclude='node_modules' --exclude='target' \
  lots-of-mary/ user@target-machine:/path/to/destination/
```

### After Transfer

On the new platform:

```bash
# 1. Navigate to project
cd lots-of-mary/tauri

# 2. Install dependencies
npm install

# 3. Make scripts executable (Unix only)
chmod +x quick-dev.sh quick-build.sh

# 4. Test
npm run dev
```

---

## Common Issues and Solutions

### Issue: "cargo not found"

**Solution:**
```bash
# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Restart terminal or run:
source $HOME/.cargo/env  # Linux/macOS
```

### Issue: "node not found"

**Solution:**
- Download and install Node.js from https://nodejs.org/
- Restart your terminal after installation

### Issue: Build fails with "missing dependencies" (Linux)

**Ubuntu/Debian:**
```bash
sudo apt install libwebkit2gtk-4.1-dev build-essential
```

**Fedora:**
```bash
sudo dnf install webkit2gtk4.1-devel gcc
```

### Issue: "Permission denied" on shell scripts

**Solution:**
```bash
chmod +x quick-dev.sh quick-build.sh
```

### Issue: WebView2 not found (Windows)

**Solution:**
- Download WebView2 Runtime from: https://developer.microsoft.com/microsoft-edge/webview2/
- Install and restart

### Issue: Build is extremely slow

**This is normal for first builds:**
- First build: 10-30 minutes (Rust compiles everything)
- Subsequent builds: 1-5 minutes (uses cache)

**Tips:**
- Don't delete the `target/` directory
- Use `npm run dev` for development (faster)
- Only use `npm run build` for releases

### Issue: "EACCES" permission errors (npm)

**Solution (Linux/macOS):**
```bash
# Fix npm permissions
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

### Issue: Rust toolchain outdated

**Solution:**
```bash
rustup update
```

---

## Platform-Specific Notes

### Windows

- Use PowerShell or Command Prompt (not Git Bash for Rust)
- Visual Studio Build Tools are required (not full Visual Studio)
- WebView2 is pre-installed on Windows 11

### macOS

- Xcode Command Line Tools are required (not full Xcode)
- Code signing is required for distribution
- Apple Silicon Macs use different architecture than Intel

### Linux

- Different distributions use different package managers
- DEB packages work on Debian-based systems (Ubuntu, Mint, etc.)
- RPM packages work on Red Hat-based systems (Fedora, RHEL, CentOS)
- AppImage works on most distributions without installation

---

## Verification Checklist

After setup, verify everything works:

- [ ] `node --version` shows v16 or higher
- [ ] `npm --version` shows a version number
- [ ] `cargo --version` shows a version number
- [ ] `npm install` completes without errors
- [ ] `npm run dev` opens the application
- [ ] `npm run build` completes successfully

---

## Getting Help

If you encounter issues:

1. Check this guide's [Common Issues](#common-issues-and-solutions) section
2. Review [BUILD_INSTRUCTIONS_CROSS_PLATFORM.md](BUILD_INSTRUCTIONS_CROSS_PLATFORM.md)
3. Check the [Tauri Documentation](https://tauri.app/)
4. Search for your error message online

---

**Ready to build?** See [BUILD_INSTRUCTIONS_CROSS_PLATFORM.md](BUILD_INSTRUCTIONS_CROSS_PLATFORM.md) for detailed build instructions.
