//Funciones Tipo

func multiplicar(_ a: Int, _ b: Int)-> Int{
    a * b
}

var a: Int = multiplicar(4,4)
var producto : (Int, Int)-> Int
producto = multiplicar
var producciones = multiplicar

print("La función multiplicar directamente \(multiplicar(2,2))")
print("Variable con función tipo \(producto(2,2)), imprime variable a: \(a)")
print("Otra variable con funcion tipo \(producciones(2,2)), imprime variable a: \(a)")



func decidir(_ param: Bool)-> String{

    param ? "Algo" : "OtraCosa"
}
print("\(decidir(false))")


//Ejercicio
func primerfuncion(_ n :Int)-> Int{
    return  n - 1
}

func segundafuncion(_ n: Int) -> Int{
    return  n + 1
}

func ejemplo(param: Bool) -> (Int) -> Int {

return param ? primerfuncion : segundafuncion
}


var iterador = 10

let salida =  ejemplo(param: iterador > 0)

while iterador != 0 {
    print("\(iterador)")
    iterador = salida(iterador)
}


//Funciones anidadas

func ejemploNido(param: Bool) -> (Int) -> Int {

    func primerfuncion(_ n :Int)-> Int{
        return  n - 1
    }

    func segundafuncion(_ n: Int) -> Int{
        return  n + 1
    }

    return param ? primerfuncion : segundafuncion
}



func global(){
  
    func ejemploNido(param: Bool) -> (Int) -> Int {

        func primerfuncion(_ n :Int)-> Int{
            return  n - 1
        }

        func segundafuncion(_ n: Int) -> Int{
            return  n + 1
        }

        return param ? primerfuncion : segundafuncion
    }

    var iterador = 10

    let salida =  ejemplo(param: iterador > 0)

    while iterador != 0 {
        print("\(iterador)")
            iterador = salida(iterador)
    }
}
global()
