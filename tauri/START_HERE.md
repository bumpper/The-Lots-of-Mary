# START HERE - Lots of Mary Desktop Application

Welcome! This guide will help you get started with the Lots of Mary desktop application project.

## What is Lots of Mary?

Lots of Mary is a desktop application based on the ancient Gospel of the Lots of Mary, a Christian divination text. Users can ask spiritual questions and receive guidance from 37 traditional sacred responses displayed on an authentic parchment background.

## Quick Start (For Developers)

### 1. First Time Setup

**Prerequisites Check:**
- ✅ Node.js installed? Run: `node --version`
- ✅ Rust installed? Run: `rustc --version`
- ✅ npm installed? Run: `npm --version`

If any are missing, see the **Installation** section below.

### 2. Run the Application

**Easiest Method:**
- Double-click `quick-dev.bat`

**Or use command line:**
```bash
npm install
npm run dev
```

The application window will open automatically!

### 3. Build for Distribution

**Easiest Method:**
- Double-click `quick-build.bat`

**Or use command line:**
```bash
npm run build
```

Find your executable in `src-tauri/target/release/`

## Installation (If Prerequisites Missing)

### Install Node.js
1. Visit https://nodejs.org/
2. Download the LTS version
3. Run the installer
4. Verify: `node --version`

### Install Rust
1. Visit https://rustup.rs/
2. Follow the installation instructions
3. Restart your terminal
4. Verify: `rustc --version`

### Platform-Specific Requirements

**Windows:**
- Visual Studio C++ Build Tools (usually installed with Rust)
- WebView2 (pre-installed on Windows 10/11)

**macOS:**
```bash
xcode-select --install
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt-get update
sudo apt-get install -y libwebkit2gtk-4.0-dev build-essential curl wget libssl-dev libgtk-3-dev libayatana-appindicator3-dev librsvg2-dev
```

## Project Structure

```
lots-of-mary/
├── src/                      # Frontend files
│   ├── index.html           # Main application
│   ├── help.html            # Help documentation
│   ├── parchment.png        # Background image
│   └── favicon.ico          # Icon
├── src-tauri/               # Backend (Rust)
│   ├── src/                 # Rust source
│   ├── icons/               # App icons
│   ├── Cargo.toml           # Rust config
│   └── tauri.conf.json      # Tauri config
├── package.json             # Node.js config
├── quick-dev.bat            # Quick dev script
├── quick-build.bat          # Quick build script
└── README.md                # Documentation
```

## Key Features

- **Question Input**: Ask spiritual questions
- **37 Sacred Responses**: Ancient Christian guidance
- **Parchment Display**: Authentic visual presentation
- **Dark Mode**: Light/dark theme toggle
- **Help System**: Built-in documentation
- **Cross-Platform**: Windows, macOS, Linux

## Common Tasks

### Development Mode (with hot-reload)
```bash
npm run dev
```

### Production Build
```bash
npm run build
```

### Clean Build (if issues occur)
```bash
cd src-tauri
cargo clean
cd ..
rm -rf node_modules
npm install
npm run build
```

## Troubleshooting

### "Command not found" errors
- Make sure Node.js and Rust are installed
- Restart your terminal after installation

### Build fails
- Run `npm install` first
- Check that all prerequisites are installed
- See BUILD_INSTRUCTIONS.md for detailed help

### Application won't start
- Check console for error messages
- Ensure all files in `src/` directory are present
- Try a clean build

## Next Steps

1. **For Development:**
   - Read BUILD_INSTRUCTIONS.md for detailed build info
   - Modify files in `src/` for frontend changes
   - Modify files in `src-tauri/` for backend changes

2. **For Distribution:**
   - Build the application
   - Test thoroughly
   - Distribute the installer from `src-tauri/target/release/bundle/`

3. **For Customization:**
   - Edit `src/index.html` for UI changes
   - Edit `src-tauri/tauri.conf.json` for app settings
   - Replace icons in `src-tauri/icons/` for custom branding

## Documentation Files

- **README.md** - Project overview and features
- **BUILD_INSTRUCTIONS.md** - Detailed build guide
- **START_HERE.md** - This file (getting started)

## Support

For issues or questions:
- Check the documentation files
- Review error messages carefully
- Ensure all prerequisites are installed
- Try a clean build

## About

Created by Radius.Center
Website: https://radius.center
License: MIT

---

**Ready to begin?** Run `quick-dev.bat` or `npm run dev` to start developing!
