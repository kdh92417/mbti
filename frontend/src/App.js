import {BrowserRouter, Route, Switch} from 'react-router-dom';
import Page from './component/Page';

function App() {
  return (
    <BrowserRouter>
      <div className="App">
        <Switch>
          <Route path="/page/:page">
            <Page />
          </Route>
        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;
