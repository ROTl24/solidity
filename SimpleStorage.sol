//SPDX-License-Identifier: UNLICENSED
//SPDX-License-Ldentifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    //boolean,uint,int ,address,bytes
    //bool hasFavoriteNumber = true;
    //string favoriteNumberText = "FIve";
    //bytes32 favoriteNumberTexta = "FIve";

    //uint256 public favoriteNumber;//

    //会以0初始化变量
    //public 使他可见了
    uint256  favoriteNumber;

    mapping (string=>uint256) public nameToFavoriteNumber;



    struct People{
        uint256 favoriteNumber;
        string name;
    }
    //定义结构体;

    //People public person = People({favoriteNumber: 2,name: "zhangsan"});
    //结构体变量person
    People[] public people;
    //初始化这个人数组的时候，没有规定他的大小，即目前是动态数组。
    function store(uint256 _favoriteNumber) public{
        favoriteNumber=_favoriteNumber;
    }
    function retrieve() public view returns(uint256){
        return favoriteNumber; 
    }


    function addPerson (string memory _name, uint256 _favoriteNumber)public {
        People memory newPerson = People(_favoriteNumber, _name);
        people.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
    
    //storage 定义储存变量,可以被修改的永久变量
    //calldata 不能被修改的临时变量
    //memory 可以被修改的临时变量

      
    //把People对象push进People数组的方法
}
//0xd9145CCE52D386f254917e481eB44e9943F39138
//每个合约都有一个地址
//部署一个合约其实就是发送一个交易
//做越多的操作，小号更多的gase