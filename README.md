# 📞 Contact

> **If you're running this bot on mobile**, check this Termux setup guide:  
> 👉 [Termux guides](https://github.com/MeoMunDep/Guides-for-using-my-script-on-termux)

If you encounter any issues or have questions, feel free to reach out:

- 💬 **Contact:** [t.me/MeoMunDep](t.me/MeoMunDep)  
- 👥 **Group:** [t.me/KeoAirDropFreeNe](t.me/KeoAirDropFreeNe)  
- 📢 **Channel:** [t.me/KeoAirDropFreeNee](t.me/KeoAirDropFreeNee)

🙏 Help me with your referral:  
[**Play via DePIN Alliance**](https://t.me/DePIN_Alliance_Bot/play?startapp=OdZUfRzp80)

---

## 🚀 Getting Started

<details>
<summary><b>0️⃣ Download and Setup NodeJS</b></summary>

- **Node.js**: `22.11.0`  
- **npm**: `10.9.0`

📥 Download Node.js & npm here: [Download Link](https://t.me/KeoAirDropFreeNe/257/1462)

Once installed:

- Double-click `setup.bat` for **Windows**
- Or run `setup.sh` for **Linux/Mac**

> ⚙️ Make sure to fill all necessary data before running automatically.
</details>

---

<details>
<summary><b>1️⃣ Install Dependencies</b></summary>

Run this command inside the bot directory:

```bash
npm i user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger
````

</details>

---

<details>
<summary><b>2️⃣ Prepare Configuration Files</b></summary>

You need to set up several files before running the bot.

---

### 📜 `configs.json`

```json
{
  "delayEachAccount": [5, 8],
  "timeToRestartAllAccounts": 300,
  "skipInvalidProxy": false,
  "howManyAccountsRunInOneTime": 100,
  "isDoTasks": true,
  "isPlayGames": true,
  "isBuyCards": true,
  "maxPriceOfItems": 50000000,
  "howManyPiecesOfEachItem": 1,
  "howManyBoxsDoYouWantToBuy": 5,
  "isUpgradeSkills": true,
  "howManyTimesToUpgrade_Programming_Skill": 5,
  "howManyTimesToUpgrade_Financial_Skill": 5,
  "howManyTimesToUpgrade_Innovation_Skill": 5,
  "howManyTimesToUpgrade_DataAnalysis_Skill": 5,
  "howManyTimesToUpgrade_StrategicPlanning_Skill": 5,
  "howManyPointsYouWantToContributeToLeague": 100000,
  "isContributeAutomatic": true,
  "referralCode": "OdZUfRzp80",
  "itemThatYouWantToContributeToLeague": ["RAM_4GB", 1]
}
```

> 🧩 Fill the item’s **code** and **quantity** from `items.json`.

---

### 🗂️ `datas.txt`

> [Download from Telegram](https://t.me/KeoAirDropFreeNee/1586)

```txt
query_id.../user...
query_id.../user...
query_id.../user...
```

---

### 💼 `wallets.txt`

> Wallet generator: [Automatic Wallet Creator](https://github.com/MeoMunDep/Automatic-Ultimate-Create-Wallets-for-Airdrop)

```txt
0xabc...xyz
0xdef...123
0xghi...456
```

> ❗ *Currently wallet update feature is not yet supported.*

---

### 🌐 `proxies.txt`

> Optional — You can leave it blank if you don’t use proxies.
> Get free proxies: [webshare.io (ref link)](https://www.webshare.io/?referral_code=4l5kb3glsce7)

```txt
http://host:port
https://host:port
socks4://host:port
socks5://host:port
http://user:pass@host:port
https://user:pass@host:port
socks4://user:pass@host:port
socks5://user:pass@host:port
```

</details>

---

<details>
<summary><b>💡 How to Run the Bot</b></summary>

1. Open a terminal inside the extracted bot folder:

   ```bash
   cd depin-alliance
   ```

2. Run the main script:

   ```bash
   node meomundep
   ```

> ✅ You’re all set!
> The bot will automatically handle tasks, play games, buy items, and contribute to leagues as configured.

🎇 **Enjoy farming with MeoMunDep!**

</details>
