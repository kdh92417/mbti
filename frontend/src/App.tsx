import {BrowserRouter, Route, Switch} from 'react-router-dom';
import Home from './component/Home';
import Page from './component/Page';

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <Switch>
          <Route exact path="/">
            <Home />
          </Route>
          <Route path="/page/:page">
            <Page />
          </Route>
        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;
