# PortalReceipt

Invoice receipt for the Portaldot V3 testnet. Two parties confirm an invoice. When both confirm, it is marked paid.

## Testnet

- Network: PortaldotV3 Testnet
- RPC: https://test-evm-rpc-v3.portaldot.dev
- Chain ID: 420420777
- Explorer: https://node-console.portaldot.dev
- Token: tPOT

## Deployed contract

- Contract: `0x27840cad92558e677da56e5603dc2f429fe74ed5`
- Transaction: `0xb21511633a2e1e81ee0ce9e965371e6fe97d6adb4c3b0482ce55acd4718768c4`
- Block: 136015
- Deployer: `5CZofeamBqjGJF8MVZeL8R1KY3hpUDHRMvUnBCDL5ecAz3Gk`

## How it works

1. Payer creates an invoice with a payee address, amount, and title.
2. Payer confirms.
3. Payee confirms.
4. When both have confirmed, the invoice is paid.

Deployed on this testnet is a storage contract used to prove the Portaldot integration. The invoice flow is the product demo.

## Architecture

Browser demo → OKX or MetaMask on Portaldot V3 → contract `0x27840cad92558e677da56e5603dc2f429fe74ed5` on the testnet.

Native account (starts with 5) holds tPOT. The EVM address (starts with 0x) is mapped through reviveApi.accountId.
