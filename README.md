# 🌴 ViceRoute — GTA 6 State of Leonida Community Explorer Map

[![GitHub Repo](https://img.shields.io/badge/GitHub-lociAI%2Fgta6--leonida--community--map-ff2a85?style=for-the-badge&logo=github)](https://github.com/lociAI/gta6-leonida-community-map)
[![Status](https://img.shields.io/badge/Status-100%25_Free_Community_Project-00f0ff?style=for-the-badge)]()
[![Locations](https://img.shields.io/badge/Locations-125_Confirmed_Spots-fde047?style=for-the-badge)]()

**ViceRoute** is an open-source, community-built interactive map and discovery tracker for **Grand Theft Auto VI (State of Leonida)**.

It is built to help new and veteran players **see what is around the map** and check off all **125 confirmed missions, WAiNK landmarks, safehouses, clubs, heist targets, and collectibles** as they explore.

---

## 🎯 What This App Does for Players

1. **🧭 "What's Around Me" Nearby Explorer:**
   - Drag the blue player marker anywhere on the map—or tap any region button (*Vice Beach, Starfish & Venetian, Downtown & Haiti, VIA Airport, Lake Leonida, Port Gellhorn, Grassrivers, Leonida Keys, Mt. Kalaga, North Vice Coast*)—to automatically sort the checklist by **what is closest to your current location (`~140m away`)**.
2. **☑️ 100% Discovery Checkoff Tracker (`0/125`):**
   - Check off any mission, cash lockbox, vehicle spawn, weapon, safehouse, robbery target, stunt jump, WAiNK landmark, or world encounter after discovering it in-game.
   - Filter between **All Spots**, **⏳ To-Do (Remaining)**, and **✓ Discovered**.
   - **Save Backup:** Export and import your progress as a `.json` file anytime.
3. **🗺 1:1 State of Leonida Island Geometry & 3 Map Modes:**
   - Built directly over the State of Leonida island satellite map (`leonida-map.jpg`) with a 1:1 traced vector coastline and highway overlay.
   - Switch between **Leonida Map** (Neon Vector Overlay), **HD Satellite** (Pure Island Photo), and **Cyber Radar** (Tactical Night Grid).
4. **🚔 Tactical Radar Zones, Mod Shops & Heist Crew Planner:**
   - Toggle **6-Star Restricted Zones**, **Alligator Wetland Territories**, and **Pay 'n' Spray / Auto Customs Escape Garages (`🔧`)**.
   - Plan **Lucia & Jason** robbery runs across Leonida and auto-plot the shortest driving route between uncollected stops.
5. **📻 Zero-Dependency Procedural Web Audio Synth Radio & GTA SFX:**
   - Built-in Web Audio API synthesizer featuring 4 playable stations (*Flash FM, Vice Synth 106.9, Emotion 98.3, Fever 105 Electro*) plus interactive sound effects (*Mission Passed brass fanfare, Cash pickup chime, V8 engine rev, 6-Star Police siren*).

---

## 🗺 Regions & Categories Covered

| Region | Key Landmarks Included |
| :--- | :--- |
| **🌴 Vice Beach & Ocean Drive** | Hotel Dixon, Ocean View Hotel, Boardwalk Lifeguard Towers, Muscle Beach Gym, Flamingo Hotel, South Point Pier |
| **🏛 Venetian & Starfish Islands** | Venetian Causeway Drawbridge, Starfish Island Mansions & Helipad, Watson Bay Yacht Slips |
| **🏙 Downtown Vice, Haiti & Port** | Schlongberg Sachs Center, Nine1Nine Nightclub, Jack of Hearts Club, VCPD HQ, Metrorail, Uncle Jack's Liquor, Stockyard, Vice Port Cranes |
| **✈️ VIA Airport** | Main Terminal, FlyUS Executive Jet Hangar, ATC Radar Tower, Parallel Runways |
| **🌊 Lake Leonida** | West Shore Marina, Floodgate Dam Spillway, Leonard County Sheriff Substation, East Coast Golden Beach |
| **⚓ Port Gellhorn** | Hank's Waffle Diner (Trailer 1 Robbery), Port Gellhorn Motel, Pawn & Gun, Gellhorn International Raceway, Rideout Customs |
| **🚜 Ambrosia & Kelly County** | Thrillbilly Mud Club, 6x6 Mud-Bogger Pit, Sugar Refinery, Kelly County Crossroads |
| **🐊 Grassrivers Wetlands** | Twin-Fan Airboat Outpost, Swamp Convenience Store Gator Encounter, Mangrove Stilt-Shacks |
| **🏝 Leonida Keys & Gator Keys** | Overseas Highway Broken Trestle Bridge, Key Largo Reefs, Islamorada Marina, Gator Keys Southernmost Harbor |
| **⛰ Mt. Kalaga & North Coast** | Mount Kalaga Fire Watchtower, Hunting Cabins, Northwest Harbor Town, Northern Barrier Spit & Lagoon |

---

## 🛠️ How the Community Can Build on It

This project is purposefully built as a **zero-build, single-page application (`index.html` + `leonida-map.jpg` + `manifest.json` + `sw.js`)** so any gamer or developer can fork, edit, and run it in seconds without complicated build toolchains.

### 1. Run Locally
```bash
git clone https://github.com/lociAI/gta6-leonida-community-map.git
cd gta6-leonida-community-map
python3 -m http.server 8080
```
Open **`http://localhost:8080`** in your browser.

---

### 2. Add Spots or Features via Pull Request (For Developers)

All map spots live in the `LOCATIONS` array inside [`index.html`](./index.html) using a `2000 × 2000` coordinate grid (`x: 0..2000` West-to-East, `y: 0..2000` South-to-North):

```javascript
{
  id: 126,
  title: "Vice Beach Alley Custom Lowrider Spawn",
  cat: "vehicle",
  x: 1585,
  y: 895,
  region: "Vice Beach",
  hint: "Spawns between 22:00 and 04:00 behind the neon diner on Ocean Drive."
}
```

---

## 🗺 Community Roadmap Ideas (PRs Welcome!)

- [ ] **In-Game Screenshot & Video Clip Attachments:** Allow ViceFeed cards to display verified in-game screenshots or short clips.
- [ ] **Ultra-Zoom Interior Mini-Maps:** Add switchable floorplans for major interiors (*Nine1Nine Nightclub, VIA Airport Terminal, Hank's Waffle Diner, Schlongberg Sachs Tower*).
- [ ] **Custom Route Sharing Links:** Share custom multi-stop farming or sightseeing routes via URL query parameters (`?route=1,15,26,59`).

---

## ☕ Buy Me a Coffee — Support the Project

If you enjoy ViceRoute and want to support continued development, consider donating!

| Method | Details |
| :---: | :--- |
| **₿ Bitcoin (BTC)** | `158eVVqFPqyWCcfdKtYSNGpBKXmaY2jNF5` |
| **💲 USDT (ERC-20)** | `0xce3a9a2a2680f19659f7dfa46067b94454e51b63` |
| **🅿️ PayPal** | [![Donate Now](https://img.shields.io/badge/PayPal-Donate_Now-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://www.paypal.com/paypalme/sydtekstore) |

> Every contribution, no matter how small, helps keep this project alive and growing. Thank you! 🙏

---

## 📄 License

Open-source community project released under the **MIT License**. Built for the GTA 6 player community by [**lociAI**](https://github.com/lociAI).
