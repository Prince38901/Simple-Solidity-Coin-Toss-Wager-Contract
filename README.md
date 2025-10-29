<img width="1920" height="1080" alt="Screenshot (1)" src="https://github.com/user-attachments/assets/a8901132-49a2-4ef8-ae9c-96b142caeb8e" />


# 🎨 ColorRegistry Smart Contract


A simple decentralized **color registry** built with **Solidity** and deployed on the **Celo Sepolia Testnet**.  
Users can register unique colors (in HEX or RGB format) on-chain — creating a public, immutable record of color ownership.

---

## 📘 Project Description

The **ColorRegistry** smart contract allows anyone to claim ownership of a color code by registering it on the blockchain.  
Once a color (e.g., `#FF5733` or `rgb(255,87,51)`) is registered, no other user can register the same color again.  
This demonstrates how decentralized applications (dApps) can manage ownership of unique digital assets — even something as simple as a color!

---

## 🧩 What It Does

- Stores color codes (HEX or RGB) and associates them with the user’s wallet address.
- Ensures each color is **unique** and can only be registered once.
- Provides **public read access** to the color list and registration details.
- Emits an event every time a new color is registered for transparency.

---

## ✨ Features

- 🟢 **Decentralized Ownership:** Once you register a color, it’s permanently linked to your wallet.
- 🔒 **Uniqueness Guarantee:** The same color can’t be registered twice.
- ⏱️ **Timestamped Registration:** Every color is stored with its registration time.
- 📜 **Transparent Events:** Emits a `ColorRegistered` event for every new entry.
- 🌐 **Public Data Access:** Anyone can view all registered colors and their owners.

---

## 🔗 Deployed Smart Contract

**Network:** Celo Sepolia Testnet  
**Contract Address:** [`0x9171635fCa25F0533627af633A45b3FA0b837dF4`](https://celo-sepolia.blockscout.com/address/0x9171635fCa25F0533627af633A45b3FA0b837dF4)

You can explore it on **Celo Blockscout** to view transactions and events.

---

## 🧠 How It Works

1. **Register a Color**
   ```solidity
   registerColor("#FF5733");
2. View a Color’s Owner
   getColor("#FF5733");
3.List All Colors
  getAllColors();
