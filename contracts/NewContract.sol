pragma solidity >=0.5.0 <0.6.0;

contract Participants {
	uint participantsNum = 500;
	uint 

	struct ParticipantData {
		string name;
		string profession;
		string hobby;
		uint age;
	}
	// Dynamic Array to keep record growing
	ParticipantData[] public participants;

	// This function create new participants' info
	function createNewParticipant (string memory _name, string memory _profession, string _hobby, uint age) public {
		participants.push(ParticipantData(_name, _profession, _hobby, age));
	}
}