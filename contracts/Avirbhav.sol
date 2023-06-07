// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Avirbhav{

 address public admin;


 mapping (string => int)  public  teams;


     modifier onlyAdmin(){

         require(msg.sender == admin);
         _;
     }

     constructor (address _admin) public{

         admin = _admin;
         initializeTeams();

     }  

     
    function initializeTeams() private {
       teams["jal"] = 0;
       teams["vayu"] = 0;
       teams["agni"] = 0;
       teams["nandi"] = 0;
    }  

    function updateScore(string memory _name, int _score)public onlyAdmin {

        teams[_name] += _score;
    } 

    function getScore(string memory _name)public view returns(int){

        return teams[_name];

    }

}