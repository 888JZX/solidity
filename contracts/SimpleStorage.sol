// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract SimpleStorage{
   uint256 number;
   struct People{
    string name;
    uint256 number;
   } 
   People[] public people;
    mapping(string=>uint256) public nametonum;
   function store(uint256 n) public virtual{
     number=n;
   }
   function retrieve() public view returns(uint256){
    return number;
   }
 

   function addPerson(string memory _name,uint256 _number) public{
    people.push(People(_name,_number));
    nametonum[_name]=_number;

   }




}