# Testnet Overview
Noble will be running testnet rehersals for migrating from a sovereign chain to a consumer chain. All current validators on `noble-1` will be automatically added to the `noble-1-rehearsal-1` genesis file. 

**Remember**, noble is currently a permissioned chain, not all cosmoshub vals are noble vals. Use this chart to figure out which events to participate in.

| I currently validate on: | I should participate in:                         |
|--------------------------|--------------------------------------------------|
| noble-1                  | `noble-1-rehearsal-1`                            |
| cosmohub-4               | `noble-1-rehearsal-1-ics`                        |
| Both                     | `noble-1-rehearsal-1`, `noble-1-rehearsal-1-ics` |

## Schedule

| Date                 | Description                                |
|----------------------|--------------------------------------------|
| 2023-07-28T15:00:00Z | Join `noble-1-rehearsal-1`  as a validator |


## Additional tasks to be scheduled

1. Use the existing grand-1 network to carry out a halt height, state export, and then relaunch on ICS, 3 blocks later.
2. Clone noble-1, and create a new network, `noble-1-rehearsal-1`, to do a halt height, state export, and then relaunch on ICS, 3 blocks later.
3. C

## Chain Info

### Binary
```
git clone git@github.com:strangelove-ventures/noble.git
cd noble
git checkout noble-1-rehearsal-1
make install
```

### Genesis
```
https://raw.githubusercontent.com/strangelove-ventures/noble-networks/main/testnet/noble-1-rehearsal-1/genesis.json
```

### client.toml
```toml
chain-id = "noble-1-rehearsal-1"
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

[**https://rpc.noble-1-rehearsal-1.noble.strange.love**](https://rpc.noble-1-rehearsal-1.noble.strange.love:443)

[**https://api.noble-1-rehearsal-1.noble.strange.love**](https://api.noble-1-rehearsal-1.noble.strange.love:443)

[**https://explore.strange.love/noble-1-rehearsal-1**](https://explore.strange.love/noble-1-rehearsal-1)

---
