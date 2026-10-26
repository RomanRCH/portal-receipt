# PortalReceipt

Shareable invoice receipt for the Portaldot V3 testnet. A payer in a normal 0x wallet and a Portaldot account that starts with 5 confirm the same invoice. When both confirm, the receipt is marked paid.

The link is the product: send it in a chat, the other side opens it, confirms, and the page turns green.

## Why Portaldot

Portaldot maps a normal EVM address (0x) to a native account (5) through reviveApi.accountId. PortalReceipt uses that mapping so a person can pay from OKX or MetaMask and still be the same account on the Portaldot side. This is a Portaldot feature, not a generic Ethereum invoice.

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
- Block hash: `0x2ffa19cd48554924acfa41345d7ccefb2c83f6d5b6322c2b767b048251fa33c8`
- Deployer: `5CZofeamBqjGJF8MVZeL8R1KY3hpUDHRMvUnBCDL5ecAz3Gk`

Open the explorer, go to block 136015, and look for the `revive.Instantiated` event. The transaction hash is the extrinsic hash inside that block.

## How it works

1. Payer creates an invoice with a payee address, amount, and title.
2. Payer confirms.
3. Payee confirms.
4. When both have confirmed, the invoice is paid and the shareable link shows Paid.

Deployed on this testnet is a storage contract used to prove the Portaldot integration. The invoice flow is the product demo.

## Architecture

Browser demo → OKX or MetaMask on Portaldot V3 → contract `0x27840cad92558e677da56e5603dc2f429fe74ed5` on the testnet.

Native account (starts with 5) holds tPOT. The EVM address (starts with 0x) is mapped through reviveApi.accountId.

See `image.jpg` for the diagram.

## Status

Check-in passed. Next: public receipt page and the invoice contract behind the shareable link.
