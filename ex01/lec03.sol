pragma solidity >= 0.7.0 < 0.9.0 ;

contract lec03{
    // 이더리움의 코인은 ETH 이더 라고 다들 알고 있을 거라 생각합니다.
    // 1 ether = 10^9 Gwei = 10^18 wei 
    // 1^18 wei 는 1 ether
    // 0.00000000000000001 ehter = 1 wei 

    // gas : 스마트 컨트렉을 사용할 때 지불하는 비용 ( Gwei )
    // 1ether = 10^9 Gwei 
    // 사용하고자 하는 스마트 컨트랙 안에 정의된 코드의길이에 따라 가스 비용이 책정됩니다.
    // 길이가 짧을수록 소비되는 가스가 적어지죠

    // 이더리움에서 제공하는 옐로우 페이퍼를 보면, 어떤 내장기능을 사용하냐에 따라 가스 소비량을 계산할 수 있답니다.  

    uint256 public value1 = 1 ether;   //  10 ^ 18승
    uint256 public value2 = 1 wei;     //  1
    uint256 public value3 = 1 gwei;    //  10 ^ 9승

}
