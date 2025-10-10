# Project Summary - Lots of Mary Desktop Application

## Overview

**Project Name:** Lots of Mary  
**Type:** Desktop Application (Tauri-based)  
**Version:** 1.0.0  
**Platform:** Cross-platform (Windows, macOS, Linux)  
**Framework:** Tauri 2.0 + HTML/CSS/JavaScript  
**License:** MIT  

## Description

Lots of Mary is a desktop application that brings the ancient Gospel of the Lots of Mary to modern users. This Christian divination oracle provides spiritual guidance through 37 traditional sacred responses, displayed on an authentic parchment background.

## Key Features

### Core Functionality
- **Question Input System**: Users can enter spiritual questions
- **37 Sacred Responses**: Random selection from traditional Gospel texts
- **Parchment Display**: Authentic visual presentation with background image
- **Dark Mode**: Toggle between light and dark themes with localStorage persistence
- **Help System**: Built-in help documentation accessible via "?" button
- **Reset Function**: Clear and start new consultation

### Technical Features
- **Tauri 2.0 Backend**: Rust-based native application wrapper
- **Web Technologies**: HTML5, CSS3, JavaScript (ES6+)
- **Responsive Design**: Adapts to different window sizes
- **Local Storage**: Remembers user preferences (dark mode)
- **Cross-Platform**: Single codebase for all platforms

## Technology Stack

### Frontend
- **HTML5**: Semantic markup
- **CSS3**: Modern styling with flexbox, transitions
- **JavaScript**: Vanilla JS (no frameworks)
- **Assets**: PNG images, ICO favicon

### Backend
- **Rust**: System-level programming language
- **Tauri 2.0**: Desktop application framework
- **Cargo**: Rust package manager

### Build Tools
- **npm**: Node package manager
- **Tauri CLI**: Build and development tools
- **Rust toolchain**: Compiler and build system

## Project Structure

```
lots-of-mary/
├── src/                          # Frontend source files
│   ├── index.html               # Main application interface
│   ├── help.html                # Help documentation page
│   ├── parchment.png            # Background image for answers
│   └── favicon.ico              # Application icon
│
├── src-tauri/                   # Tauri backend
│   ├── src/
│   │   ├── main.rs             # Rust entry point
│   │   └── lib.rs              # Library code
│   ├── icons/                   # Application icons (multiple formats)
│   ├── capabilities/
│   │   └── default.json        # Permission configuration
│   ├── Cargo.toml              # Rust dependencies
│   ├── tauri.conf.json         # Tauri configuration
│   ├── build.rs                # Build script
│   └── .gitignore              # Rust-specific ignores
│
├── package.json                 # Node.js configuration
├── .gitignore                   # Git ignore rules
├── quick-dev.bat               # Quick development script
├── quick-build.bat             # Quick build script
├── README.md                    # Project overview
├── BUILD_INSTRUCTIONS.md        # Detailed build guide
├── START_HERE.md               # Getting started guide
└── PROJECT_SUMMARY.md          # This file
```

## Application Flow

1. **Startup**: Application window opens with question input form
2. **User Input**: User types a spiritual question
3. **Submission**: User clicks "Answer" button
4. **Processing**: JavaScript randomly selects one of 37 responses
5. **Display**: Answer shown on parchment background with question
6. **Reset**: User can reset to ask another question

## Configuration

### Window Settings
- **Default Size**: 1000x800 pixels
- **Minimum Size**: 800x600 pixels
- **Resizable**: Yes
- **Centered**: Yes on launch

### Build Targets
- **Windows**: MSI and NSIS installers
- **macOS**: DMG and APP bundle
- **Linux**: DEB and RPM packages

## Development Workflow

### Development Mode
```bash
npm run dev
```
- Hot-reload enabled
- Opens application window
- Console logging available

### Production Build
```bash
npm run build
```
- Optimized compilation
- Creates installers
- Strips debug symbols

## Dependencies

### Node.js Dependencies
- `@tauri-apps/cli`: ^2.0.0 (dev dependency)

### Rust Dependencies
- `tauri`: 2.0 (with protocol-asset feature)
- `tauri-plugin-shell`: 2.0
- `serde`: 1.0 (with derive feature)
- `serde_json`: 1.0
- `tauri-build`: 2.0 (build dependency)

## Features in Detail

### Dark Mode
- Toggle switch in top-right corner
- Persists across sessions using localStorage
- Smooth transitions between themes
- Affects all UI elements

### Parchment Display
- Background image: 600x250px container
- Responsive sizing
- Centered text overlay
- Maintains aspect ratio

### Sacred Responses
- 37 unique responses from Gospel of the Lots of Mary
- Random selection algorithm
- Displayed with response number (#1-#37)
- Formatted for readability

## Build Output

### Executables
- Windows: `lots-of-mary.exe`
- macOS: `lots-of-mary.app`
- Linux: `lots-of-mary`

### Installers
- Windows: MSI and NSIS formats
- macOS: DMG disk image
- Linux: DEB and RPM packages

## Performance Characteristics

- **Startup Time**: < 2 seconds
- **Memory Usage**: ~50-100 MB
- **Disk Space**: ~10-20 MB installed
- **CPU Usage**: Minimal (idle < 1%)

## Security Features

- **CSP**: Content Security Policy configured
- **Asset Protocol**: Enabled with full scope
- **Shell Plugin**: Controlled access
- **No Network**: Fully offline application

## Future Enhancements (Potential)

- Multiple language support
- Custom response collections
- History of consultations
- Export/print functionality
- Audio readings of responses
- Additional visual themes

## Maintenance

### Regular Tasks
- Update dependencies (npm and Cargo)
- Test on all platforms
- Update documentation
- Review security advisories

### Version Updates
- Update version in package.json
- Update version in Cargo.toml
- Update version in tauri.conf.json
- Tag release in version control

## Support & Resources

- **Documentation**: See README.md, BUILD_INSTRUCTIONS.md, START_HERE.md
- **Website**: https://radius.center
- **Original Web Version**: https://radius.center/lots-of-mary/

## Credits

- **Developer**: Radius.Center
- **Framework**: Tauri Team
- **Source Text**: Gospel of the Lots of Mary (ancient text)
- **License**: MIT License

## Notes

- This is a spiritual/devotional tool
- Based on ancient Christian divination practices
- For entertainment and spiritual reflection
- Not a substitute for professional guidance

---

**Last Updated**: 2025  
**Status**: Production Ready  
**Maintained By**: Radius.Center
