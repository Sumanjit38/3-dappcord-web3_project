// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Dappcord is ERC721 {
    uint256 public totalChannels = 0;
    address public owner;

    // Define a Channel
    struct Channel {
        uint256 id;
        string name;
        uint256 cost;
    }

    mapping(uint256 => Channel) public channels;

    constructor(string memory _name, string memory _symbol) 
        ERC721(_name, _symbol){
            owner = msg.sender;
    }

    function createChannel(string memory _name, uint256 _cost) public {
 
        // Create a Channel
        totalChannels++;
        channels[totalChannels] = Channel(totalChannels, _name, _cost);
    }
}
