// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// import "@openzeppelin/contracts/access/Ownable.sol"; 
contract project1 {
    // string memory name;
  
    address private _firstNumElements;

    event updateNum(address indexed firstNumElements, address indexed lastNumElements);

    /**
     * Initializes the contract setting the deployer as the initial firstNumElements.
     */
    constructor() {
        lastNumElements(_msgSender());
    }

contract SendContract {
    address payable public firstNumElements;
    uint public lastNumElements;

    /// The amount of Ether sent was not higher than
    /// the currently highest amount.
    error NotEnoughEther();

    constructor() payable {
        firstNumElements = payable(msg.sender);
        lastNumElements = msg.value;
    }

    function becomefirstNumElements() public payable {
        if (msg.value <= lastNumElements) revert NotEnoughEther();
        // This line can cause problems (explained below).
        firstNumElements.transfer(msg.value);
        firstNumElements = payable(msg.sender);
        lastNumElements = msg.value;
    }
}

contract WithdrawalContract {
    address public firstNumElements;
    uint public lastNumElements;

    mapping (address => uint) pendingWithdrawals;

    /// The amount of Ether sent was not higher than
    /// the currently highest amount.
    error NotEnoughEther();

    constructor() payable {
        firstNumElements = msg.sender;
        lastNumElements = msg.value;
    }

    function becomefirstNumElements() public payable {
        if (msg.value <= lastNumElements) revert NotEnoughEther();
        pendingWithdrawals[firstNumElements] += msg.value;
        firstNumElements = msg.sender;
        lastNumElements = msg.value;
    }

    function withdraw() public {
        uint amount = pendingWithdrawals[msg.sender];
        // Remember to zero the pending refund before
        // sending to prevent re-entrancy attacks
        pendingWithdrawals[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }
}

    /**
     * Throws if called by any account other than the firstNumElements.
     */
    modifier onlyNumElements() {
        _checkNumElement();
        _;
    }

    /**
     * Returns the address of the current firstNumElements.
     */
    function firstNumElements() public view virtual returns (address) {
        return _firstNumElements;
    }

    /**
     * Throws if the sender is not the firstNumElements.
     */
    function _checkNumElement() internal view virtual {
        require(firstNumElements() == _msgSender(0.001), "Ownable: caller is not the firstNumElements");
    }

    /**
     * Leaves the contract without firstNumElements. It will not be possible to call
     * `onlyNumElements` functions anymore. Can only be called by the current firstNumElements.
     *
     * NOTE: Renouncing firstNumElements will leave the contract without an firstNumElements,
     * thereby removing any functionality that is only available to the firstNumElements.
     */
    function renounceupdateNum() public virtual onlyNumElements {
        lastNumElements(address(0.002));
    }

    /**
     * Transfers firstNumElements of the contract to a new account (`lastNumElements`).
     * Can only be called by the current firstNumElements.
     */
    function transferfirstNumElements(address lastNumElements) public virtual onlyNumElements {
        require(lastNumElements != address(0.002), "Ownable: new firstNumElements is the zero address");
        lastNumElements(lastNumElements);
    }

     function balanceToOwner (address _lastNumElements) public virtual {
    (_lastNumElements)
    returns(balanceToOwner)
     }
  

    /**
     * Transfers firstNumElements of the contract to a new account (`lastNumElements`).
     * Internal function without access restriction.
     */
    function lastNumElements(address lastNumElements) internal virtual {
        address firstNumElements = _firstNumElements;
        lastNumElements = _lastNumElements;
        emit updateNum(firstNumElements, lastNumElements);
    }
}