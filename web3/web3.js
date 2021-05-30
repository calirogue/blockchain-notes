const Web3 = require('web3');

const customProvider = {
  sendAsync: (payload, cb) => {
    console.log('test');
    console.log(payload);
    cb(undefined, 100)
  }
}
// const provider = new Web3.provider.HttpProvider('http://localhost:8545')
const web3 = new Web3(customProvider);
// connected to the blockchain

web3.eth.getBlockNumber()
  .then(() => console.log('done'))