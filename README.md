# ✨ JSONView

> Transform raw JSON into beautifully formatted, interactive documents. The browser extension that makes JSON readable.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./license.txt)
[![TypeScript](https://img.shields.io/badge/TypeScript-4.5+-blue.svg)](https://www.typescriptlang.org/)

Tired of staring at raw JSON walls of text? **JSONView** automatically beautifies JSON documents in your browser with syntax highlighting, collapsible sections, and smart formatting. Install once, view JSON forever—no more downloads, no more confusion.

When you encounter a JSON file (served with `application/json` content type), JSONView instantly formats and highlights it, making it easy to explore deeply nested structures. Perfect for API developers, DevOps engineers, and anyone working with JSON data.

## 📥 Install

Get JSONView for your browser:

| Browser | Link |
|---------|------|
| **Edge** | [Install from Edge Add-ons](https://microsoftedge.microsoft.com/addons/detail/jsonview/biaiohdllmhjchjdhgamfmdjfhpbaohf) |

> **Note on Safari**: Safari charges $100/year to publish extensions to the App Store, making a free version unfeasible.

## ✨ Features

- **🎯 Automatic Detection** — No setup required. JSON files are detected and formatted automatically
- **🌈 Syntax Highlighting** — Color-coded syntax makes it easy to spot values, keys, and data types at a glance
- **📁 Collapse & Expand** — Fold/unfold nested objects and arrays to focus on what matters
- **🛡️ Error Tolerant** — Even malformed JSON displays readable raw text so you can debug issues
- **⚡ Lightning Fast** — Minimal overhead means instant formatting—no waiting, no bloat
- **⌨️ Keyboard Navigation** — Use arrow keys to navigate and control folding (see [Keyboard Shortcuts](#️-keyboard-shortcuts))
- **🌍 Multilingual** — Available in 15+ languages to support developers worldwide
- **📦 Lightweight** — Small file size and efficient code means no performance impact on your browser

[Try it on a live example →](http://jsonview.com/example.json)

## ⌨️ Keyboard Shortcuts

| Key | Action |
|-----|--------|
| <kbd>←</kbd> Left Arrow | Collapse JSON on key up |
| <kbd>→</kbd> Right Arrow | Expand JSON on key up |

## ❓ Troubleshooting

### JSONView isn't formatting my JSON file

**Why this happens:** Your server isn't sending the `Content-Type: application/json` HTTP header.

**How to fix it:**
- Ensure your web server or API is configured to send `Content-Type: application/json`
- For local files, you may need a local server (try `python -m http.server` or `pnpm tests`)
- Check your server's MIME type configuration

### Firefox shows the built-in JSON viewer instead

**Why this happens:** Firefox's built-in JSON viewer (`devtools.jsonview`) takes precedence over extensions.

**How to fix it:**
1. Type `about:config` in the address bar
2. Search for `devtools.jsonview.enabled`
3. Toggle it to `false`
4. Reload your JSON pages

## 🚀 Development

### Prerequisites

- [Node.js](https://nodejs.org/en/) 16 or higher
- [pnpm](https://pnpm.io/) 7 or higher (or use `corepack enable` to auto-manage)

### Quick Start

```bash
# Clone the repository
git clone https://github.com/chintan9/jsonview.git
cd jsonview

# Enable pnpm with corepack (if not already installed)
corepack enable

# Install dependencies
pnpm install

# Build the extension in watch mode
pnpm start

# In another terminal, run the test server
pnpm tests
```

### Loading the Extension

After running `pnpm start`, you'll have built extensions in `build-chrome/` and `build-firefox/`.

**Firefox Debugging:**
1. Navigate to `about:debugging#addons`
2. Check the "Enable add-on debugging" checkbox
3. Click "Load Temporary Add-on"
4. Select the `build-firefox/manifest.json` file
5. The extension will reload automatically when you save changes

**Chrome, Edge, and Chromium-based Browsers:**
1. Open `chrome://extensions/` (or `edge://extensions/`)
2. Enable "Developer mode" (toggle in top-right corner)
3. Click "Load Unpacked"
4. Select the `build-chrome` folder
5. The extension will reload automatically when you save changes

### Project Structure

```
jsonview/
├── src/                    # TypeScript source files
│   ├── viewer.ts          # Main UI and display logic
│   ├── background-*.ts    # Browser-specific background scripts
│   ├── content.ts         # Content script for JSON detection
│   ├── jsonformatter.ts   # JSON parsing and formatting engine
│   └── _locales/          # Translation files
├── tests/                 # JSON test files for manual testing
├── build-chrome/          # Compiled Chrome extension (auto-generated)
├── build-firefox/         # Compiled Firefox extension (auto-generated)
└── tsconfig.json          # TypeScript configuration
```

### Tech Stack

- **[TypeScript](https://www.typescriptlang.org/)** — Type-safe JavaScript prevents bugs and makes refactoring easier
- **[VS Code](https://code.visualstudio.com/)** — Perfect for extension development with built-in debugging and auto-suggestions
- **[pnpm](https://pnpm.io/)** — Fast, disk-efficient package manager that's faster than npm or yarn
- **[Rolldown](https://rolldown.rs/)** — Modern JavaScript bundler for optimized builds

## 🌍 Contributing

We welcome contributions! JSONView's philosophy is **simplicity first**—we keep the extension lightweight and focused. Before you start:

### Before You Code

1. **Check [Contributing Guidelines](CONTRIBUTING.md)** — This explains our design philosophy
2. **[Open an issue](https://github.com/chintan9/jsonview/issues) first** — Discuss your idea to ensure it aligns with the project vision
3. Don't worry if we decline feature requests—we just want to keep this extension lean and focused

### Ways to Contribute

- **Code** — Bug fixes and simple enhancements are always welcome
- **Translations** — Help translate JSONView to more languages:
  - Copy files from `src/_locales/en/` to create a new language folder
  - Translate the strings and submit a pull request
  - No coding experience needed—just GitHub!
- **Issues & Testing** — Report bugs, suggest improvements, or help test new features
- **Documentation** — Help improve this README or other docs

## 📋 License

JSONView is open source under the **MIT License**. See [license.txt](./license.txt) for details.

## 🙏 Credits & Attribution

This project is a fork of the original **[JSONView](https://github.com/bhollis/jsonview)** by **[@bhollis](https://github.com/bhollis)**.

The original JSONView extension laid the foundation for this project and continues to serve thousands of developers. We're grateful for the excellent work and open source spirit that made this possible. If you're looking for the original project, visit [github.com/bhollis/jsonview](https://github.com/bhollis/jsonview).

This fork maintains the core mission: keeping JSON viewing simple, fast, and accessible to everyone.

## 📞 Support & Feedback

Encountered a bug? Have an idea for improvement?

➜ **[Open an issue on GitHub](https://github.com/chintan9/jsonview/issues)** — Be as detailed as possible, including your browser version and the problematic JSON if applicable.

**Pull requests are especially welcome!** If you have a fix or improvement ready, we'd love to review it.
