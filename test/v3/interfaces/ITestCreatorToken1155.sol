// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "src/interfaces/ICreatorToken.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";

interface ITestCreatorToken1155 is IERC1155, ICreatorToken {
    function DEFAULT_TRANSFER_VALIDATOR() external view returns (address);

    function mint(address, uint256, uint256) external;
    function setTransferValidator(address transferValidator_) external;
    function setToDefaultSecurityPolicy() external;

    function setToCustomValidatorAndSecurityPolicy(
        address validator,
        TransferSecurityLevels level,
        uint120 operatorWhitelistId,
        uint120 permittedContractReceiversAllowlistId
    ) external;

    function setToCustomValidatorAndSecurityPolicy(
        address validator,
        TransferSecurityLevels level,
        uint120 listId
    ) external;

    function setToCustomSecurityPolicy(
        TransferSecurityLevels level,
        uint120 listId
    ) external;

    function setAutomaticApprovalOfTransfersFromValidator(bool autoApprove) external;
}
