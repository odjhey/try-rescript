@scope(("import", "meta")) @val external hot: bool = "hot"
@scope(("import", "meta", "hot")) @val
external accept: unit => unit = "accept"

switch ReactDOM.querySelector("#root") {
| None => Js.Console.log("Could not find #root element")
| Some(v) => ReactDOM.render(<React.StrictMode> <Test /> </React.StrictMode>, v)
}

if hot {
  accept()
}