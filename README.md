# 🌴 ViceRoute — GTA 6 State of Leonida Community Explorer Map

[![GitHub Repo](https://img.shields.io/badge/GitHub-lociAI%2Fgta6--leonida--community--map-ff2a85?style=for-the-badge&logo=github)](https://github.com/lociAI/gta6-leonida-community-map)
[![Status](https://img.shields.io/badge/Status-100%25_Free_Community_Project-00f0ff?style=for-the-badge)]()
[![Verification](https://img.shields.io/badge/Community_Rule-10_Gamer_Verifications-fde047?style=for-the-badge)]()

**ViceRoute** is an open-source, community-built interactive map and discovery tracker for **Grand Theft Auto VI (State of Leonida)**.

It is built to help new and veteran players **see what is around the map**, check off discovered missions and locations as they explore, and crowdsource new in-game discoveries using a **10-Gamer Community Verification System**.

---

## 🎯 What This App Does for Players

1. **🧭 "What's Around Me" Nearby Explorer:**
   - Drag the blue player marker anywhere on the map—or tap any region button (*Vice Beach, Starfish & Venetian, Downtown & Haiti, VIA Airport, Lake Leonida, Port Gellhorn, Grassrivers, Leonida Keys, Mt. Kalaga, North Vice Coast*)—to automatically sort the checklist by **what is closest to your current location (`~140m away`)**.
2. **☑️ 100% Discovery Checkoff Tracker (`0/100+`):**
   - Check off any mission, cash lockbox, vehicle spawn, weapon, safehouse, robbery target, stunt jump, or world encounter after discovering it in-game.
   - Filter between **All Spots**, **⏳ To-Do (Remaining)**, and **✓ Discovered**.
   - **Save Backup:** Export and import your progress and custom pins as a `.json` file anytime.
3. **🗳 10-Gamer Community Verification Queue:**
   - Anyone can tap **`📌 DROP PIN`** (or right-click / long-press anywhere on the map) to submit a new discovery and publish a **📱 Leonida ViceFeed Card**.
   - Every new community spot starts at **`⏳ 1 / 10 VERIFIED`**.
   - Once **10 other gamers** verify the spot in-game, it automatically promotes itself onto the **Official Leonida Explorer Map**, Checklist, and AI Route Optimizer!
4. **🗺 1:1 State of Leonida Island Geometry & 3 Map Modes:**
   - Built directly over the State of Leonida island satellite map (`leonida-map.jpg`) with a 1:1 traced vector coastline and highway overlay.
   - Switch between **Leonida Map** (Neon Vector Overlay), **HD Satellite** (Pure Island Photo), and **Cyber Radar** (Tactical Night Grid).
5. **🚔 Tactical Radar Zones, Mod Shops & Heist Crew Planner:**
   - Toggle **6-Star Restricted Zones**, **Alligator Wetland Territories**, and **Pay 'n' Spray / Auto Customs Escape Garages (`🔧`)**.
   - Plan **Lucia & Jason** robbery runs across Leonida and auto-plot the shortest driving route between uncollected stops.
6. **📻 Zero-Dependency Procedural Web Audio Synth Radio & GTA SFX:**
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

### 2. Submit New In-Game Spots (No Coding Required)
1. Open the app and click **`📌 DROP PIN`** on the top map bar.
2. Tap the exact spot on the map where you found a mission, vehicle spawn, weapon, lockbox, or world event.
3. Fill in the **Title**, **Category**, and **How-to-Find Hint**, then click **`📌 DROP PIN & POST TO VICEFEED`**.
4. Click the **`0/100` Checkmark Button** in the top-right corner → click **`⬇ Export Save JSON`**.
5. Open a **GitHub Issue** or **Pull Request** on [`github.com/lociAI/gta6-leonida-community-map`](https://github.com/lociAI/gta6-leonida-community-map) and attach your exported JSON so the community can verify it!

---

### 3. Add Spots or Features via Pull Request (For Developers)

All map spots live in the `LOCATIONS` and `DEFAULT_COMMUNITY_SUBMISSIONS` arrays inside [`index.html`](./index.html) using a `2000 × 2000` coordinate grid (`x: 0..2000` West-to-East, `y: 0..2000` South-to-North):

#### Adding a Pending Community Submission (Awaiting 10 Gamer Verifications):
Add your object to `DEFAULT_COMMUNITY_SUBMISSIONS` in `index.html`:
```javascript
{
  id: 904,
  x: 1585,
  y: 895,
  title: "Vice Beach Alley Custom Lowrider Spawn",
  note: "Spawns between 22:00 and 04:00 behind the neon diner on Ocean Drive.",
  icon: "🏎",
  color: "#00f0ff",
  category: "Vehicle Spawns",
  catKey: "vehicle", // stash | hiddenpkg | easteregg | stunt | vehicle | weapon | safehouse | heist | rampage
  region: "Vice Beach",
  submittedBy: "@YourGitHubHandle",
  verifications: 1,  // Promotes automatically to LOCATIONS once it reaches 10!
  verified: false,
  completed: false
}
```

#### Adding a 10/10 Verified Official Spot:
Once verified by 10+ gamers, add it directly to `LOCATIONS` in `index.html`:
```javascript
{
  id: 101,
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

- [ ] **Real-Time Shared Backend (Supabase / Firebase):** Sync the 10-Gamer Verification votes live across all players worldwide in real time.
- [ ] **In-Game Screenshot & Video Clip Attachments:** Allow community pins and ViceFeed cards to display verified in-game screenshots or short clips.
- [ ] **Ultra-Zoom Interior Mini-Maps:** Add switchable floorplans for major interiors (*Nine1Nine Nightclub, VIA Airport Terminal, Hank's Waffle Diner, Schlongberg Sachs Tower*).
- [ ] **Custom Route Sharing Links:** Share custom multi-stop farming or sightseeing routes via URL query parameters (`?route=1,15,26,59`).

---

## 📄 License

Open-source community project released under the **MIT License**. Built for the GTA 6 player community by [**lociAI**](https://github.com/lociAI).
