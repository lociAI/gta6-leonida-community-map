# 🤝 Contributing to the GTA 6 State of Leonida Community Map

Thank you for helping map the State of Leonida for new GTA 6 players!

## 🗳 The 10-Gamer Verification Rule

To keep the map 100% accurate and free of fake or speculative pins:
1. Every newly submitted spot enters the **Community Verification Queue** (`DEFAULT_COMMUNITY_SUBMISSIONS` in `index.html` or in-app `📌 DROP PIN`).
2. Once **at least 10 gamers** verify the spot's coordinates and in-game spawn details, it is promoted into the main `LOCATIONS` dataset in `index.html`.

## 📍 How to Add a Spot via Pull Request

Open `index.html` and add your entry to either `DEFAULT_COMMUNITY_SUBMISSIONS` (if awaiting 10 verifications) or `LOCATIONS` (if already verified by 10+ players):

```javascript
{
  id: 101,
  title: "Spot / Mission Name",
  cat: "stash", // stash | hiddenpkg | easteregg | stunt | vehicle | weapon | safehouse | heist | rampage
  x: 1580,      // 0..2000 (West to East on leonida-map.jpg)
  y: 890,       // 0..2000 (South to North on leonida-map.jpg)
  region: "Vice Beach",
  hint: "Clear description of how new players can find or trigger this spot in-game."
}
```
