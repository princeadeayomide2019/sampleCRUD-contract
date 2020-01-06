pragma solidity >=0.4.22 <0.6.0;

import "./externalStorager.sol";

contract ContractUpgrader is ExternalStorager{
    
    address grandMaster = msg.sender; 
    address newMaster;

    modifier onlyGrandMaster() {
       require(msg.sender == newMaster, "Only Owner is allowed.");
        _;
    }
    function resetGrandMaster(address _newMaster) external returns(address){
        require(msg.sender == grandMaster, "Only grandMaster is allowwed");
        newMaster = _newMaster;
    }

    function setInstructors(address _member, string memory _instructorName) public onlyGrandMaster returns(bool){
        Instructor memory __instructor;
        __instructor.name = _instructorName;
        instructors[_member] = __instructor;
        return true;
    }
    function deleteInstructors(address _member, string memory _instructorName) public onlyGrandMaster returns(bool){
        Instructor memory  __instructor;
        __instructor.name = _instructorName;
        instructors[_member] = __instructor;
        return false;
    }
    
    
    
}
