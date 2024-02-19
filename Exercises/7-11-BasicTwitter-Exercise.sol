// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Create a Twitter Contract 
// 2️⃣ Create a mapping between user and tweet 
// 3️⃣ Add function to create a tweet and save it in mapping
// 4️⃣ Create a function to get Tweet 
// 5️⃣ Add array of tweets 

contract Twitter {
    mapping(address => string[]) private tweets;

    function createTweet(string memory tweet) external {
        tweets[msg.sender].push(tweet);
    }

    function getTweet(uint256 index) external view returns (string memory) {
        require(
            index + 1 <= tweets[msg.sender].length,
            "There is content with this value."
        );

        return tweets[msg.sender][index];
    }

    function getAllTweets() external view returns (string[] memory) {
        return tweets[msg.sender];
    }
}
