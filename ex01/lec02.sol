pragma solidity >= 0.7.0 < 0.9.0 ;
 // 데이터타입, 레퍼런스 타입, 매핑 타입
 // 데이터 타입
 // solidity에는 기본적으로 boolean, string, bytes, Integer ,address 라는 변수들이 대표적으로 있습니다. 
contract lec02{
    // 데이터 타입 접근제한자 변수명 = 데이터
    bool public b = false;
    bool public b1 = !false;
    bool public b2 = false == true ;  // 같냐?
    bool public b3 = false && true ;  // and
    bool public b4 = false || true ;  // or

    // 3. bytes : 솔리디티는 byte1 ~ byte32 까지 존재합니다. 
    // 뒤에 숫자에따라 byte의 크기 가 정해집니다. 예를들어서 byte32 로 쓰신다면 길이가 32
    bytes4 public bt = 0x12345678;  // 하나당 4bit
    bytes public bt2 = "STRING";    // 크기를 모를 때 (String이 byte화 됨)

    //4. Integer : Integer 는 두가지 타입으로 나뉘어요
    //   int : 기호있는 integer
    //   uint:  기호없는 integer 
    //   int8 : -2^7 ~ 2^7-1
    //   int16: -2^15~2^15-1
    //   int32: -2^31~2^31-1
    //   int64: -2^63~2^63-1
    //   int128 : -2^127~2^127-1
    //   int256 (=int): -2^255~2^255-1

    int8 public it = 4 ;
    int8 public it2 = 102;

    // uint:  기호없는 integer 
    // uint8 : 0~2^8-1
    // uint16: -0~2^16-1
    // uint32: -0~2^32-1
    // uint64: -0~2^64-1
    // uint128 : -0~2^128-1
    // uint256 (=uint): 0~2^256-1
    uint256 public uit = 132213;

   
    // 5. address : 이더를 송수신 할때 주소를 이용, 스마트 켄트렉트를 배포할 때도 어드레스가 발생한다.
    // address : address는 20 bytes 의 길이 인데요. 
    // address 는 문자 그대로 주소를 나타내요,
    // 예를들어 스마트컨트랙을 배포한다 할 때, 배포된 스마트 컨트랙은 주소를 얻어요.
    // 이와 마찬가지로, 디지털 지갑의 계정마다 각자의 주소를 할당 받아요.
    // 주소란 저희는 이 주소를 통해서, 디지털 코인을 보내기도하고, 스마트 컨트랙을 불러오기도 한답니다.
    // 그러면, 쉽게 생각하면, 주소란 이더 같은 디지털 코인을 주고 받는 은행 계좌번호정도 라고 일단 생각하시면 되요.
    // 저희가 이더리움을 보내기 위해서는 주소 payable 이라는 녀석을 붙여야합니다.
    address public addr = 0xd9145CCE52D386f254917e481eB44e9943F39138;


}

