import { ComponentAlerta } from "./components/componentAlerta"
import { ComponentName } from "./components/componentName"
import { ComponentPerfil } from "./components/componentPerfil"

export const App = () => {

  function Alerta () {
    alert('Eu sou o alerta do botão de alerta')
  }

  return (
    <div>
      <ComponentName name= "Luis Filipes"/>
      <ComponentName name= "Isabella Assumpção"/>
      <ComponentName name= "Rafael Freire"/>
      <ComponentName name= "Isabela Dias"/>

      <ComponentPerfil />

      <ComponentAlerta funcAlerta = {Alerta}/>
    </div>
  )
}
