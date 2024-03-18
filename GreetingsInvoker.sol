// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

interface IHelloWorld {
    function helloWorld() external view returns (string memory);

    function setText(string calldata newText) external;

    function potato(uint256 size) external returns (bool);

    function transferOwnership(address newOwner) external;
}


contract GreeingsInvoker {
    function invokeGreeting(address target) public view returns (string memory){
        return IHelloWorld(target).helloWorld();
    }

    function setGreeting(address target, string calldata newText) public {
        IHelloWorld(target).setText(newText);
    }

    function triggerFallback(address target) public {
        IHelloWorld(target).potato(42);
    }
}