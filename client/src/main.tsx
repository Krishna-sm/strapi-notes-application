 
import { createRoot } from 'react-dom/client'
import './index.css'
import App from './App.tsx'
import { NotesProvider } from './context/NotesContext.tsx'
import { ToastContainer } from 'react-toastify';
  import 'react-toastify/dist/ReactToastify.css';
createRoot(document.getElementById('root')!).render(
  <NotesProvider>
    <ToastContainer/>
    <App />
  </NotesProvider>,
)
