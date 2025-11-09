# Icons Directory

This directory should contain the application icons in various formats:

- `32x32.png` - 32x32 pixel PNG icon
- `128x128.png` - 128x128 pixel PNG icon
- `128x128@2x.png` - 256x256 pixel PNG icon (for Retina displays)
- `icon.icns` - macOS icon file
- `icon.ico` - Windows icon file

## Generating Icons

You can use the Tauri icon generator to create all required icon formats from a single source image:

```bash
npm run tauri icon path/to/your/icon.png
```

The source image should be at least 512x512 pixels and preferably square with a transparent background.

## Temporary Solution

Until custom icons are provided, you can use Tauri's default icons or generate them from the favicon.ico file in the src directory.
