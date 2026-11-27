# 4etam.com

[![Deploy](https://github.com/almaty-itrider/4etam.com/actions/workflows/deploy.yml/badge.svg)](https://github.com/almaty-itrider/4etam.com/actions/workflows/deploy.yml)

Source of [4etam.com](https://4etam.com): a personal site and blog built with
[Zensical](https://zensical.org) and deployed to GitHub Pages.

## Local development

```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
zensical serve   # http://localhost:8000
```

## Deployment

- Pull requests: the site is built to catch errors.
- Push to `main`: the site is built and deployed to GitHub Pages.

DNS for the domain lives in [infra](https://github.com/almaty-itrider/infra).

## Writing a post

1. Create `docs/blog/YYYY-MM-slug.md`.
2. Add it to `nav` in `zensical.toml` (under "Blog", newest first) and to the table in `docs/blog/index.md`.
3. Open a PR, check the build, merge.
