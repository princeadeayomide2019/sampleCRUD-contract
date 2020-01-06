pragma solidity >=0.4.22 <0.6.0;

contract ExternalStorager{
    


    struct Instructor{
        string name;
        bytes subject;
        
    }
    
    mapping (address => Instructor) instructors;
    address[] instructorsAcc;
    
    
}
