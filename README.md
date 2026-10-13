# GST Pro ERP - Cloud Web Hosting & GitHub Real-Time Database Storage

This folder contains the complete, production-ready web application configured to be hosted on **GitHub Pages**, **Custom Domains**, or any web hosting provider, using **GitHub itself as the real-time cloud database storage**.

---

## 🚀 Features of GitHub Cloud Database Mode

1. **Zero Server Costs**: Runs entirely on GitHub Pages / Static Hosting and GitHub API without requiring VPS, server maintenance, or database hosting fees.
2. **Real-Time Database Storage**: Every sale invoice, purchase bill, payment, customer, item, and expense is saved and committed directly into `data/companies/{companyId}.json` in your GitHub repository in real time.
3. **Automated Daily Backups**: Automated date-stamped folder backups are created in `Backups/YYYY-MM-DD/` on your repository.
4. **Multi-Device Synchronization**: Access your ERP from mobile phones, tablets, laptops, and desktop computers from anywhere in the world.
5. **Offline & Hybrid Fallback**: If the internet disconnects, changes are saved locally in browser storage and synchronized once reconnected.

---

## 📁 Repository Directory Structure

```text
GitHub/
├── index.html              # Main web application entry point
├── 404.html                # Single-page application router fallback for GitHub Pages
├── .nojekyll               # Disables Jekyll processing on GitHub Pages
├── CNAME                   # (Optional) Put your custom domain name here (e.g. erp.yourdomain.com)
├── assets/                 # Bundled CSS, JavaScript, and asset files
│   ├── index-*.js
│   ├── index-*.css
│   └── ...
├── data/                   # Real-time Cloud Database folder
│   ├── system.json         # Users, roles, security, and global settings
│   └── companies/          # Company databases
│       ├── index.json      # List of registered companies
│       ├── comp_narmadha_01.json
│       ├── comp_retail_02.json
│       └── comp_1791394961088.json
└── Backups/                # Automated daily folder backups
    └── .gitkeep
```

---

## 🛠️ Step 1: Upload This Folder to GitHub

Open a terminal or command prompt inside this `GitHub` folder:

```bash
cd d:\ERP\ERP\GitHub

# 1. Initialize Git repository
git init

# 2. Add all files
git add .

# 3. Commit the initial release
git commit -m "Initial release of GST Pro ERP with Cloud DB"

# 4. Set the default branch to main
git branch -M main

# 5. Link to your GitHub repository (replace with your repository URL)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPOSITORY.git

# 6. Push files to GitHub
git push -u origin main
```

---

## 🌐 Step 2: Enable GitHub Pages

1. Open your repository on **GitHub.com**.
2. Go to **Settings** > **Pages** (in the left sidebar).
3. Under **Build and deployment**:
   - **Source**: Select `Deploy from a branch`.
   - **Branch**: Select `main` and folder `/ (root)`.
   - Click **Save**.
4. In 1–2 minutes, your website will be live at:
   `https://YOUR_USERNAME.github.io/YOUR_REPOSITORY/`

---

## 🏷️ Step 3: (Optional) Setup Custom Domain

To run the ERP software on your own domain (e.g. `erp.yourdomain.com`):

1. In the `GitHub` folder, edit the `CNAME` file and add your domain name:
   ```text
   erp.yourdomain.com
   ```
2. Commit and push the `CNAME` file to GitHub.
3. In your DNS provider (Cloudflare, GoDaddy, Namecheap, etc.), add a CNAME record:
   - **Type**: `CNAME`
   - **Name / Host**: `erp`
   - **Target / Value**: `YOUR_USERNAME.github.io`
4. In GitHub Repository > **Settings** > **Pages**, ensure your custom domain is listed and check **Enforce HTTPS**.

---

## 🔑 Step 4: Configure GitHub as Real-Time Database Storage

To allow the ERP software to read and write live data to your repository:

### 1. Generate a GitHub Personal Access Token (PAT)
1. Go to [https://github.com/settings/tokens](https://github.com/settings/tokens).
2. Click **Generate new token (classic)**.
3. Give it a note: `GST ERP Live Database Sync`.
4. Set expiration (e.g. `90 days`, `1 year`, or `No expiration`).
5. Select the **`repo`** checkbox (Full control of private repositories).
6. Click **Generate token** and copy your token (starts with `ghp_...`).

### 2. Connect the Token in GST Pro ERP
1. Open your hosted ERP website on any phone, tablet, or PC.
2. Log in with:
   - **Username**: `admin`
   - **Password**: `admin`
3. In the sidebar menu, click **Sync, Share & Backup** > **Google Drive & Local Backup** (or go to **Settings**).
4. Enter:
   - **Repository Owner**: `YOUR_USERNAME`
   - **Repository Name**: `YOUR_REPOSITORY`
   - **Branch**: `main`
   - **Personal Access Token**: Paste your token (`ghp_...`)
5. Click **Save & Test Connection**.
6. The status will turn to **Connected & Real-Time Sync Active**!

---

## 📱 Multi-Device Access (Mobile & Tablet)

Once configured, you can share the website URL or scan the QR code located in:
**Sync, Share & Backup** > **Multi-Device Sync**

Any device opening the link will immediately sync with the exact same company data, enabling simultaneous multi-counter billing and remote management from anywhere.
