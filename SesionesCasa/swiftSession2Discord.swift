import Foundation
//Recursividad

func cuentaRegresiva(_ n: Int){
    print("\(n)...")

    if n > 0 {
        cuentaRegresiva(n - 1)
    }else if n == 0{
        print("Tiempo!!!")
    }
}
cuentaRegresiva(10)


func factorial(_ n: Int)-> Int{
    if n ==  1 {
        return  1
    }else{
        return n * factorial(n - 1)
    }
}
print("\(factorial(4))")

//Más funciones

//Omisión de la sentencia Return
func cuadrado(_ n: Int)-> String{ //Int{
    //n * n
    "El cuadrado de \(n) es \(n * n)"
}
print("\(cuadrado(60))")

func raizCuadrada(_ n: Float)-> String{ //Float{
    //sqrt(n)
    "La raíz cuadrada de \(n) es \(sqrt(n))"
}
print("\(raizCuadrada(144))")


//Etiquetas de parámetro
func correspondencia(de emisor: String, para destino: String, paquete nombrePaquete: String)-> String{
    "\(nombrePaquete) enviado a \(destino) de parte de \(emisor)"
}
print("\(correspondencia(de: "Andres", para: "Apple", paquete: "Coronavairus"))")


//Parámetros opcionales
func saludos(para nombre: String? = nil)-> String{
    if nombre != nil{
        return "Hola \(nombre!), espero estés pasando una gran cuarentena!"
    }
    return "Ingresa un nombre para saludar!!!"
}
//print("\(saludos())")
print("\(saludos(para: "Andres"))")

func promedio(de numeros: Float...) -> Float{
    var total: Float = 0
    for numero in numeros{
        total += numero
    }
    return total / Float(numeros.count)
}
print("Promedio \(promedio(de: 5,5,5,5))")

var a = 10

/*func x(n : Int){
    n = 2
}
*/
func y(n:inout Int){
   n = 7
}

//x(n: a)
//print("\(a)")

y(n: &a)
print("Variable por referencia \(a)")

**********
