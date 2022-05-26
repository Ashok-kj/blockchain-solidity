//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

contract Enum{

    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }

    Status public status;

    function get() public view returns(Status){
        return status;
    }

    function set( Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Cancelled;
    }

    function shipped() public {
        status = Status.Shipped;
    }

    function accepted() public {
        status = Status.Accepted;
    }
}
