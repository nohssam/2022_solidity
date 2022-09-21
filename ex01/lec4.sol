pragma solidity >= 0.7.0 < 0.9.0 ;

contract lec4{
    
    // function 이름([인자]) 접근제한자{  내용  }
    // 접근제한자 (public, private, internal, external )

    // function의 유형
    // 1. Parameter 와 Return 값이 없는  function 정의
    // 2. Parameter는 있고,  Return 값이 없는 function 정의
    // 3. Parameter는 있고,  Return 값이 있는 function 정의

    uint256 public a = 3;

    function changeA1() public{
        a = 5 ;
    }
    
    function changeA2(uint256 value1) public{
        a = value1 ;
    }

     function changeA3(uint256 value1) public returns(uint256){
        a = value1 ;
        return a;
    }
}
