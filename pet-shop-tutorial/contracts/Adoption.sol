pragma solidity ^0.4.17;

contract Adoption {

address[100] public adopters;

// Adopting a pet
function adopt(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 99);

  adopters[petId] = msg.sender;

  return petId;
  
}

// Retrieving the adopters
function getAdopters() public view returns (address[100]) {
  return adopters;
}



}
