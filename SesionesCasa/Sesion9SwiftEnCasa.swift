

/* Tipos de Datos Abstractos */

/*CLASIFICACIÓN o TIPO DE Dato -> TIPO DE <ALGO, lo que sea, lo que quieras, lo que sea requerido> */

//Structs - Registros con campos. En Swift también pueden definirse funciones dentro de uno.

//Enumerador, básicamente enumra opciones que puede tomar una variable, limitando las opciones
// y garantizando un control sobre ellas

enum Color{
  case rojo
  case ambar
  case transparente
  case obscuro
  case verde
}


struct Contenedor{
  var capacidad: Double? //mililitros
  var color: Color?
  var costoUnitario: Double?
  var precioUnitario: Double?
  
  init(capacidad: Double, color: Color, costoUnitario: Double, precioUnitario: Double){
    self.capacidad = capacidad
    self.color = color
    self.costoUnitario = costoUnitario
    self.precioUnitario = precioUnitario
  }

  init(){
    capacidad = nil
    color = nil
    costoUnitario = nil
    precioUnitario = nil
  }

  func calcularGanancia()-> Double{
    return costoUnitario! / (precioUnitario! - costoUnitario!)
  }
}

var botellaCerveza: Contenedor = Contenedor()

if let color = botellaCerveza.color {
  print(color)
}else{
  print("Instancia la estructura o inicializa el atributo")
}
//Intentar heredar un Struct no tiene sentido alguno
//struct Botella: Contenedor{}

botellaCerveza = Contenedor(capacidad: 330, color: .rojo, costoUnitario: 20.50, precioUnitario: 30.99)  

if let color = botellaCerveza.color {
  print(color)
}else{
  print("Instancia la estructura o inicializa el atributo")
}

print(botellaCerveza.color!)

func parametrizando(param: inout Double)-> Double{  
  param += 1.0
  return param 
}

var entero: Int = 0

print("\(entero)")

func ejemplo(){
  entero = 5
}

ejemplo()
print("\(entero)")

//func otroEjemplo(entero: *Int){
func otroEjemplo(entero: inout Int){
  entero = 10
}

otroEjemplo(entero: &entero)
print("\(entero)")

//Clases - Estructuras de datos que presentan Encapsulamiento, Herencia y Polimorfismo.
//Modificadores Privados, Publicos, Amigos, Protegidos
class Producto{
  private var nombre: String?
  private var marca: String?
  private var precio:Double?
  public var existencias: Int = 0

  init(nombre: String, marca: String, precio: Double){
    self.nombre = nombre
    self.marca = marca
    self.precio = precio
  }

  public func getNombre()-> String{
    return nombre!
  }

  public func setNombre(nuevoNombre: String){
    self.nombre = nuevoNombre
  }
  public func actualizarCompra(_ cantidad: Int){
    existencias += cantidad
  }
}

//encapsulamiento

var celular1 = Producto(nombre: "x432dllssperia", marca: "Sony", precio: 2000.0)

print("\(celular1.nombre!)")
print(celular1.getNombre())

print(celular1.existencias)

celular1.actualizarCompra(130)
print(celular1.existencias)

//Herencia
class Vino: Producto{
  private var paísOrigen: String?
  private var uva: String?
  //Polimorfismo y Sobrecarga
  init(nombre: String, precio: Double,_ uva: String,  _ país: String){
    self.paísOrigen = país    
    super.init(nombre: nombre, marca: nombre, precio: precio)
  }
  /* OJO no perder de vista que los métodos de las clases hijas no pueden hacer referencia a atributos heredadoos

  func setNombre(nuevoNombre: String){
    self.nombre = nuevoNombre
  }
  */

  //Herencia y sobreescritura 

  override public func actualizarCompra(_ cantidad: Int){
    let lotes: Double = Double(cantidad) / 30
    existencias += Int(lotes)
  }

  func actualizarCompraPorLote(_ lotes: Int){
    existencias += lotes
  }

}

var vino69 = Vino(nombre: "Trepache Vineyards", precio: 400.00, "Malbec", "Argentina")

//Polimorfismo y herencia

print(vino69.getNombre())

var productoNuevo: Producto

productoNuevo = vino69

productoNuevo.setNombre(nuevoNombre: "Renacer")
print(productoNuevo.getNombre())
print(vino69.getNombre())

func example(param: Producto)-> String{
  param.setNombre(nuevoNombre: "CadenaVacia")
  return param.getNombre()
}

print(example(param: vino69))
print(productoNuevo.getNombre())

print(example(param: celular1))

/*Ejercicio  
 Realiza tipos abstractos para Usuario y tipos de Usuario 
 haz una solucion implementando STRUCT's y otra implmemtando CLASSes 
 
  */