# GST Pro ERP — GitHub Online Database & Cloud Hosting

This directory contains the production software ready to upload and host on **GitHub Pages**, **Custom Domains**, or run directly on any desktop or tablet browser.

## Features
- **100% Client-Side & Standalone**: Operates directly in any modern browser without requiring a server backend.
- **GitHub Real-Time Database**: Reads and writes transaction data (`data/companies/*.json`, `data/system.json`) directly via the GitHub API.
- **Automated Daily Backups**: Synchronizes and saves full daily folder backups under `Backups/`.
- **Offline & Embedded Fallbacks**: Includes embedded fallback data for **Narmadha Trader** so that the software never shows blank pages or crashes.

## How to Host on GitHub Pages
1. Push the contents of this `GitHub` folder to your GitHub repository (e.g. `main` or `gh-pages` branch).
2. Go to your repository on GitHub -> **Settings** -> **Pages**.
3. Under **Branch**, select `main` (root) and click **Save**.
4. Your software will be live at `https://<username>.github.io/<repo>/` or your connected custom domain!

## Data Structure
- `data/system.json`: User credentials, authentication, and sync settings.
- `data/companies/`: Multi-company records (sales, purchases, items, parties, cash & bank).
- `Backups/`: Daily snapshot folders organized by company and date.
