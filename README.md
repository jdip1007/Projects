# GitHub Pages Projects Site

Simple, independent projects site separate from Neural Nexus.

## Structure

```
github-pages/
├── index.html              # Main projects listing page
├── projects.json           # Project metadata (editable)
├── projects/               # Individual project pages
│   └── trading-economics-calendar.html
├── deploy.sh              # Deployment script
└── README.md              # This file
```

## Adding New Projects

### Option 1: Add to projects.json (simplest)

Edit `projects.json` and add a new project:

```json
{
  "id": "project-id",
  "title": "Project Title",
  "description": "Short description of the project",
  "page": "project-page.html",     // Optional: link to custom page
  "github": "https://github.com/...",  // Optional
  "demo": "https://demo-url.com",  // Optional
  "tags": ["Tag1", "Tag2", "Tag3"]
}
```

### Option 2: Create a custom project page

1. Copy `projects/trading-economics-calendar.html` as a template
2. Edit the content for your project
3. Update `projects.json` to reference the new page

## Deployment

### Quick Deploy

```bash
cd ~/github-pages
chmod +x deploy.sh
./deploy.sh
```

### Manual Deploy

```bash
cd ~/github-pages
git add .
git commit -m "Update projects"
git push origin main
```

## Features

- **Zero dependencies**: Pure HTML, CSS, and vanilla JavaScript
- **Dynamic loading**: Projects loaded from JSON file
- **Easy to update**: Just edit projects.json
- **Responsive**: Works on mobile and desktop
- **Fast**: No build step, no frameworks
- **Custom pages**: Add dedicated pages for detailed project info

## Customization

### Styling

Edit the CSS in `index.html` or project pages to change:
- Colors (search for `#2c3e50`, `#3498db`)
- Fonts
- Layout
- Animations

### Adding Links

Update the nav sections in HTML files to add more links:
```html
<nav>
  <ul>
    <li><a href="your-link">Your Link</a></li>
  </ul>
</nav>
```

## Live Site

Once deployed, your site will be available at:
**https://jdip1007.github.io/**

## Notes

- This is separate from Neural Nexus (https://jdip1007.github.io/Neural-Nexus/)
- Uses simple static HTML - no database, no backend
- Perfect for showcasing projects with minimal overhead
- Easy to maintain and update