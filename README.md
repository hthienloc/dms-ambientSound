# Ambient Sound

DMS plugin for playing ambient sounds for focus and relaxation.

<img src="screenshot.png" width="400" alt="Screenshot">

## Features

- Play multiple ambient sounds simultaneously
- Master volume control  
- Grid layout for easy sound selection
- Loop sounds continuously

## Installation

### Option 1: Clone and link

```bash
# Clone the repository
git clone https://github.com/hthienloc/dms-ambientSound.git

# Create symlink in DMS plugins folder
ln -s /path/to/dms-ambientSound ~/.config/DankMaterialShell/plugins/ambientSound
```

### Option 2: Add sounds manually

This plugin requires sound files (ogg format) in the `sounds/` folder. Download from [Blanket](https://github.com/rafaelmardojai/blanket) or use your own:

```bash
# Copy your sound files to sounds/
cp /path/to/your-sounds/*.ogg sounds/
```

Required sound files:
- `rain.ogg`
- `fireplace.ogg`
- `waves.ogg`
- `wind.ogg`
- `storm.ogg`
- `birds.ogg`
- `city.ogg`
- `coffee-shop.ogg`
- `stream.ogg`
- `summer-night.ogg`

## Enable in DMS

1. Open DMS Settings → Plugins
2. Click "Scan for Plugins" or reload
3. Enable "ambientSound" plugin
4. Add to DankBar widget list

## License

GPL-3.0 - The sound files are sourced from [Blanket](https://github.com/rafaelmardojai/blanket) under GPL-3.0 license.