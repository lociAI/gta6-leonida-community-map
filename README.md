# 🌴 ViceRoute — GTA 6 State of Leonida Community Explorer Map

An open-source, community-driven interactive map for **Grand Theft Auto VI (State of Leonida)** designed to help new players explore what is around the map, check off discovered missions & spots, and verify community discoveries through a **10-Gamer Verification System**.

---

## ✨ Features

- **🗺 1:1 State of Leonida Map & 3 Visual Layers:**
  - Switch between **Leonida Map** (Neon Vector Overlay), **HD Satellite** (`leonida-map.jpg`), and **Cyber Tactical Radar**.
  - Covers **Vice Beach, Starfish & Venetian Islands, Downtown Vice City, Little Haiti, Little Cuba, Vice Port, VIA Airport, Lake Leonida, Port Gellhorn, Gellhorn Raceway, Ambrosia, Grassrivers, Leonida Keys, Gator Keys, Mount Kalaga National Park**, and **North Vice Coast**.
- **🧭 "What's Around Me" Nearby Explorer:**
  - Drag the blue player marker anywhere on the map (or tap any region pill) to automatically sort all 100 in-game spots by **distance from your current location (`~140m away`)**.
- **☑️ Full Discovery Checkoff Tracker (`0/100`):**
  - Check off any mission, cash lockbox, vehicle spawn, weapon, safehouse, robbery target, stunt jump, or world encounter as you discover it.
  - Filter by **All Spots**, **⏳ To-Do**, or **✓ Discovered**, and export/import your save progress as `.json`.
- **🗳 10-Gamer Community Verification System:**
  - Anyone can drop a new custom pin on the map (`📌 DROP PIN`) and publish a **📱 ViceFeed Card**.
  - New community submissions start at **`1 / 10 Gamers Verified`**.
  - Once **10 Gamers** verify a spot, it is automatically promoted to the **Official Leonida Explorer Map** and route optimizer!
- **📻 Built-in Web Audio Vice FM Synth Radio & GTA 6 SFX:**
  - 4 procedural synthwave stations (*Flash FM, Vice Synth 106.9, Emotion 98.3, Fever 105 Electro*) + interactive sound effects with zero external audio dependencies.

---

## 🚀 Quick Start

```bash
# Run locally on port 8080
python3 -m http.server 8080
```
Then open `http://localhost:8080` in your browser.

---

## 🤝 How the Community Can Add New GTA 6 Spots

1. **In-App Submission:**
   - Click **`📌 DROP PIN`** on the top map bar, tap the exact spot on the Leonida map, choose a category, and submit.
   - Export your JSON via the **`0/100` Stats Card → `⬇ Export Save JSON`** button and attach it to a GitHub Issue or Pull Request!
2. **Pull Request (`LOCATIONS` array in `index.html`):**
   - See [CONTRIBUTING.md](./CONTRIBUTING.md) for the exact spot format and 10-gamer verification rules.
