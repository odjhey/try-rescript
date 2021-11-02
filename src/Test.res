// src/Test.res
type state = {count: int}

let initialState = {count: 0}

@react.component
let make = () => {
  let (state, setState) = React.useState(_ => initialState)
  let onClick = _ => {
    setState(prev => {...prev, count: prev.count + 1})
  }

  <>
    <div> {React.string("Hello World")} </div>
    <div> {React.string(Belt.Int.toString(state.count))} </div>
    <button
    onClick>{React.string("yow")}</button>
  </>
}
