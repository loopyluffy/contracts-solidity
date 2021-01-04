// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.6.12;
import "../../converter/interfaces/IConverterAnchor.sol";
import "../../token/interfaces/IDSToken.sol";
import "../../token/interfaces/IERC20Token.sol";

/*
    Liquidity Protection Stats interface
*/
interface ILiquidityProtectionStats {
    function increaseTotalAmounts(
        address _provider,
        IDSToken _poolToken,
        IERC20Token _reserveToken,
        uint256 _poolAmount,
        uint256 _reserveAmount
    ) external;

    function decreaseTotalAmounts(
        address _provider,
        IDSToken _poolToken,
        IERC20Token _reserveToken,
        uint256 _poolAmount,
        uint256 _reserveAmount
    ) external;

    function resetTotalAmounts(
        address _provider,
        IDSToken _poolToken,
        IERC20Token _reserveToken
    ) external;
}