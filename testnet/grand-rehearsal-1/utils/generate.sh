# This script takes a genesis export of the grand-1 network and transforms it
# for the grand-rehearsal-1 genesis file.
rm genesis.json
cp utils/export_3910193.json genesis.json

# Update the Chain ID.
cat <<< $(jq -r '.chain_id = "grand-rehearsal-1"' genesis.json) > genesis.json

# Update the Genesis Time.
cat <<< $(jq -r '.genesis_time = "2023-11-22T15:00:00Z"' genesis.json) > genesis.json

# Reset the Capability App State.
cat <<< $(jq -r '.app_state.capability.index = "1"' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.capability.owners = []' genesis.json) > genesis.json

# Reset the IBC App State.
cat <<< $(jq -r '.app_state.ibc.client_genesis.clients = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.client_genesis.clients_consensus = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.client_genesis.clients_metadata = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.client_genesis.next_client_sequence = "0"' genesis.json) > genesis.json

cat <<< $(jq -r '.app_state.ibc.connection_genesis.connections = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.connection_genesis.client_connection_paths = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.connection_genesis.next_connection_sequence = "0"' genesis.json) > genesis.json

cat <<< $(jq -r '.app_state.ibc.channel_genesis.channels = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.channel_genesis.acknowledgements = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.channel_genesis.commitments = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.channel_genesis.receipts = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.channel_genesis.send_sequences = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.channel_genesis.recv_sequences = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.channel_genesis.ack_sequences = []' genesis.json) > genesis.json
cat <<< $(jq -r '.app_state.ibc.channel_genesis.next_channel_sequence = "0"' genesis.json) > genesis.json

# Reset the PacketForwardMiddleware App State.
cat <<< $(jq -r '.app_state.packetfowardmiddleware.in_flight_packets = {}' genesis.json) > genesis.json

# Reset the Slashing App State.
cat <<< $(jq -r '.app_state.slashing.missed_blocks = []' genesis.json) > genesis.json

# Reset the Transfer App State.
cat <<< $(jq -r '.app_state.transfer.denom_traces = []' genesis.json) > genesis.json
