import { Route, Routes } from 'react-router-dom'
import App from './App'
import SignUp from './components/Auth/SignUp'

export default function Router() {
  return (
    <Routes>
      <Route path="/" element={<App />} />
      <Route path="/signup" element={<SignUp />} />
    </Routes>
  )
}
