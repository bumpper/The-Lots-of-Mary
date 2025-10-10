# Build Instructions - Lots of Mary

Complete instructions for building the Lots of Mary desktop application.

## Prerequisites

Before building, ensure you have the following installed:

### Required Software

1. **Node.js** (v16 or higher)
   - Download from: https://nodejs.org/
   - Verify installation: `node --version`

2. **Rust** (latest stable)
   - Download from: https://rustup.rs/
   - Verify installation: `rustc --version`

3. **npm** (comes with Node.js)
   - Verify installation: `npm --version`

### Platform-Specific Requirements

#### Windows
- Microsoft Visual Studio C++ Build Tools
- WebView2 (usually pre-installed on Windows 10/11)

#### macOS
- Xcode Command Line Tools: `xcode-select --install`

#### Linux
- Development packages:
  ```bash
  sudo apt-get update
  sudo apt-get install -y libwebkit2gtk-4.0-dev \
    build-essential \
    curl \
    wget \
    libssl-dev \
    libgtk-3-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev
  ```

## Quick Build Methods

### Method 1: Quick Build Script (Recommended)

Simply double-click `quick-build.bat` (Windows) or run:
```bash
./quick-build.bat
```

This script will:
1. Install all dependencies
2. Build the application
3. Create installers
4. Show you where to find the output files

### Method 2: Manual Build

```bash
# Install dependencies
npm install

# Build for production
npm run build
```

## Build Output Locations

After a successful build, you'll find:

### Executable
- **Windows**: `src-tauri/target/release/lots-of-mary.exe`
- **macOS**: `src-tauri/target/release/lots-of-mary`
- **Linux**: `src-tauri/target/release/lots-of-mary`

### Installers
Located in `src-tauri/target/release/bundle/`:

- **Windows**:
  - `msi/` - MSI installer
  - `nsis/` - NSIS installer

- **macOS**:
  - `dmg/` - DMG disk image
  - `macos/` - .app bundle

- **Linux**:
  - `deb/` - Debian package
  - `rpm/` - RPM package

## Development Build

For development with hot-reload:

```bash
# Quick method
./quick-dev.bat

# Or manually
npm run dev
```

## Platform-Specific Builds

Build for specific platforms:

```bash
# Windows
npm run build:windows

# macOS
npm run build:macos

# Linux
npm run build:linux
```

## Troubleshooting

### Common Issues

1. **"Rust not found"**
   - Install Rust from https://rustup.rs/
   - Restart your terminal after installation

2. **"Node modules not found"**
   - Run `npm install` first

3. **Build fails on Windows**
   - Install Visual Studio C++ Build Tools
   - Ensure WebView2 is installed

4. **Build fails on Linux**
   - Install required development packages (see Prerequisites)

5. **Permission denied errors**
   - On Linux/macOS, you may need to make scripts executable:
     ```bash
     chmod +x quick-build.bat quick-dev.bat
     ```

### Clean Build

If you encounter persistent issues:

```bash
# Clean Rust build artifacts
cd src-tauri
cargo clean
cd ..

# Clean Node modules
rm -rf node_modules
npm install

# Try building again
npm run build
```

## Build Configuration

### Customizing the Build

Edit `src-tauri/tauri.conf.json` to customize:
- Application name and version
- Window size and properties
- Bundle settings
- Icons and resources

### Icons

To use custom icons:
1. Place a 512x512 PNG icon in the project root
2. Run: `npm run tauri icon path/to/icon.png`
3. This will generate all required icon formats

## Distribution

After building:

1. **Windows**: Distribute the MSI or NSIS installer
2. **macOS**: Distribute the DMG file
3. **Linux**: Distribute the DEB or RPM package

Users can also run the standalone executable directly without installation.

## Next Steps

After successful build:
- Test the application thoroughly
- Check the executable runs correctly
- Verify all features work as expected
- Distribute to users

For more information, see:
- README.md - Project overview
- START_HERE.md - Getting started guide
