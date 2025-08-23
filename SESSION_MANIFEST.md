# [Collections as Data] for Apps — Live Cursor Session

**Goal (≈60 min):** starting from a playful *HELLO WORLD* homepage, we’ll wire pre-staged metadata + images into a tiny, interactive site using Cursor and audience prompts.

## What’s already here
- Astro + Tailwind scaffold (static, client-only)
- Homepage: snake animation (`/`) — keep as-is; we’ll tweak live
- Staging page: `/staging` (session outline + links)
- Data: `/data/items*.json` → copied to `/public/data/items.json` at build
- Images: `/public/images/*.jpg`

## Live plan (loose)
1. **Warm-up**: tweak snake constants (speed/segments/colors) with prompts.
2. **Data fetch**: add `src/lib/data.ts` to load `/data/items.json` (defensive types).
3. **List view**: create `/items` page that renders titles (then thumbnails).
4. **Filters**: subject dropdown + year range + simple text search.
5. **Details**: `/item/[id]` with image and core metadata.
6. **Export**: CSV of current filtered results (client-side).

Optional if time:
- Grid that respects orientation/aspect ratio
- Persist filters in URL query params

## Constraints
- Client-only (no server, no external APIs)
- Keep bundle tiny, no new deps unless explicitly agreed
- A11y first (semantic tags, alt text)
- Don’t remove or break the homepage animation

## Handy prompts (copy/paste)
- *“Create `src/lib/data.ts` with a `fetchItems()` that loads `/data/items.json`, validates a few required fields, and returns `Item[]` with a minimal TS type. No external libs.”*
- *“Add a new page at `src/pages/items.astro` that uses `fetchItems()` client-side and renders a list of item titles linking to `/item/[id]`.”*
- *“Enhance the items page with: a subject `<select>`, year min/max inputs, and a text search over title+description; filter client-side.”*
- *“Create `src/pages/item/[id].astro` that shows the image, title, date, description, repository, rights, and subjects as chips. Link back to /items.”*
- *“On /items, add an ‘Export CSV’ button that downloads the currently filtered rows as a CSV, no server.”*
- *“Keep the snake homepage working; expose constants at the top for speed and segment count.”*

## Links
- Repo: **(add your GitHub URL here)**
- Site: **https://tweetsie.app** (or your chosen domain)

## Local
```bash
npm i
npm run dev
