import './App.css';
import { Home } from './Home';
import{BrowserRouter,Route,Routes} from 'react-router-dom';
function App() {
  return (
    <BrowserRouter>
      <div className="container">        
      <Routes>
        <Route path='/' element={<Home />}/>      
      </Routes>
      </div>
    </BrowserRouter>
  );
}

export default App;
