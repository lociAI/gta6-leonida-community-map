# 🤝 Contributing to the GTA 6 State of Leonida Community Map

Thank you for helping map the State of Leonida for GTA 6 players!

## 📍 How to Add a Confirmed Spot via Pull Request

Open `index.html` and add your confirmed location entry to the `LOCATIONS` dataset:

```javascript
{
  id: 126,
  title: "Spot / Mission Name",
  cat: "stash", // stash | hiddenpkg | easteregg | stunt | vehicle | weapon | safehouse | heist | rampage
  x: 1580,      // 0..2000 (West to East on leonida-map.jpg)
  y: 890,       // 0..2000 (South to North on leonida-map.jpg)
  region: "Vice Beach",
  hint: "Clear description of how players can find or trigger this spot in-game."
}
```
