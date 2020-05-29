import Foundation


enum TiposUsuarios{
  case administradorSistema
  case usuProfesor
  case usuAlumno
}

struct Usuario{
  var tipoDeUsuario: TiposUsuarios?
  var nombreUsuario: String?
  var contrasena: String?
  var edad: Int?
  var correo: String?

  init(tipoDeUsuario: TiposUsuarios, nombreUsuario: String, contrasena: String, edad: Int, correo: String){
    self.tipoDeUsuario = tipoDeUsuario
    self.nombreUsuario = nombreUsuario
    self.contrasena = contrasena
    self.edad = edad
    self.correo = correo

  }
  init(){
    tipoDeUsuario = nil
    nombreUsuario = nil
    contrasena = nil
    edad = nil
    correo = nil
  }
}

var nuevoUsuario: Usuario = Usuario(tipoDeUsuario: .administradorSistema, nombreUsuario: "alanRobles2", contrasena: "12345", edad: 18, correo: "alanofi2@gmail.com")

if let correo = nuevoUsuario.correo{
  print("Su correo es: \(correo)")
}else{
  print("Por favor ingrese su correo")
}

class Usuarios{
  public var nombreUsuario: String?
  private var contrasena: String?
  private var edad1:Int?
  private var correo: String?

  init(nombreUsuario: String, contrasena: String, edad1: Int, correo: String){
    self.nombreUsuario = nombreUsuario
    self.contrasena = contrasena
    self.edad1 = edad1
    self.correo = correo
  }

  public func getContrasena()-> String{
    return contrasena!
  }

  public func setContrasena(nuevaContrasena: String){
    self.contrasena = nuevaContrasena
  }
}

var usuario1 = Usuarios(nombreUsuario: "alanrobles246", contrasena: "123456789", edad1: 18, correo: "alanofi2@gmail.com")

print("Su nombre de usuario es: \(usuario1.nombreUsuario!)")
print("Su antigua contraseña es :\(usuario1.getContrasena())")

usuario1.setContrasena(nuevaContrasena: "jfjfhdh2324")
print("Su nueva contraseña es: \(usuario1.getContrasena())")
