import ReactDom from 'reactDom'

class App extends React.Component{
  constructor(props) {
    super(props)
  }

  componentWillMount() {
  }

  render() { return <div>
      <span> hello world! </ span>
    </ div>
  }
}

ReactDom.render(<App />, document.getElementById('main'));
