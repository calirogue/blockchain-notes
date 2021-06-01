const Web3 = require('web3')
const rpcURL = "https://mainnet.infura.io/v3/api-key"
const web3 = new Web3(rpcURL)
const account = "account-number"

web3.eth.getBalance(address, (err, wei) => {
  balance = web3.utils.fromWei(wei, 'ether')
})
