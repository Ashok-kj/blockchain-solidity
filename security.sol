//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract WETHMarket {
    IERC20 public weth;
    mapping(address => uint256) public balanceOf;

    constructor(IERC20 _weth) public {
        weth = _weth;
    }

    function buyFrom(address seller) external payable {
        balanceOf[seller] += msg.value;
        require(weth.transferFrom(seller, msg.sender, msg.value), "WETH TRANFER FAILED");
    }

    function withdraw(uint256 amount) external {
        require(amount <=  balanceOf[msg.sender], "Insufficient funds");

        // we are not deducting the sellers balance.

        (bool success, ) = msg.sender.call.value(amount)("");
        require(success, "ETH TRANSFER FAILED");
    }
}


contract WETHSale{
    IERC20 public weth;
    address seller;
    uint256 public balance;

    constructor(IERC20 _weth, address _seller) public {
        weth = _weth;
        seller = _seller;
    }

    function buy() external payable {
        balance += msg.value;
        require(weth.trasferFrom(seller, msg.sender, msg.value));
    }

    function withdraw(uint256 amount) external {
        require(msg.sender == seller, "Only the seller can withdraw");
        require(amount <= balance, "Insufficient funds");

        uint256 amount = balance;

        balance -= amount;

        (bool success, ) = msg.sender.call.value(amount)("");
        require(success, "ETH TRANSFER FAILED");
    }
}

contract Factory {
    IERC20 public weth;
    mapping(address => WETHSale) public sales;

    constructor(IERC20 _weth) public {
        weth = _weth;
    }

    function deploy() external {
        require(sales[msg.sender] == WETHSale(0), "only one sale per seller");
        sales[msg.seller] = new WethSale(weth, msg.sender);
    }
}