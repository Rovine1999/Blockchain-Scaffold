import { Button } from "antd";
import {useEffect, useRef, useState } from "react";



import './App.css';





function App (props) {
  const myRef = useRef(["Lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipiscing", "elit", "sed", "do"])

  const [num, setNum]= useState(null);
  useEffect(() => {
    setNum(2);
  }, []);

function onChangeHandler(evt){
  evt.preventDefault()
  setNum(evt.target.value)
}

function handleAddItem(evt){
  evt.preventDefault()
  const words = [
    "Got",
    "ability",
    "shop",
    "recall",
    "fruit",
    "easy",
    "dirty",
    "giant",
    "shaking",
    "ground",
    "weather",
    "lesson",
    "almost",
    "square",
    "forward",
    "bend",
    "cold",
    "broken",
    "distant",
    "adjective."
]
function randomNumber(min, max) {
  return Math.round(Math.random() * (max - min) + min);
}
const word = words[randomNumber(0, words.length - 1)];
  myRef.current.unshift(word)
}
function handleDeleteItem(evt){
  evt.preventDefault()
  if( myRef.current.length == 0) {
    alert("there is no more elements to delete")
  }
  myRef.current.shift()
}
const firstNum = myRef.current.map(x => (<li key ={x}> {x.slice(0, 1)}</li>))
return (
  <div>
    <ul>
      {firstNum}
    </ul>
    <div className="button">
      <Button type="button" onClick={handleAddItem}>Add one</Button>

      <Button type="button" onClick={handleDeleteItem}>Delete one</Button>

    </div>
  </div>
  
)
}
export default App;
