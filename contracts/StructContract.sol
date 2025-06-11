//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract StructContract {
    struct Person {
        string name;
        uint256 age;
    }
    enum Choices {Yes, No, Maybe}
    struct Vote{
        Choices choice;
        address voter;
    }
    Vote public vote;
    Person[] public people;

    // Function to set a vote
    function setVote(Choices _choice) external {
        vote.choice = _choice;
        vote.voter = msg.sender;
        
        // Alternatively, you can create a new Vote instance
        // vote=Vote(_choice, msg.sender);
    }

    // Function to add a person to the array
    function addPerson(string memory _name, uint256 _age) public {
        people.push(Person(_name, _age));
    }

    // Function to get the total number of people
    function getTotalPeople() public view returns (uint256) {
        return people.length;
    }

    // Function to get a person's details by index
    function getPerson(uint256 _index) public view returns (string memory, uint256) {
        require(_index < people.length, "Index out of bounds");
        Person memory person = people[_index];
        return (person.name, person.age);
    }

}