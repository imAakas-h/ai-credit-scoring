# 🚀 Complete GitHub Upload Guide

## Table of Contents
1. [Quick Start (Automated)](#quick-start-automated)
2. [Manual Setup (Step-by-Step)](#manual-setup-step-by-step)
3. [GitHub Desktop (GUI Method)](#github-desktop-gui-method)
4. [Verification](#verification)
5. [Troubleshooting](#troubleshooting)

---

## Quick Start (Automated)

### For Windows Users:
1. Open Command Prompt or PowerShell in the project folder
2. Run: `push_to_github.bat`
3. Follow the prompts

### For Mac/Linux Users:
1. Open Terminal in the project folder
2. Run: `./push_to_github.sh`
3. Follow the prompts

---

## Manual Setup (Step-by-Step)

### Prerequisites
- Git installed on your computer
  - **Windows**: Download from https://git-scm.com/download/win
  - **Mac**: Install via `brew install git` or download from https://git-scm.com/download/mac
  - **Linux**: `sudo apt-get install git` (Ubuntu/Debian) or `sudo yum install git` (CentOS/RHEL)
- GitHub account (sign up at https://github.com)

### Step 1: Create Repository on GitHub

1. **Go to GitHub** and log in
2. **Click the "+" icon** in the top right corner
3. **Select "New repository"**
4. **Fill in the details:**
   ```
   Repository name: ai-credit-scoring
   Description: AI-Powered Alternate Credit Scoring System for Financial Inclusion
   Visibility: Public (or Private if you prefer)
   ```
5. **Important**: DO NOT check "Add a README file" (we already have one)
6. **Click "Create repository"**

### Step 2: Configure Git (First Time Only)

Open terminal/command prompt and run:

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### Step 3: Navigate to Project Folder

```bash
# Windows
cd C:\path\to\ai-credit-scoring-project

# Mac/Linux
cd /path/to/ai-credit-scoring-project
```

### Step 4: Initialize and Upload

```bash
# Initialize Git repository
git init

# Add all files
git add .

# Create first commit
git commit -m "Initial commit: AI-Powered Credit Scoring System"

# Add GitHub remote (replace with your details)
git remote add origin https://github.com/YOUR_USERNAME/ai-credit-scoring.git

# Push to GitHub
git branch -M main
git push -u origin main
```

**Example** (replace with your actual username):
```bash
git remote add origin https://github.com/john-doe/ai-credit-scoring.git
git branch -M main
git push -u origin main
```

### Step 5: Enter Credentials

When prompted:
- **Username**: Your GitHub username
- **Password**: Your GitHub Personal Access Token (NOT your regular password)

**How to get a Personal Access Token:**
1. Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Click "Generate new token (classic)"
3. Give it a name (e.g., "AI Credit Scoring Upload")
4. Select scopes: Check "repo" (full control of private repositories)
5. Click "Generate token"
6. **Copy the token** (you won't see it again!)
7. Use this token as your password when pushing

---

## GitHub Desktop (GUI Method)

**Easiest method for beginners!**

### Step 1: Install GitHub Desktop
- Download from: https://desktop.github.com/
- Install and sign in with your GitHub account

### Step 2: Add Your Project
1. **Click "File"** → **"Add Local Repository"**
2. **Browse** to your `ai-credit-scoring-project` folder
3. If Git is not initialized, click **"Create a repository"**
4. Click **"Create repository"**

### Step 3: Publish to GitHub
1. **Click "Publish repository"** button at the top
2. **Fill in details:**
   - Name: `ai-credit-scoring`
   - Description: `AI-Powered Alternate Credit Scoring System for Financial Inclusion`
   - Keep code private: Check or uncheck based on preference
3. **Click "Publish repository"**

### Step 4: Done!
Your project is now on GitHub! Click "View on GitHub" to see it.

---

## Verification

After uploading, verify everything is there:

1. **Go to your GitHub repository** in a web browser
2. **Check that you see:**
   - ✅ AI_Credit_Scoring_Presentation_Extended.pptx
   - ✅ AI_Credit_Scoring_Prototype.ipynb
   - ✅ README.md
   - ✅ requirements.txt
   - ✅ LICENSE
   - ✅ SETUP.md
   - ✅ .gitignore

3. **Check README displays properly** (scroll down on the repo page)

---

## Troubleshooting

### Problem: "Permission denied (publickey)"

**Solution 1** - Use HTTPS instead of SSH:
```bash
git remote set-url origin https://github.com/YOUR_USERNAME/ai-credit-scoring.git
```

**Solution 2** - Use Personal Access Token:
- When prompted for password, use your Personal Access Token (see Step 5 above)

### Problem: "Repository not found"

**Causes:**
- Repository doesn't exist on GitHub yet
- Incorrect username or repository name
- No access to private repository

**Solution:**
1. Verify the repository exists on GitHub
2. Check the URL is correct: `https://github.com/YOUR_USERNAME/REPO_NAME.git`
3. Make sure you're logged in to the correct GitHub account

### Problem: "Updates were rejected because the remote contains work"

**Solution:**
```bash
git pull origin main --allow-unrelated-histories
git push -u origin main
```

### Problem: Files are too large (>100MB)

**Solution:**
- GitHub has a 100MB file size limit per file
- For large datasets:
  1. Add to `.gitignore`
  2. Upload to Google Drive or Kaggle
  3. Add download links in README

**Check file sizes:**
```bash
# Windows
dir /s

# Mac/Linux
du -sh *
```

### Problem: "fatal: not a git repository"

**Solution:**
```bash
git init
```

### Problem: Authentication keeps failing

**Solution:**
1. Use GitHub Desktop (easier)
2. Or configure Git Credential Manager:
   ```bash
   git config --global credential.helper store
   ```

---

## Making Updates Later

### Using Command Line:

```bash
# 1. Check what changed
git status

# 2. Add changes
git add .                          # Add all changes
git add filename.ext               # Add specific file

# 3. Commit with message
git commit -m "Updated presentation with new data"

# 4. Push to GitHub
git push
```

### Using GitHub Desktop:

1. **Open GitHub Desktop**
2. **See changes** in the left panel
3. **Write commit message** in the bottom left
4. **Click "Commit to main"**
5. **Click "Push origin"** at the top

---

## Additional GitHub Features

### Add Repository Description & Topics

1. **Go to your repository** on GitHub
2. **Click the gear icon** ⚙️ next to "About"
3. **Add:**
   - Description: `AI-Powered Alternate Credit Scoring System for Financial Inclusion`
   - Website: (your portfolio or LinkedIn, optional)
   - Topics: `machine-learning`, `credit-scoring`, `financial-inclusion`, `ai`, `xgboost`, `shap`, `python`, `jupyter-notebook`

### Create Release

1. **Go to "Releases"** → **"Create a new release"**
2. **Tag version**: `v1.0.0`
3. **Release title**: `Initial Release - AI Credit Scoring System`
4. **Description**: 
   ```
   Initial release including:
   - 15-slide professional presentation
   - Complete Jupyter notebook with ML pipeline
   - Documentation and setup guides
   
   Key Features:
   - 0.82 AUC-ROC performance
   - SHAP explainability
   - Fairness auditing
   - Production-ready code
   ```
5. **Click "Publish release"**

### Enable Discussions (Optional)

1. **Go to Settings** → **Features**
2. **Check "Discussions"**
3. Use for Q&A, ideas, and collaboration

---

## Best Practices

### Commit Messages
✅ Good:
```
"Add SHAP explainability to notebook"
"Update presentation with new market data"
"Fix typo in README installation section"
```

❌ Bad:
```
"update"
"changes"
"asdf"
```

### Branching Strategy
```bash
# Create feature branch
git checkout -b feature/add-new-model

# Make changes and commit
git add .
git commit -m "Add neural network model"

# Push branch
git push -u origin feature/add-new-model

# Merge on GitHub via Pull Request
```

### .gitignore
Already configured to ignore:
- Large data files (*.csv, *.xlsx)
- Model files (*.pkl, *.h5)
- Python cache
- Jupyter checkpoints
- IDE files

---

## Useful Git Commands

```bash
# View commit history
git log --oneline

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Discard all local changes
git reset --hard HEAD

# View remote URL
git remote -v

# Update from GitHub
git pull

# Clone repository to new location
git clone https://github.com/USERNAME/REPO_NAME.git

# Create new branch
git checkout -b branch-name

# Switch branches
git checkout main

# Delete branch
git branch -d branch-name

# View branches
git branch -a
```

---

## Getting Help

- **Git Documentation**: https://git-scm.com/doc
- **GitHub Docs**: https://docs.github.com/
- **GitHub Community**: https://github.community/
- **Stack Overflow**: https://stackoverflow.com/questions/tagged/git

---

## Quick Reference Card

| Task | Command |
|------|---------|
| Initialize repo | `git init` |
| Check status | `git status` |
| Add all files | `git add .` |
| Commit | `git commit -m "message"` |
| Push to GitHub | `git push` |
| Pull from GitHub | `git pull` |
| Clone repo | `git clone URL` |
| View history | `git log` |

---

**Ready to upload? Choose your method above and get started! 🚀**

**Questions?** Create an issue in your repository or refer to the troubleshooting section.

---

**Good luck with your GitHub repository!** ⭐
