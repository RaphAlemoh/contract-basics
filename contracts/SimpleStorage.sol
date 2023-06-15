// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    //boolean, uint, int, address, bytes
    //default value in solidity 0 for defined variable

    //access modifier for function is internal
    uint256 public favouriteNumb;

    // People public person = People({favouriteNumb: 2, name: "rapheal"});

    mapping (string => uint256) public nameToFav;

    struct People {
        uint256 favouriteNumb;
        string name;
    }

    People[] public people;

    function store(uint256 _favNumb) public virtual {
        favouriteNumb = _favNumb;
    }

    //0xd9145CCE52D386f254917e481eB44e9943F39138
    function retrieve() public view returns (uint256) {
        return favouriteNumb;
    }

    function addPerson(string memory _name, uint256 _favNumber) public {
        people.push(People(_favNumber, _name));
        nameToFav[_name] = _favNumber;
    }
 
}
