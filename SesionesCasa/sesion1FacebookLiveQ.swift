import Foundation

func sumar(_ op1: Int,_  op2: Int)->Int{

    return op1 + op2
}

print("\(sumar(1,2))")

//Primer forma del Closure

let sumaClosure = { (op1: Int, op2 : Int) -> Int in return op1 + op2 }
// let es el modificador. sumaClosure es el identificador. Se abren llaves y siguen los parámetros encerrados en '()'
//  después se indica el tipo de dato que retorna la función '->' y la sentencia 'in' ('contiene') y 
// el conjunto de instrucciones

//Segunda forma del closure omitiendo los tipos de datos en los parámetros y la sentencia return
let sumaSimplificada = { op1, op2 -> Int in  op1 + op2 }
print("\(suma(1,2))")

//Segundo ejemplo. Primero la función menú

func menu(_ noPlatillo: Int)-> String{

    var platillo = ""

    switch noPlatillo{
        case 1: platillo = "Milanesa Cordon Blue"
        case 2: platillo = "Torta de Pechuga"
        case 3: platillo = "Sopa Azteca"
        default: platillo = "Ingresa el platillo correspondiente"
    }

    return platillo
}


//Ahora la forma Closure de la función menú
var platillo = { (noPlatillo: Int) -> String in
    switch noPlatillo{
            case 1: return "Milanesa Cordon Blue"
            case 2: return  "Torta de Pechuga"
            case 3: return "Sopa Azteca"
            default: return "Ingresa el platillo correspondiente"
        }
    }

print("\(menu(1))")
print("\(platillo(2))")


//Ejemplo 3. 


var miUsuario = "usuario"
var miContraseña = "contraseña"

//Primero la función
func autenticacion(_ usuario: String, _ contraseña: String)-> String{
    if miUsuario == usuario && miContraseña == contraseña {
         return "Autenticación exitosa"
    }
    return "Usuario o contraseña incorrectos"
}

print("\(autenticacion("arminor", "qwerty123"))")


//Ahora el Closure
var notificacion = {(usuario: String, contraseña: String)-> String in
        if miUsuario == usuario && miContraseña == contraseña {
         return "Autenticación exitosa"
    }
    return "Usuario o contraseña incorrectos"
 }

 print("\(notificacion("usuario", "contraseña"))")

