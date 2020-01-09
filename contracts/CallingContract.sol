pragma solidity >=0.4.22 <0.6.0;
import "./ExternalStorage.sol";

contract TodoDapp is ExternalStorage{
    modifier onlyOwner(){
        require(msg.sender == owner, "Only owner can delete a list");
        _;
    }
   function addTodo(string memory _title, string memory _content) public returns (bool){
        TodoList memory _structTodoList;
        _structTodoList.title = _title;
        _structTodoList.body = _content;
        list[msg.sender] = _structTodoList;
        emit itemAdded(_title, _content);
        return true;
    }
    
    function getList(address _list) public view returns(string memory title, string memory content){
        return (title = list[_list].title,
        content = list[_list].body);
        
    }
    
    function deleteTodo(address _list) public onlyOwner {
        delete list[_list];
        emit itemDeleted(_list);
    }
}