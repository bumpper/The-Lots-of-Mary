# Lots of Mary - Desktop Application

A desktop application for the Gospel of the Lots of Mary, an ancient Christian divination oracle. Ask questions and receive sacred guidance from 37 traditional responses for spiritual direction.

## Features

- **Question Input**: Enter your spiritual questions
- **37 Sacred Responses**: Receive guidance from the ancient Gospel of the Lots of Mary
- **Parchment Display**: Answers displayed on authentic parchment background
- **Dark Mode**: Toggle between light and dark themes
- **Help Documentation**: Built-in help system
- **Cross-Platform**: Works on Windows, macOS, and Linux

## Quick Start

### Development Mode

Double-click `quick-dev.bat` or run:
```bash
npm run dev
```

### Production Build

Double-click `quick-build.bat` or run:
```bash
npm run build
```

## Requirements

- Node.js (v16 or higher)
- Rust (latest stable version)
- npm or yarn

## Project Structure

```
lots-of-mary/
├── src/                    # Frontend files
│   ├── index.html         # Main application page
│   ├── help.html          # Help documentation
│   ├── parchment.png      # Background image
│   └── favicon.ico        # Application icon
├── src-tauri/             # Tauri backend
│   ├── src/               # Rust source files
│   ├── icons/             # Application icons
│   ├── Cargo.toml         # Rust dependencies
│   └── tauri.conf.json    # Tauri configuration
├── package.json           # Node.js dependencies
├── quick-dev.bat          # Quick development script
└── quick-build.bat        # Quick build script
```

## Building

The application can be built for multiple platforms:

- **Windows**: MSI and NSIS installers
- **macOS**: DMG and APP bundles
- **Linux**: DEB and RPM packages

## About

The Gospel of the Lots of Mary is an ancient Christian divination text that provides spiritual guidance through 37 sacred responses. This desktop application brings this traditional practice to modern users.

## License

MIT License - Copyright © 2025 Radius.Center

## Website

Visit [radius.center](https://radius.center) for more divination tools and spiritual resources.
