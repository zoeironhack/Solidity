pragma solidity 0.8.1;

contract EthLove{
    
    string message;
    
    constructor(string memory _message){
        message= _message;
        } //sets message string to whatever the user inputs
    
    function printer(string memory) public returns(string memory){
        return message;
    }
}


// function with if-else statement

function hello(int number) public view returns(string memory){
    if(number==10){
        return message;
    }
    else{
        return "wrong number";
    }
}

function transaction() public view returns(string memory){
    if(msg.sender==0x7287487489721984798127410){
        return message;
    }
    else{
        return "wrong address";
    }
}

//while loop

function count(int number) public pure returns(int){
    int i =0;
    while (i<10){
        number++;
        i++;
    }
    return number;
}

// for loop
function count(int number)public pure returns(int){
    for(int i=0;i<10;i++){
        number++;
    }
    retutn number;
}


// arrays

int[] numbers; // inside the [] goes the length of arrays
function addNumber(int _number) public{
    numbers.push(_number);
}

function getNumber(uint _index) public returns(int){
    return numbers[_index]  //needs uint because negative indexing is not available
}

//if u want to return the entire array
function getNumber(uint _index) public returns(int[] memory){
    return numbers;


// adding items to an array: arrayname.push(item)
struct Person{
    uint age;
    string name;
} //determines the structure of the object Person

Person[] people;
function addPerson(uint _age, string memory _name) public{
    Person memory newPerson(30,"Bob");
    people.push(newPerson);
}

function getPerson(uint _index) public view returns(uint, string memory{
    Person memory personToGet = people[_index];
    return(personToGet.age,personToGet.name)
}
