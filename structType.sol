//SPDX-License-Identifier : MIT
pragma solidity ^0.8.0;

contract structContract {
    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string memory _text) public {
        
        //call like a function-push data to struct array
        todos.push(Todo(_text, false));

        // assigne in dictionary (key value pair) format
        todos.push(Todo({text:_text, completed:false}));

        Todo memory todo;
        todo.text = _text;
        //todo.completed = false;
        
        
        todos.push(todo);
    }

    function get(uint _index) public view returns(string memory text, bool completed){
        Todo storage todo = todos[_index];
        return(todo.text, todo.completed);

    }

    function update(uint _index, string memory _text, bool _bool) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
        todo.completed = _bool;

    }
}