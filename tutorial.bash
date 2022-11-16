### Foundry Tutorial: Creating an NFT with Solmate
### Documentation: https://book.getfoundry.sh/tutorials/solmate-nft

### Deploy NFT contract
forge create NFT --rpc-url=$RPC_URL --private-key=$WALLET_PRIVATE_KEY --constructor-args TTHOMASTOKEN3 THTOKEN3

### Mint NFTs from contract and send to user address
cast send --rpc-url=$RPC_URL 0x28c6Eb216bFC10F0fA27d0dC774217F90b7D7AbC  "mintTo(address)" 0xF241374eb31da7CE550A95bA1DacdFF27475d7cC --private-key=$WALLET_PRIVATE_KEY

### Sanity check the owner of the NFT
cast call --rpc-url=$RPC_URL --private-key=$WALLET_PRIVATE_KEY 0x28c6Eb216bFC10F0fA27d0dC774217F90b7D7AbC "ownerOf(uint256)" 1

### Deploy NFT contract with additional metadata
forge create NFT --rpc-url=$RPC_URL --private-key=$WALLET_PRIVATE_KEY --constructor-args TTHOMASTOKENNMR TH_NMR_TOKEN https://i.seadn.io/gae/Wi3m40tiBAleV7JCywJSwWEC29zc8IC2sKgCXjExNDDW4xUMamTPcY6099BzdAmHdNueNJNTVJv726KqA_S664YUXyjpEm5T4Etj?auto=format&w=1000

### Mint NFTs from new contract
cast send --rpc-url=$RPC_URL 0x9e2deb0b0ffe75002019ead8e0f040c5ed34c6b2  "mintTo(address)" 0xF241374eb31da7CE550A95bA1DacdFF27475d7cC --private-key=$WALLET_PRIVATE_KEY --value 0.01ether