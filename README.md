# One Room, 100 Monsters

A single-room, top-down survival game built with Canvas, CSS, and vanilla JavaScript. Hold the room, collect experience, upgrade your build, and see how long you last.

## Features

- One responsive arena with procedural Canvas visuals
- Keyboard movement, mouse aiming, automatic fire while holding click, and a dash
- Five enemy archetypes: Drifter, Skitter, Brute, Spitter, and Nestling; plus the Warden elite
- Experience drops, level-up choices, 18 run upgrades, healing and overdrive pickups
- Escalating waves and a 100-monster milestone event
- Score, run statistics, and a locally saved personal best
- Pause, settings, generated sound effects, fullscreen, and reduced-effects options
- No build step, server, image downloads, or third-party runtime dependencies

## Controls

| Input | Action |
| --- | --- |
| WASD or arrow keys | Move |
| Mouse | Aim |
| Left click (hold) | Fire |
| Space | Dash with brief invulnerability |
| Esc | Pause or resume |
| 1, 2, or 3 | Choose a level-up upgrade |

## Run locally

Open `index.html` in a modern browser. For a local web server, run this from the project folder:

```sh
python -m http.server 8000
```

Then visit `http://localhost:8000`.

## Deploy to GitHub Pages

This is a static site and can be served directly from the repository root.

1. Create a GitHub repository, for example `one-room-100-monsters`, and push these files to its `main` branch.
2. In the repository, open **Settings → Pages**.
3. Under **Build and deployment**, choose **Deploy from a branch**.
4. Select branch **main** and folder **/(root)**, then save.
5. Wait for the Pages deployment to finish. GitHub will show the public URL on the Pages settings screen.

The game uses relative paths and requires no GitHub Actions workflow. It has not been published from this folder; a GitHub account/repository connection is not available in this workspace.

## Project structure

```text
index.html       Page shell and game UI
style.css        Responsive menus, HUD, and theme
src/game.js      Game loop, Canvas rendering, combat, progression, and saves
README.md        Setup and deployment instructions
LICENSE          MIT license
```

## Development notes

- The main simulation uses a fixed logical canvas size and delta-time updates, with large frame deltas clamped after tab switches.
- All artwork and short arcade sound effects are drawn/generated in the browser. Google Fonts are an optional visual enhancement; system fallbacks are included.
- The only persistent data is the versioned high score and settings in browser `localStorage`. If storage is unavailable, the game continues without saving.
- The Warden appears on wave 5. Reaching 100 kills awards a score bonus and heal, then calls in an elite if one is not already active.

## Credits

Original game code and procedural visuals. Fonts: Barlow Condensed and DM Mono (loaded from Google Fonts when online).

## License

MIT. See [LICENSE](LICENSE).

## Known limitations

- High scores and settings are stored per browser, not synced between devices.
- Sound effects are synthesized; there is no music track.
- The design targets desktop keyboard and mouse; touch controls and controller support are not included.
- The game source has been syntax-checked, but it has not been published to or verified on a public Pages URL.

## Future improvements

Music, touch controls, additional elite patterns, and more run modifiers.
