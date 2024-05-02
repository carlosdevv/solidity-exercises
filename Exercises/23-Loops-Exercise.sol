// SPDX-License-Identifier: MIT

// 1️⃣ Create a loop to calcualte all expenses for the user
// HINT: Create a total expenses variable with uint type
// HINT: Loop over expenses array with for loop
// HINT: add up all expenses cost
// HINT: return total expenses

pragma solidity ^0.8.0;

contract ExpenseTracker {
    struct Expense {
        address user;
        string description;
        uint256 amount;
    }

    uint256 totalExpenses;
    Expense[] public expenses;

    constructor() {
        expenses.push(Expense(msg.sender, "Groceries", 50));
        expenses.push(Expense(msg.sender, "Transportation", 30));
        expenses.push(Expense(msg.sender, "Dining out", 25));
    }

    function addExpense(string memory _description, uint256 _amount) public {
        expenses.push(Expense(msg.sender, _description, _amount));
    }

    function getTotalExpenses(address _user) public view returns (uint256) {
        uint256 total;

        for (uint256 i = 0; i < expenses.length; i++) {
            if (expenses[i].user == _user) {
                total += expenses[i].amount;
            }
        }

        return total;
    }
}
