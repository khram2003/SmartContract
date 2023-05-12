# SmartContract

I have chosen to complete the third task: `Currency exchange office`.

To deploy it you should install Remix IDE. Then create a folder and move two `.sol` files from this repository to it.

Compile them and deploy them using Remix.

## Deployment via Remix
1. Compile `ExchageOffice.sol` and `Token.sol`
2. Go to `Deploy & Run transactions` on the left bar (the fifth one from top)
3. Choose `Token.sol` at `CONTRACT (Compiled by Remix) field`
4. Input `VALUE` (e.g. 10 but less than the amount of Ether on your account)
5. Input `INITIAL SUPPLY` (e.g. 1000)
6. Click `transact`
7. Choose `ExchangeOffice.sol` at `CONTRACT (Compiled by Remix) field`
8. Click `transact`
9. Select `TUGRIK` at `Deployed Contracts`
10. Select allowance
11. Select `increaseAllownce`
12. In field `spender` input address of your `Currecy Exchange Office` contract
13. In field `addedValue` input e.g. 100
14. Now you can buy and sell tokens by entering its address 
15. Also you can set custom exchange rate
16. After all you can destroy contract by calling `destroySmartContract` function and passing `owner` address
