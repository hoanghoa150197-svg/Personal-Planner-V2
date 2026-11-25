# Personal Planner V2.12 — Webdesign Discipline Edition

- Style: Tech Utility + Data-Dense Dashboard. Taste dial: standard / minimal / compact.
- Changes: CSS presentation layer in index.html; self-contained clock SVG replaces external clock image. No new dependencies.
- All JavaScript unchanged except presentation-only clock image URL. All other original files unchanged, including config.js and Supabase SQL. Legacy HTML versions retained.
- QA: Chromium rendered 14 pages at 375, 390, 768, 1280, 1440 px in both light and dark, with empty data and a simulated session in a test-only copy. No uncaught page errors or main/body horizontal overflow detected. Real Supabase authentication and synchronization were not tested.
- Deploy: Back up JSON first. Replace index.html on existing GitHub Pages repository, or upload all files from this ZIP. Keep the same site URL for local data.
