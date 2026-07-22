# Setup Instructions for GitHub Pages Projects Site

## Repository Setup Required

The repository `jdip1007.github.io` doesn't exist yet. You need to create it first:

### Option 1: Create via GitHub Web UI

1. Go to https://github.com/new
2. Repository name: `jdip1007.github.io` (MUST be exactly this)
3. Set as **Public**
4. **Do NOT** initialize with README (we already have content)
5. Click "Create repository"

### Option 2: Create via GitHub CLI (if available)

```bash
# Install gh first if needed
# On Ubuntu/Debian:
sudo apt update && sudo apt install gh

# Login to GitHub
gh auth login

# Create the repository
gh repo create jdip1007.github.io --public --source=. --remote=origin --push
```

## After Creating the Repository

Once the repository exists, deploy:

```bash
cd ~/github-pages
./deploy.sh
```

Or manually:

```bash
cd ~/github-pages
git push -u origin main
```

## What's Been Created

✅ **Main site** (`index.html`): Clean, responsive projects listing page
✅ **Project data** (`projects.json`): Editable JSON with 3 sample projects
✅ **Sample project page**: Trading Economics Calendar with full details
✅ **Deploy script** (`deploy.sh`): One-command deployment
✅ **Documentation**: Comprehensive README with instructions

## Adding More Projects

### Quick Add (JSON only)

Edit `~/github-pages/projects.json`:

```json
{
  "id": "my-project",
  "title": "My Cool Project",
  "description": "A brief description",
  "github": "https://github.com/username/repo",
  "tags": ["Python", "Web"]
}
```

### Full Project Page

1. Copy `projects/trading-economics-calendar.html`
2. Rename and edit content
3. Update `projects.json` with `"page": "your-project.html"`

## Site Structure

```
https://jdip1007.github.io/           → Main projects page
https://jdip1007.github.io/projects/  → Individual project pages
```

## Independent from Neural Nexus

- ✅ Separate repository (`jdip1007.github.io`)
- ✅ Separate from Neural-Nexus repo
- ✅ Zero dependencies (no MkDocs, no build step)
- ✅ Pure HTML/CSS/JS - super fast and simple
- ✅ Easy to maintain and update

## Next Steps

1. **Create the GitHub repository** (see above)
2. **Deploy the site**: `cd ~/github-pages && ./deploy.sh`
3. **Add your projects**: Edit `projects.json`
4. **Customize styling**: Edit CSS in `index.html`

## Live Preview (after deploy)

Once deployed, visit: **https://jdip1007.github.io/**