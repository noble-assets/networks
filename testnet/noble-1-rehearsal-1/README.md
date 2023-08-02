# Testnet Overview
Noble will be running testnet rehersals for migrating from a sovereign chain to a consumer chain. All current validators on `grand-1` will be automatically added to the `grand-rehearsal-1` genesis file. 

**Remember**, noble is currently a permissioned chain, not all cosmoshub vals are noble vals. Use this chart to figure out which events to participate in.

## Schedule

| Date                 | Description                                |
|----------------------|--------------------------------------------|
| 2021-08-17T11:00:00Z | Export `grand-1` as `grand-rehearsal-1` https://testnet.mintscan.io/noble-testnet/blocks/2580000   |
| 2023-08-18T15:00:00Z | Sync `grand-rehearsal-1` as a full node    |


## Additional tasks to be scheduled

1. Use the existing `grand-rehearsal-1` network to carry out a halt height, state export, and then relaunch on ICS, 3 blocks later.
2. Clone grand, and create a new network, `grand-rehearsal-1`, to do a halt height, state export, and then relaunch on ICS, 3 blocks later.
3. C

## Chain Info

### Binary
```
git clone git@github.com:strangelove-ventures/noble.git
cd noble
git checkout grand-rehearsal-1
make install
```

### Genesis
```
https://raw.githubusercontent.com/strangelove-ventures/noble-networks/main/testnet/grand-rehearsal-1/genesis.json
```

### client.toml
```toml
chain-id = "grand-rehearsal-1"
```

### config.toml
```toml
persistent_peers = "38179b18853d6a8cb86b99881e02cf72f18b9d0f@34.127.46.223:26656,57546d799a1cdef74b9a174052821a6e93636dfc@34.145.87.4:26656,6b76ad22a73897e3c39c7d87b7d12a3b7d690bff@34.168.48.128:26656"
```

### app.toml
```toml
minimum-gas-prices = "0.0uusdc"
```
---

## Links

[**https://rpc.grand-rehearsal-1.noble.strange.love**](https://rpc.grand-rehearsal-1.noble.strange.love:443)

[**https://api.grand-rehearsal-1.noble.strange.love**](https://api.grand-rehearsal-1.noble.strange.love:443)

[**https://explore.strange.love/grand-rehearsal-1**](https://explore.strange.love/grand-rehearsal-1)

---
