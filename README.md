
# Leverage Contracts contest details

- Join [Sherlock Discord](https://discord.gg/MABEWyASkp)
- Submit findings using the issue page in your private contest repo (label issues as med or high)
- [Read for more details](https://docs.sherlock.xyz/audits/watsons)

# Q&A

### Q: On what chains are the smart contracts going to be deployed?
mainnet,Fantom,Optimism, Arbitrum, ZKera, Polygon, Binance Smart Chain, KAVA, Metis Andromeda
___

### Q: Which ERC20 tokens do you expect will interact with the smart contracts? 
Any tokens UniswapV3 supports.
___

### Q: Which ERC721 tokens do you expect will interact with the smart contracts? 
UNI-V3-POS
___

### Q: Do you plan to support ERC1155?
no
___

### Q: Which ERC777 tokens do you expect will interact with the smart contracts? 
none
___

### Q: Are there any FEE-ON-TRANSFER tokens interacting with the smart contracts?

no
___

### Q: Are there any REBASING tokens interacting with the smart contracts?

no
___

### Q: Are the admins of the protocols your contracts integrate with (if any) TRUSTED or RESTRICTED?
TRUSTED
___

### Q: Is the admin/owner of the protocol/contracts TRUSTED or RESTRICTED?
TRUSTED
___

### Q: Are there any additional protocol roles? If yes, please explain in detail:
1) operator
2) updateHoldTokenDailyRate , updateHoldTokenEntranceFee

3) Daily rate operator has the ability to set interest rates for daily rates for the pool


___

### Q: Is the code/contract expected to comply with any EIPs? Are there specific assumptions around adhering to those EIPs that Watsons should be aware of?
no
___

### Q: Please list any known issues/acceptable risks that should not result in a valid finding.
no
___

### Q: Please provide links to previous audits (if any).
https://github.com/RealWagmi/wagmi-leverage/tree/main/audit
___

### Q: Are there any off-chain mechanisms or off-chain procedures for the protocol (keeper bots, input validation expectations, etc)?
yes 
Offchain mechanisms are:

Operator which will set daily rate in accordance with offchain formula which is taking volatility of the pair account when finding applicable desired rate.

Bots will parse and save approved nfts calculate liquidity and provide info on them for the frontend to select which particular nfts to dismantle
___

### Q: In case of external protocol integrations, are the risks of external contracts pausing or executing an emergency withdrawal acceptable? If not, Watsons will submit issues related to these situations that can harm your protocol's functionality.
not acceptable
___

### Q: Do you expect to use any of the following tokens with non-standard behaviour with the smart contracts?
tokens compatible with Uniswap V3 only
___

### Q: Add links to relevant protocol resources
n/a
___



# Audit scope


[wagmi-leverage @ ca5e13121e2612c3961e51ed0b976ee8e5bae471](https://github.com/RealWagmi/wagmi-leverage/tree/ca5e13121e2612c3961e51ed0b976ee8e5bae471)
- [wagmi-leverage/contracts/LightQuoterV3.sol](wagmi-leverage/contracts/LightQuoterV3.sol)
- [wagmi-leverage/contracts/LiquidityBorrowingManager.sol](wagmi-leverage/contracts/LiquidityBorrowingManager.sol)
- [wagmi-leverage/contracts/abstract/ApproveSwapAndPay.sol](wagmi-leverage/contracts/abstract/ApproveSwapAndPay.sol)
- [wagmi-leverage/contracts/abstract/DailyRateAndCollateral.sol](wagmi-leverage/contracts/abstract/DailyRateAndCollateral.sol)
- [wagmi-leverage/contracts/abstract/LiquidityManager.sol](wagmi-leverage/contracts/abstract/LiquidityManager.sol)
- [wagmi-leverage/contracts/abstract/OwnerSettings.sol](wagmi-leverage/contracts/abstract/OwnerSettings.sol)
- [wagmi-leverage/contracts/libraries/ExternalCall.sol](wagmi-leverage/contracts/libraries/ExternalCall.sol)


