import Foundation

//ROBLES QUEVEDO ALAN


// EJERCICIO 1: IF - ELSE
var edad1: Int = 2
var edad2: Int = 10
var edad3: Int = 34

func ContactosIfElse(edadContacto: Int){
  if (edadContacto < 3){
     print("El contacto es un Bebé")
  } else if (edadContacto < 13){
     print("El contacto es un Niño")
  } else if (edadContacto < 21){
     print("El contacto es un Adolescente")
  } else if (edadContacto < 60){
     print("El contacto es un Adulto")
  } else if (edadContacto >= 60){
     print("El contacto es un Adulto Mayor")
  }
}
ContactosIfElse(edadContacto: edad1)
ContactosIfElse(edadContacto: edad2)
ContactosIfElse(edadContacto: edad3)


//EJERCICIO 1 IF LET

/*
func ContactosIfLet(edadContacto: Int){
  if ((let edadBebe: Int = 3) > edadContacto){
  print("El contacto es un Bebe")}
  if ((let edadNiño: Int = 13) > edadContacto){
  print("El contacto es un Niño")
  }
  if ((let edadAdolescente: Int = 21) > edadContacto){
  print("El contacto es un Adolescente")
  }
  if ((let edadAdulto: Int = 60) > edadContacto){
  print("El contacto es un Adulto")
  }
  if ((let edadAdultoMayor: Int = 59) < edadContacto) {
  print("El contacto es un Adulto Mayor")
  }
}
*/



//EJERCICIO 2: IF ELSE

func ProveedorIfElse(pedido: Float? = nil){

let valor: Float = 0.0
    if (pedido == nil){print("No se aceptan valores nulos")}
    else if (pedido! < valor){ print("No se aceptan valores negativos")} 
    else if (pedido! > valor && pedido! < 100) {print("Pedido Verificado, todo correcto")}
    else if (pedido! > 100) {print("No se aceptan valores mayores a 100 ")}
}

ProveedorIfElse(pedido: 754)
ProveedorIfElse(pedido: -43)
ProveedorIfElse(pedido: 80)


//EJERCICIO 2: GUARD
func ProveedorGuard(pedido: Float? = nil)-> String {

    guard let pedidoGuard = pedido
    else {return "Tu pedido es NULO GUARD"}

    if (pedido! > 100.00){
      print("Tu pedido es mayor a 100 GUARD")
    }else{
      print("Tu pedido se encuentra verificado GUARD")
    }
    return "Finalizado"
}

ProveedorGuard(pedido: 89.0)
ProveedorGuard(pedido: 101.0)

//EJERCICIO 2: IF LET

/*func ProveedorIfLet(pedido: Float? = nil){

var valor: Float = 0.0
    if (pedido == nil){print("No se aceptan valores nulos")}
    else if (pedido! < valor){ print("No se aceptan valores negativos")} 
    else if (pedido! > valor && pedido! < 100) {print("Pedido Verificado, todo correcto")}
    else if (pedido! > 100) {print("No se aceptan valores mayores a 100 ")}
}

ProveedorIfLet(pedido: 754)
ProveedorIfLet(pedido: -43)
ProveedorIfLet(pedido: 80)
*/




//EJERCICIO 3:IF ELSE
var arreglo: [Int] = [23, 54, 2, 1, 52, 5, 2, 1, 4]
var otroArreglo: [Int] = [23, 54, 2, 1, 52, 5, 2, 1, 4, 93, 23, 23, 44, 33, 22]

func VerificarColeccionDatos(arreglos: [Int]){
    if (arreglos.count < 11){
    print("IF ELSE: Todo bien, tu arreglo tiene \(arreglos.count) elementos")
    } else {
    print("IF ELSE: Tu arreglo tiene más de 10 elementos")
    }

}
VerificarColeccionDatos(arreglos: arreglo)
VerificarColeccionDatos(arreglos: otroArreglo)
//EJERCICIO 3: IF-LET
func VerificarColeccionDatosIfLet(arreglos: [Int]){
    if let numero: Int = arreglos.count{
    print("IF LET: Todo bien, tu arreglo tiene \(arreglos.count) elementos")
    } else {
    print("IF LET: Tu arreglo tiene más de 10 elementos")
    }
}
VerificarColeccionDatosIfLet(arreglos: arreglo)
//EJERCICIO3: GUARD
func VerificarColeccionDatosGuard(arreglos: [Int]){
    guard let numero: Int = arreglos.count
    else {print(" GUARD Tu arreglo tiene más de 10 elementos")}
    
    print("GUARD Todo bien, tu arreglo tiene \(arreglos.count) elementos") 
}
VerificarColeccionDatosGuard(arreglos: arreglo)


//EJERCICIO 4: Guard

func VerificarID(cuenta: [String: Int]) {

    guard let  origen = cuenta["Origen"]
    else { return } 
    
    print("El Origen es \(origen) GUARD.")
    
    guard let id = cuenta["ID"]
    else { return }
    
    print("El ID es \(id) GUARD.")
    
    guard let destino = cuenta["Destino"]
    else { return }
    
    print("El destino es \(destino) GUARD.")

   
}

VerificarID(cuenta: ["Origen": 323, "ID": 5432, "Destino": 32323])

//EJERCICIO 4: If Let

func VerificarIDIfLet(cuenta: [String: Int]){
  if let origen = cuenta["Origen"]{
  
  print("El origen es \(origen) IF LET.")}
  else {return}
  if let id = cuenta["ID"]{
  

  print("El ID es \(id) IF LET.")}

  else {return}
  if let destino = cuenta["Destino"]{
  

  print("El destino es \(destino) IF LET.")}
else {return}
}
VerificarIDIfLet(cuenta: ["Origen": 643, "ID": 1245, "Destino": 1535])

//EJERCICIO 4: If- Else

func VerificarIDIfElse(cuenta: [String: Int]){
  if cuenta["Origen"] != nil{
  
  print("El origen es \(cuenta["Origen"]) IF ELSE.")}
  else {return}
  if cuenta["ID"] != nil {
  

  print("El ID es \(cuenta["ID"]) IF ELSE.")}

  else {return}
  if cuenta["Destino"] != nil {
  

  print("El destino es \(cuenta["Destino"]) IF ELSE.")}
else {return}
}
VerificarIDIfElse(cuenta: ["Origen": 0208, "ID": 37403, "Destino": 903])