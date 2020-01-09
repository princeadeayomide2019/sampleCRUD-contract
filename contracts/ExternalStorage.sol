pragma solidity >=0.4.22 <0.6.0;

contract ExternalStorage{
    
    struct TodoList{
        string title;
        string body;
    }

    address owner;
    mapping(address => TodoList) public list;
    event itemAdded(string title, string content);
    event itemDeleted(address _item);
}
