import Foundation

/*REPASO DE COLECCIONES*/

//Arreglo

/*Crear arreglos vacíos */

//var arreglo = []
//var arreglo = [String]()


/*crear arreglos con valores implicitos */

//var arreglo: Array =  ["Arreglo", "de", "Palabras"]
//var arreglo: Array<String> =  ["Arreglo", "de", "Palabras"]
//var arreglo: [String] =  ["Arreglo", "de", "Palabras"]
var arreglo = ["Arreglo", "de", "Palabras"]

//arreglo = ["Arreglo", "de", "Palabras"]

/* Acceder a los valores sin iteración*/
print(arreglo[0])
print(arreglo[1])
print(arreglo[2])

/*Un arreglo es un Struct, sus elementos se pasan por valor, no por referencia */
var cadena = arreglo[0]

print("variable :" + cadena)
arreglo.append("Cadenas")
arreglo += ["..."]
arreglo.remove(at: 2)

/*No puedes aumentar el tamaño del arreglo pasando un nuevo valor de esta forma*/
//arreglo[3] = "Cadenas de caracteres"

/*Debes hacerlo así:*/
arreglo.insert("Esto es un arreglo", at: 0)

/*Modificas así, en donde entre corchetes debe ir el indice del elemento */
arreglo[2] = "Cadenas de caracteres"

print("variable:" + cadena)
for elemento in arreglo{
    print(elemento)
}

print("El tamaño del arreglo es de : \(arreglo.count)")

/*Dos formas de crear arreglos, notas cuál es la diferencia? */

var numeros = 1...100
//var numeros = [Int](repeating: 2, count: 10)

for n in numeros{
    print(n)
}

/*Nuevamente otra iteración sobre los valores de un arreglo*/
for (indice, valor) in numeros.enumerated(){
    print("Indice: \(indice) -> valor: \(valor)")
}

//Sets - Conjuntos
/* Recordar  que los conjuntos no contienen valores repetidos, y no se encuentran indexados 
están basados en los conjuntos matemáticos, con éstas colecciones puedo realizar operaciones de conjuntos
como suma, productos cartesianos, producto punto, diferencia, uniones, intersecciones etc.*/

var identificadores = Set<Int>()
identificadores = [10,10,10,10,10]

identificadores.insert(20)
identificadores.remove(10)
print("\(identificadores.contains(20))")

identificadores = [1,4,5,6,7,8]

for id in identificadores.sorted(){
    print(id)
}


//Recordemos las Tuplas, una variable con más de un valor, de diferentes tipos de datos

var tupla = (1, "Andrés")
var otraTupla = (id: 1, nombre: "Andrés")

print(tupla.0)
print(tupla.1)
print(otraTupla.0)
print(otraTupla.1)

/*Diccionarios. 
Son parecidos a las tuplas, podría decirse que prácticamente son colecciones de tuplas, 
pero hay una gran diferencia. Lao forma de acceso a los valores*/


//let diccionario: [Int: String] = [1: "Andrés", 2: "Alan", 3: "Alejandro", 4: "Christian", 5: "Cynthia", 6: "Gerardo"]

//var a, b = (1,2)

//print("\(a) + \(b)")

var diccionario: [Int: String] = [
    1: "Andrés", 
    2: "Alan", 
    3: "Alejandro", 
    4: "Christian", 
    5: "Cynthia", 
    6: "Gerardo"]


/* Formas de daclarar y definir diccionarios vacíos*/
 
//let otroDiccionario: Dictionary< Int, String> = [:]
//let otroDiccionario : [Int: String ]= [:]
//let listaDePrecios: [Int: Double] = [:] 
//let listaDePrecios =  Dictionary<Int, Double>()

let listaDePrecios =  [Int: Double]() //Nuevo diccionario

for (llaveID, valor) in diccionario{
    print("Accedo a través de: \(llaveID) al valor: \(valor)")
}


for n  in 1...10{
    print("Accedo a través de la llave: \(n) al valor: \(diccionario[n])")
//    print("Accedo a través de la llave: \(n) al valor: \(diccionario[n]!) agregando el operador")
}

/*El operador '!' */
for n  in 1...diccionario.count{
    //print("Accedo a través de la llave: \(n) al valor: \(diccionario[n])")
    print("Accedo a través de la llave: \(n) al valor: \(diccionario[n]!) agregando el operador")
}
print(diccionario.count)

//Operaciones básicas con los diccionarios
diccionario.removeValue(forKey: 1)
diccionario.updateValue("Nepo", forKey:1)
print(diccionario[1]!)

