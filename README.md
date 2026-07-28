# WP10 — NACE recodification with RAG

A reproducible Retrieval-Augmented Generation (RAG) pipeline for recoding free-text descriptions of economic activities into NACE 2.1, running end-to-end on SSPCloud.

**Published site:** https://aiml4os.github.io/WP10-Cluster5-nace-revision/

Inspired by [subject 2 of the 2026 funathon](https://aiml4os.github.io/funathon-project2/).

This repository follows the conventions of the
[AIML4OS training-material-starting-pack](https://github.com/AIML4OS/training-material-starting-pack):
a multi-page Quarto website (`index.qmd` / `notebooks/nace-rag-tutorial.qmd` / `about.qmd`) and a
one-click "launch as an interactive notebook" button.

## Structure

- `index.qmd` — landing page, with the autolaunch button.
- `notebooks/nace-rag-tutorial.qmd` — the tutorial itself. Rendered to **both** an HTML page (for
  the site) and a downloadable `.ipynb` (for interactive use), from the same source file.
- `about.qmd` — credits and license.
- `sspcloud/` — scripts used by the "launch as an interactive notebook" button (environment setup +
  notebook download) when opening a VS Code service on SSPCloud.

## Try it interactively

Click the **"Launch with VSCode"** button on the [published site](https://aiml4os.github.io/WP10-Cluster5-nace-revision/)
to open a ready-to-use VS Code service on SSPCloud: it clones this repository, runs `uv sync`, and
downloads the tutorial as a runnable Jupyter notebook (`exercise.ipynb`) straight into the cloned
repository folder — right next to `.venv`, `img/`, and where you should put your `.env` file, exactly
as in local development.
The notebook ships without pre-computed outputs — you run it yourself with your own Qdrant / llm.lab
credentials (see the "Credentials" section of the tutorial for where to put your `.env` file).

## Local rendering

```bash
uv sync
uv run quarto preview
```

Requires a `.env` file at the repo root with `QDRANT_URL`, `QDRANT_API_KEY`, `QDRANT_API_PORT`, `LLMLAB_URL`, `LLMLAB_API_KEY`.

## Deployment

The site is rebuilt and pushed to the `gh-pages` branch by `.github/workflows/publish.yaml` on every push to `main`. A single `quarto render` produces both the HTML site and `notebooks/nace-rag-tutorial.ipynb`, thanks to the `html` + `ipynb` formats declared in `_quarto.yaml`.
