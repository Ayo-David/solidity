// SPDX-License-Identifier: MIT
//pragma solidity >=0.4.21 <0.7.0;
pragma experimental ABIEncoderV2;

contract Users {
    string[] users;

    function addUser(string memory username) public {
        users.push(username);
    }

    function updateUser(uint256 userIndex, string memory newUsername)
        public
        returns (bool)
    {
        if (users.length > userIndex) {
            users[userIndex] = newUsername;

            return true;
        }
        return false;
    }

    function deleteUser(uint256 userIndex) public returns (bool) {
        if (users.length > userIndex) {
            for (uint256 i = userIndex; i < users.length - 1; i++) {
                users[i] = users[i + 1];
            }
            users.pop();
            return true;
        }
        return false;
    }

    function getUsers() public view returns (string[] memory) {
        return users;
    }
}
