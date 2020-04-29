import Foundation
import Foundation

//Problema del Menú 

// Diccionario
var menu: [String: Double] = [
    "Pizza Hawaiana": 80,
    "Pizza Pepperoni": 70,
    "Pizza Pera": 65,
    "Pizza Queso de Cabra": 85,
    "Piza tres quesos": 90,
    "Refresco": 20,
    "Papas fritas": 30 ]

func cuenta(_ platillos: String ...)-> Double{

    var total: Double = 0
    
    for platillo in platillos{
        total += menu[platillo]!    
    }
    return total
}

print("La cuenta total es de: $ \(cuenta("Refresco", "Pizza Pera")), por favor paga!")


var usuarios :  [String: String] = [:]

func registroDiccionario( usuario: String, contraseña: String){
    if usuarios[usuario] != nil {
      print("El usuario \(usuario) ya se encuentra registrado")
    }else{
      usuarios[usuario] = contraseña
    }
}

registroDiccionario(usuario: "Arminor", contraseña: "qwerty123")

registroDiccionario(usuario: "Arminor", contraseña: "qwertyuio")
print(usuarios["Arminor"]!)
print(usuarios["Andrés"])


var misUsuarios: [(usuario: String, contraseña: String)] = []

func registroTuplas(nuevoUsuario: String, nuevaContraseña: String)-> Bool{
    
    for usuario in misUsuarios{
        if usuario.usuario == nuevoUsuario {          
          return false
        }
    }
    misUsuarios.append((usuario: nuevoUsuario, contraseña: nuevaContraseña))
    //misUsuarios += [(usuario: nuevoUsuario, contraseña: nuevaContraseña)]
    return true
}


if registroTuplas(nuevoUsuario: "Arminor", nuevaContraseña: "qwerty") { print("Registro exitoso") }
else { print("No se pudo realizar el registro") }


func autenticacion(usuario: String, contraseña: String){
    for (llave, valor) in usuarios{
        if usuario == llave && contraseña == valor {
            print("Autenticación exitosa!")
        }else{
            print("Usuario o contraseña incorrectos")
        } 
    }
} 

func autenticacionTuplas(usuario: String, contraseña: String){
    for user in misUsuarios{
        if usuario == user.usuario && user.contraseña == contraseña {
            print("Autenticación exitosa!")
        }else{
            print("Usuario o contraseña incorrectos")
        } 
    }
} 

autenticacion(usuario: "arminor", contraseña: "qwerty123")
autenticacionTuplas(usuario: "arminor", contraseña: "qwerty123")


//Control de Opcionales |   |   |
//                     \|/ \|/ \|/ 
//                      '   '   '
/* Primer Escenario */

//var opcional: String
//print(opcional)


/* Segundo Escenario */

var opcional: String?
print(opcional)

/* Tercer Excenario */

opcional = "Esto es una cadena"
print(opcional)

print(opcional!)

/* Cuarto Escenario  @IBOutlet*/

var outlet: String!

print(outlet)
outlet = "Nueva cadena"
print(outlet!)
print(outlet)

opcional = nil
if opcional == nil { print("Variable opcional es NIL")}


outlet = nil
if outlet == nil {print("Variable outlet es NIL")}

print(opcional)
//print(opcional!)
//print(outlet!)
print(outlet)


//Esto quiere decir que cuando es nil no tengo que usar el ! y cuando es no es NIL si???
//SI, PERO NO ES LA ÚNICA FORMA DE CONTROLAR NUESTRAS OPCIONALES

outlet = "Regresé!!"
if outlet == nil { print("Variable outlet es NIL") }
else { print(outlet!) }


func ejemplo(_ a: Int, _ b: Int? = nil)-> Int{
    if b != nil { return a * b!}
    return a * a
}

print(ejemplo(4))

print(ejemplo(12,4))

/* If-let, if-var y variables temporales */

if var valor = outlet  { print(valor); valor = "Cambiamos el valor"; print(valor) }
else { print("Variable outlet es NIL") }


if let constante = outlet  { print(outlet!) }
else { print("Variable outlet es NIL") }


/* Control de opcionales con Guard */

func validacion(resultado: Bool){
    guard resultado == true else {
        print("El resultado es negativo")
        return
    }
    
    print("El resultado es positivo")
}

validacion(resultado: false)


func presenta(persona: [String: String]) {

    guard let  nombre = persona["Nombre"]
    else { return } 
    
    print("Me llamo \(nombre).")
    
    guard let lugar = persona["Lugar"]
    else { return }
    
    print("Vivo en \(lugar).")
    
    guard let edad = persona["Edad"]
    else { return }
    
    print("Tengo \(edad) años.")
   
    guard let carrera = persona["Carrera"]
    else { return }
    
    print("Estudio la carrera de \(carrera).") 
}
    

presenta(persona: ["Nombre": "Andrés", "Lugar": "Ciudad de México", "Edad": "24", "Carrera": "Informática"])

presenta(persona: ["Nombre": "Andrés", "Edad": "24"])



//Intenta resolver el problema del guard con iteraciones.

