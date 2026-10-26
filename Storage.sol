// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.20;

// Deployed on Portaldot V3 testnet to prove the integration.
// Contract: 0x27840cad92558e677da56e5603dc2f429fe74ed5
// Block: 136015
contract Storage {
    uint256 public number;

    function store(uint256 num) public {
        number = num;
    }
}
