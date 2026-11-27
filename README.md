# 4etam.com

[![Deploy](https://github.com/almaty-itrider/4etam.com/actions/workflows/deploy.yml/badge.svg)](https://github.com/almaty-itrider/4etam.com/actions/workflows/deploy.yml)

Source of [4etam.com](https://4etam.com): a personal site and blog in three languages,
built with [Zensical](https://zensical.org) and deployed to GitHub Pages.

| Folder | Language | URL                     |
|--------|----------|-------------------------|
| `en/`  | English  | https://4etam.com/      |
| `kk/`  | Қазақша  | https://4etam.com/kk/   |
| `ru/`  | Русский  | https://4etam.com/ru/   |

Each folder is a separate Zensical project (`zensical.toml` + `docs/`). `build.sh` builds all
three and assembles them in `public/`. The language switcher in the header links them together.

## Local development

```bash
uv tool install zensical      # once

cd en && zensical serve       # live preview of one language: http://localhost:8000
./build.sh                    # full build of all languages into ./public
python3 -m http.server -d public 8000   # preview with a working language switcher
```

## Writing a post

1. Create `docs/blog/YYYY-MM-slug.md` in **each** language folder, with the same file name.
2. Add it to `nav` in each `zensical.toml` (under the blog section, newest first)
   and to the table in each `docs/blog/index.md`.
3. Open a PR, check the build, merge.

## Deployment

- Pull requests: all languages are built to catch errors.
- Push to `main`: built and deployed to GitHub Pages.

DNS for the domain lives in [infra](https://github.com/almaty-itrider/infra).
