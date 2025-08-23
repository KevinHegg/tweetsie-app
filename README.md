# [Collections as Data] for Apps — Tweetsie Live Build

**Goal (60 minutes):** collaboratively build a small, working web app from a pre-staged collection (images + metadata), using prompts in Cursor during a live Zoom session.

## What’s pre-staged
- `/data/items*.json` — descriptive metadata
- `/public/images/` — images referenced by the data
- Minimal Astro + Tailwind scaffold
- A playful **HELLO WORLD** snake animation on the homepage

## Agenda (lightweight)
1. Warm-up: tweak the snake (speed, colors, canvas size).
2. Wire data: fetch `/public/data/items.json` and list titles.
3. Audience-driven: add filters (subjects/years), a detail page, and optional CSV export.
4. Deploy to Netlify at your domain.

## Repo & Site
- Repo: `https://github.com/<your-username>/tweetsie-app`
- Site: `https://tweetsie.app` (or your configured domain)

### Local
```bash
npm i
npm run dev
