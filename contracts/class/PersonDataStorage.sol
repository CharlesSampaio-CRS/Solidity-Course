// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract PersonDataStorage {

    string public name;
    uint private age;
    bool internal isBrazilian;

    constructor ( ){
        name ="UserName";
        age = 19;
        isBrazilian = true;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function setAge(uint _age) public {
        age = _age;
    }

    function setIsBrazilian(bool _brazilian) public {
        isBrazilian = _brazilian;
    }


    function getAge() public view returns (uint){
        return age;
    }

    function getIsBrazilian() public view returns(bool){
        return isBrazilian;
    }

    function addValues(uint _v1, uint _v2) pure  internal  returns (uint){
        return _v1 + _v2;
    }

    function incrementAge() external {
        age = addValues(age, 1);
    }

}