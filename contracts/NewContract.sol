pragma solidity >=0.5.0 <0.6.0;

contract Participants {
	// Event 
	event NewParticipant(string name, string profession, uint age);

	uint participantsNum = 500;
	uint activeParticipants = 50 ** participantsNum;

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
		// participants.push(ParticipantData(_name, _profession, _hobby, age));
		uint data = participants.push(ParticipantData(_name, _profession, age)) - 1;
		emit NewParticipant(data, name, profession, age);
	}

	function _activeParticipants (string memory _participants) private view returns (uint) {
		uint participant = uint(keccak256(abi.encodePacked(_participants)));
		return participant % activeParticipants;
	}

	function createActiveParticipants (string memory _name, string _memory _profession, string _hobby, uint age) public {
		uint create = _activeParticipants(_participants);
		createActiveParticipants(_name, _profession, _hobby, age, create);
	}
}