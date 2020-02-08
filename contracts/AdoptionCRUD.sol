
pragma solidity < 0.7.10;
import ./'externalAdoptionStorage.sol';
contract Adoption is externalStorage {
   // Adoption a pet
   //SETTER,CREATING AND UPDATING FUNCTION
   function adopt(uint petId) public returns (uint) {
       require(petId >= 0 && petId <= 15,'An adopter cannot adopt more than 16 pets');
       adopters[petId] = msg.sender;
       return petId;
   }

   // Retrieving the adopters
   //READ FUNCTION
   
      function getAdopters(uint id) public view returns(address) {
       return adopters[id];
   }
   
   function deletePet(uint id) public {
       require(id > 15,'You have not reach your limit of pet adoption');
       delete adopters[id];
    }
}
