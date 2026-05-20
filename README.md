# WP10 — NACE recodification with RAG

A reproducible Retrieval-Augmented Generation (RAG) pipeline for recoding free-text descriptions of economic activities into NACE 2.1, running end-to-end on SSPCloud.

**Published site:** https://aiml4os.github.io/WP10-Cluster5-nace-revision/

Inspired by [subject 2 of the 2026 funathon](https://aiml4os.github.io/funathon-project2/).

## Local rendering

```bash
uv sync
uv run quarto preview
```

Requires a `.env` file at the repo root with `QDRANT_URL`, `QDRANT_API_KEY`, `QDRANT_API_PORT`, `LLMLAB_URL`, `LLMLAB_API_KEY`.

## Deployment

The site is rebuilt and pushed to the `gh-pages` branch by `.github/workflows/publish.yaml` on every push to `main`.
