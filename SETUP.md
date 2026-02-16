# GitHub Setup Guide

## 📦 How to Push This Project to GitHub

### Step 1: Create a GitHub Repository

1. Go to [GitHub](https://github.com) and log in
2. Click the **"+"** icon in the top right → **"New repository"**
3. Fill in the details:
   - **Repository name**: `ai-credit-scoring`
   - **Description**: `AI-Powered Alternate Credit Scoring System for Financial Inclusion`
   - **Visibility**: Choose Public or Private
   - **DO NOT** initialize with README (we already have one)
4. Click **"Create repository"**

### Step 2: Initialize Git (First Time Only)

Open terminal/command prompt in your project folder and run:

```bash
# Configure Git (if not already done)
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Initialize the repository
git init

# Add all files
git add .

# Make your first commit
git commit -m "Initial commit: AI-Powered Credit Scoring System"
```

### Step 3: Connect to GitHub

Replace `YOUR_USERNAME` and `YOUR_REPO_NAME` with your actual GitHub username and repository name:

```bash
# Add remote repository
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 4: Verify

1. Refresh your GitHub repository page
2. You should see all your files uploaded!

---

## 🔄 Making Updates Later

After making changes to your files:

```bash
# Check what changed
git status

# Add all changes
git add .

# Commit with a message
git commit -m "Description of your changes"

# Push to GitHub
git push
```

---

## 📂 Repository Structure

```
ai-credit-scoring/
├── AI_Credit_Scoring_Presentation_Extended.pptx  # 15-slide presentation
├── AI_Credit_Scoring_Prototype.ipynb             # Jupyter notebook with ML pipeline
├── README.md                                      # Project documentation
├── requirements.txt                               # Python dependencies
├── LICENSE                                        # MIT License
├── .gitignore                                     # Git ignore rules
└── SETUP.md                                       # This file
```

---

## 🌟 Tips for a Great GitHub Repository

### 1. Add a Repository Description
In GitHub, go to your repository → Click the ⚙️ gear icon → Add:
- **Description**: `AI-Powered Alternate Credit Scoring System for Financial Inclusion`
- **Topics**: `machine-learning`, `credit-scoring`, `financial-inclusion`, `ai`, `xgboost`, `shap`, `python`

### 2. Enable GitHub Pages (Optional)
If you want to host documentation:
1. Go to Settings → Pages
2. Select branch: `main`
3. Select folder: `/root`
4. Click Save

### 3. Add a Star ⭐
Star your own repository to make it easier to find later!

---

## 🚨 Troubleshooting

### Issue: "Permission denied (publickey)"
**Solution**: Use HTTPS instead of SSH, or set up SSH keys:
```bash
# Use HTTPS URL instead
git remote set-url origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
```

### Issue: "Repository not found"
**Solution**: Check that you've created the repository on GitHub and the URL is correct.

### Issue: Files too large
**Solution**: GitHub has a 100MB file size limit. For large datasets:
1. Add them to `.gitignore`
2. Upload to Google Drive or Kaggle
3. Add download links in README

---

## 📱 Alternative: Using GitHub Desktop

If you prefer a GUI:

1. Download [GitHub Desktop](https://desktop.github.com/)
2. Install and sign in to GitHub
3. Click **"File"** → **"Add Local Repository"**
4. Choose your project folder
5. Click **"Publish repository"**
6. Fill in details and click **"Publish"**

---

## ✅ Quick Commands Reference

```bash
# Clone a repository
git clone https://github.com/USERNAME/REPO_NAME.git

# Check status
git status

# Add files
git add .                    # Add all files
git add filename.txt         # Add specific file

# Commit changes
git commit -m "Your message"

# Push to GitHub
git push

# Pull latest changes
git pull

# View commit history
git log

# Create a new branch
git checkout -b branch-name

# Switch branches
git checkout main
```

---

## 🎓 Learning Resources

- [GitHub Guides](https://guides.github.com/)
- [Git Documentation](https://git-scm.com/doc)
- [Interactive Git Tutorial](https://learngitbranching.js.org/)

---

## 🤝 Collaboration

To collaborate with others:

1. **Add Collaborators**: Settings → Collaborators → Add people
2. **Use Branches**: Create feature branches for new work
3. **Pull Requests**: Review code before merging to main
4. **Issues**: Track bugs and feature requests

---

## 📧 Need Help?

If you encounter issues:
1. Check the [GitHub Help](https://help.github.com/)
2. Search on [Stack Overflow](https://stackoverflow.com/questions/tagged/git)
3. Ask in the repository Issues section

---

**Good luck with your GitHub repository! 🚀**
