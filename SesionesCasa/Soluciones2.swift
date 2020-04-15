import Foundation

//Soluciones 2

/*Usando Estructura de Control de Selección Simple*/

//1
var cadena = ""
 
func potencias( _ n: Int, _ x: Int)->Int{
 
  if x > 15{    
    return 0
 }else{    
    let pibote = cadena
    cadena = "...\(n)"
    cadena += pibote    
    if x == 14 {print(cadena)}
    return potencias(n * 2, x + 1)
 }
}
potencias(2,0)
 
//2
func sigma(vi: Double, vf: Double)-> Double{
  if vi > vf {
   return 0
 }else{
   var resultado = vi * (vi/2) + (vi - 5)
   return resultado + sigma(vi: vi + 1, vf: vf)
 }
}
 
print("\(sigma(vi: 4, vf: 6))")
 
 
/*Estructura de control iterativa*/


//1
var cadena2 = ""
 
func potencias2( _ n: Int, _ x: Int)->Int{
 while x <= 15{   
   let pibote = cadena2
   cadena2 = "...\(n)"
   cadena2 += pibote   
   if x == 14 {print(cadena)}
   return potencias2(n * 2, x + 1)
}
   return 0
}
potencias2(2,0)

//2
func sigma2(vi: Double, vf: Double)-> Double{
  while vi <= vf {
 var resultado = vi * (vi/2) + (vi - 5)
 return resultado + sigma2(vi: vi + 1, vf: vf)
 }
  return 0
}
print("\(sigma2(vi: 4, vf: 6))")

