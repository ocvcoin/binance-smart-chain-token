// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "./@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./@openzeppelin/contracts/access/Ownable.sol";
import "./@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";
import "./@openzeppelin/contracts/token/ERC20/extensions/ERC20FlashMint.sol";

/// @custom:security-contact security@ocvcoin.com
contract WrappedOcvcoin is ERC20, Ownable, ERC20Permit, ERC20FlashMint {
    constructor() ERC20("Wrapped Ocvcoin", "WOCV") ERC20Permit("Wrapped Ocvcoin") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
    
	function multiMint(bytes memory to_paddr ) public onlyOwner {	   
	   _multiMint(to_paddr);
    }      
    
}
