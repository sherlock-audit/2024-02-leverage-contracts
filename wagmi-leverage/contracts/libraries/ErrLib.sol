// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

library ErrLib {
    enum ErrorCode {
        INVALID_BORROWING_KEY, // 0
        LIQUIDITY_IS_ZERO, // 1
        TOO_BIG_MARGIN_DEPOSIT, // 2
        TOO_OLD_TRANSACTION, // 3
        FORBIDDEN, // 4
        COLLATERAL_AMOUNT_IS_NOT_ENOUGH, // 5
        TOO_MANY_LOANS_PER_POSITION, // 6
        LOANS_IS_EMPTY, // 7
        PRICE_SLIPPAGE_CHECK, // 8
        ERC20_APPROVE_DID_NOT_SUCCEED, // 9
        SWAP_TARGET_NOT_APPROVED, // 10
        INVALID_SWAP, //11
        INVALID_CALLER, //12
        UNEXPECTED_CHANGES, //13
        TOO_BIG_DAILY_RATE, //14
        UNACCEPTABLE_SQRT_PRICE, //15
        SWAP_TARGET_ADDRESS_IS_ZERO, //16
        INTERNAL_SWAP_POOL_REQUIRED //17
    }

    error RevertErrorCode(ErrorCode code);

    /**
     * @dev Reverts with a custom error message based on the provided condition and error code.
     * @param condition The condition to check for reverting.
     * @param code The ErrorCode representing the specific error.
     */
    function revertError(bool condition, ErrorCode code) internal pure {
        if (condition) {
            revert RevertErrorCode(code);
        }
    }
}
