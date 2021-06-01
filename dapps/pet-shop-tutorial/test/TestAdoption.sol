pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
    // the address of the adoption contract to be tested
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    // testing the adopt() function
    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(expectedPetId);

        Assert.equal(returnedId, expectedPetId, "adoption of the expected should match");
    }

    // testing retrieval of a single pets owner
    function testGetAdopterAddressByPetId() public {
        address adopter = adoption.adopters(expectedPetId);

        Assert.equal(adopter, expectedAdopter, "owner of expected pet");
    }

    function testGetAdopterAddressByPetIdInArray() public {
        // store adopters in memory rather contract
        address[16] memory adopters = adoption.getAdopters();

        Assert.equal(adopters[expectedPetId], expectedAdopter, "owner of the expected pet should be this contract");
    }

    // the id of the pet that will be used for testing
    uint expectedPetId = 8;

    // the expected owner of adoption pet is this contract
    address expectedAdopter = address(this);
}