// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
import "./SimpleStorage.sol";
contract StorageFactory{
    SimpleStorage[] public simplearray;

    function createSimpleStorageContract() public{
        SimpleStorage simple=new SimpleStorage();
        simplearray.push(simple);

    }
    function sfstore(uint256 _index,uint256 _number) public {
        SimpleStorage simple=simplearray[_index];
        simple.store(_number);

    } 
    function sfGet(uint256 _index) public view returns(uint256){
        SimpleStorage simple=simplearray[_index];
        return simple.retrieve();
    }
}