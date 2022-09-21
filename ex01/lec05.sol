pragma solidity >= 0.7.0 < 0.9.0 ;

contract lec05{
    // 접근제한자
    /*
       public    : 모든 곳에서 접근 가능
       exteranl  : public 처럼 모든곳에서 접근 가능하나, exteranl이 정의된 자기 자신 컨트랙 내에서 접근 불가
       private   : 오직 private이 정의된 자기 컨트랙에서만 가능( private이 정의된 컨트랙을 상속 받은 자식도 불가능)
       internal  : private 처럼 오직 internal 이 정의된 자기 컨트랙에서만 가능하고,  internal이 정의된 컨트랙을 상속

       **  접근제한자는 변수에도 사용 가능
    */

     // 1. public
     uint256 public a1 = 5 ;

     // 2. private
     uint256 private a2 = 5 ;


}

contract public_exam_01{
    // 2-2. public => external 변경 하면 실패 이유 (exteranl이 정의된 자기 자신 컨트랙 내에서 접근 불가)
    uint256 public result = 3 ;
    
    // 1. 배포 성공 후 public => private 변경 하면 오류 발생 
    // 2-1. 배포 성공 후 public => external 변경 하면 성공 
    function setEx01(uint256 value01) public{
        result = value01;
    }
    
    // view 와 pure는  접근 제한자 앞 이나 뒤 어디든 붙이면 되요.
    // 1.view :  storage state 를 읽을 수 있지만, 그 state 값을 변경할 수 없다.
    // 2.pure : storage state 를 읽으면 안되고, 그 state값을 변경할 수 도 없다.
    function getEx01() view public returns(uint256){
        return result;
    }
}

contract public_exam_02{
    
    public_exam_01  inst = new public_exam_01();

    function setEx02(uint256 value02) public{
        inst.setEx01(value02);
    }
    function getEx02() view public returns(uint256){
        return inst.getEx01();
    }
}
