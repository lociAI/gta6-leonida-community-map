# 🤝 Contributing to ViceRoute — The Free Fan-Made GTA 6 State of Leonida Community Map

Thank you for helping the worldwide GTA 6 community map the **State of Leonida**! **ViceRoute** is 100% free, fan-made, and open-source (MIT License) with zero paywalls, built by players around the world.

---

## 🎯 Method 1: No-Code In-App Pin Builder (Fastest for Gamers!)

You don't even need to know how to code to submit a new spot:
1. Open the live map: **[https://lociai.github.io/gta6-leonida-community-map/](https://lociai.github.io/gta6-leonida-community-map/)**
2. Click the green **`🤝 + ADD SPOT / BUILD TOGETHER`** button in the top bar.
3. Click **`🎯 Pick X/Y on Map`** and tap the exact spot on the State of Leonida island.
4. Fill in the **Title**, **Category**, **Region**, and **How to Find / Trigger Hint**.
5. Click **`🚀 SUBMIT TO WORLDWIDE GITHUB MAP`** — it automatically opens a pre-filled GitHub Issue with the exact JSON code for maintainers to merge!

---

## 💻 Method 2: Add a Confirmed Spot via GitHub Pull Request (For Developers)

Open [`index.html`](./index.html) and add your confirmed location entry to the `LOCATIONS` dataset (`0..2000` coordinate grid):

```javascript
{
  id: 126,
  title: "Spot / Mission / Landmark Name",
  cat: "stash", // stash | hiddenpkg | easteregg | stunt | vehicle | weapon | safehouse | heist | rampage
  x: 1580,      // 0..2000 (West to East on leonida-map.jpg)
  y: 890,       // 0..2000 (South to North on leonida-map.jpg)
  region: "Vice Beach",
  hint: "Clear description of how players can find or trigger this spot in-game."
}
```

---

## 📣 Help Advertise & Grow the Community

Because commercial gaming map sites lock checkboxes behind paywalls, word-of-mouth from players is how the worldwide community finds this free alternative:
- **Star & Fork** the repository on [GitHub](https://github.com/lociAI/gta6-leonida-community-map).
- **Share Deep Links** to specific spots (`?spot=1` to `?spot=125`) when answering questions on `r/GTA6`, Discord, X/Twitter, or YouTube comments.
- **Embed the Map** on your GTA 6 fan blog, wiki, or Discord community server!
