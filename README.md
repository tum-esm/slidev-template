# 🌋 TUM ESM Slidev Template

Demo presentation: [docs/slides.example.pdf](https://github.com/tum-esm/slidev-template/raw/main/docs/slides.example.pdf)<br/>
Documentation about **Slidev**: [https://sli.dev/](https://sli.dev/)

**Usage:** Write your slide content into `src/slides.md`.

```bash
# start development mode -> now open localhost:... in your browser
./develop.sh

# export slides -> `slides.pdf` and `slides-with-clicks.pdf` created
./export.sh

# export example slides in `docs/`
./export-example.sh
```

🐘 The PDF's exported by Slidev can be quite large. If you have **Ghostscript** (https://www.ghostscript.com/) installed on your system, the export scripts will automatically compress the PDF's.
