import { Button } from "antd";
import { Contract } from "ethers";

import './../'





function App (props) {
 function handleFirstNumElements(){
  Contract.methods.firstNumElements().call().then(function(num){
    return 
    <ul>
      <li key={num}>{num}</li>
    </ul>
  })
 }

 function handleLastNumElements(){
  Contract.methods.lastNumElements().call().then(function(num){
    return 
    <ul>
      <li key={num}>{num}</li>
    </ul>
 })
}

 function handleSendBalanceToTheOwner(){
  Contract.methods.balanceToOwner().call().then(function(bal){
    return bal
 })
}
return (
  <div>
    <ul>
      {firstNum}
    </ul>
    <input type="number"></input>
    <input></input>
    <input></input>


    <div className="button">
      <Button type="button" onClick={handleFirstNumElements}>firstNum</Button>
      <Button type="button" onClick={handleLastNumElements}>LastNum</Button>
      <Button type="button" onClick={handleSendBalanceToTheOwner}>Send Balance</Button>

    </div>
  </div>
  
)
}
export default App;
