pragma solidity 0.8.20;
contract PabloPasswordTest {
  string public private_password;
  constructor(string memory _password) public {
    private_password = _password;
  }
  function isCorrectPassword(string memory _password) external view returns (bool) {
    return (keccak256(abi.encodePacked((private_password))) == keccak256(abi.encodePacked((_password))));
  }
}