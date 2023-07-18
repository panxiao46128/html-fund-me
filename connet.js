const Web3 = require('web3');

// 连接到以太坊网络
const alchemy_url = 'https://eth-mainnet.alchemyapi.io/v2/your_alchemy_key';
const web3 = new Web3(alchemy_url);

// Uniswap V2 Pair 合约地址及其ABI
const address = '0x0d4a11d5eeaac28ec3f61d100daf4d40471f1852';
const abi = '[{"constant":true,"inputs":[],"name":"getReserves","outputs":[{"internalType":"uint112","name":"_reserve0","type":"uint112"},{"internalType":"uint112","name":"_reserve1","type":"uint112"},{"internalType":"uint32","name":"_blockTimestampLast","type":"uint32"}],"payable":false,"stateMutability":"view","type":"function"}]';

// 创建合约对象
const contract = new web3.eth.Contract(JSON.parse(abi), address);

// 调用getReserves函数
contract.methods.getReserves().call((error, result) => {
    if (!error) {
        const reserve_eth = result._reserve0 / (10 ** 18);   // reserve0 是 ETH 的储备量
        const reserve_usdt = result._reserve1 / (10 ** 6);    // reserve1 是 USDT 的储备量

        const eth_price = reserve_usdt / reserve_eth;

        console.log('The reserve of ETH in the pair is:', reserve_eth);
        console.log('The reserve of USDT in the pair is:', reserve_usdt);
        console.log('The price of ETH in terms of USDT is:', eth_price);
    } else {
        console.log(error);
    }
});
