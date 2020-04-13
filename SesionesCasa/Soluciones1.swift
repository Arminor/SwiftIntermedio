/* Swift en casa

Solución a los ejercicios.


 -Una función que calcule cuánto debo pagarle por horas extras a un trabajador de acuerdo a la Ley Federal de Trabajo.

-Una función/procedimiento que me indique en porcentaje cuánto estoy ganando al vender un producto.(Cuánto me cuesta producirlo y en cuánto lo vendo $$$)

-Una función/procedimiento que me indique cuánto dinero tendré en un año si yo deposito una cantidad x en una cuenta de ahorro con un rendimiento del 6% anual. (La tasa de rendimiento no cambia, no piensen en demás variables)

-Un closure que me devuelva cuánto voy a ganar si apuesto 'x' cantidad a un momio 'y'
*/
import Foundation


/*Soluciones*/

/*Cálculo de Horas extras.
El cálculo de pago por horas extras laboradas, es sencillamente calcular con base en un sueldo o salario
mensual, cuánto le corresponde a un trabajador recibir por horas extras laboradas. En el ejemplo, este cálculo se
suma al pago quincenal de un salario mensual, en donde también estań más funciones que colaboran con el cálculo.
La notación enla que expreso las solución no es un ejemplo de implementación, sino, una forma de expresión directa,
no quiere decir que sea la forma correcta, es más eficiente si, pero puede llegar a ser más incomprensible, y es por 
esta última razón que la hice así, para que logren identificar lo que está sucediendo y puedan diferenciar y dominar 
los tipos de datos y las funciones como parámetros. 
Orden a veces implica sacrificar un poco de eficiencia.
La eficacia no implica ni rapidez, ni orden. 
Piensen ¿Qué es mejor, eficacia ó eficiencia?
*/

func salarioDiario(salarioMensual: Double) -> Double{
    return salarioMensual / 30
}

func salarioxHora(salarioDiario: Double, horario: Int) -> Double {
    switch horario{
        case 0: return salarioDiario / 8
        case 1: return salarioDiario / 7
        case 2: return salarioDiario / 7.5 
        default: return 0
    }
}

func horasExtra(salarioxHora :  Double, horasxTrabajadas: Double) -> Double{
    if horasxTrabajadas < 9{
        return (salarioxHora * 2) * horasxTrabajadas
     }else{
         return (salarioxHora * 3) * horasxTrabajadas
    }    
}

func nomina(salarioDiario: Double, diasP: Double, horasx: Double) -> Double{
    return (salarioDiario * diasP) + horasx
} 

var salario : Double = 15000

var calculo = nomina(salarioDiario: salarioDiario(salarioMensual: salario), diasP: 15, horasx: horasExtra(salarioxHora: salarioxHora(salarioDiario: salarioDiario(salarioMensual: salario), horario: 0), horasxTrabajadas: 12))

print("\(calculo)")

/*Utilidad
La utlidad es la ganancia que resulta después de una operación, en este caso, un ejemplo simple
es medir cuánto gano por vender un producto. Todo producto es producido y eso implica un esfuerzo que 
implica un costo específico $$$, el costo de los recursos que utilicé para crearlo, en resumen la cantidad monetaria 
que te costó producir uno de esos productos. Si quieres que el producto sea rentable debe entonces ser vendido
a un precio, una cantidad, mayor a ese costo, de lo contrario estas pagando más de lo que estas cobrando.
En el mundo de la producción, las ventas, la mercadotecnia, la utilidad ideal debe ser del %30 de lo que te costó 
producir.
El ejemplo es sencillo, pero ojo, el cálculo de utilidad esperada o la estimación de precios implica muchos más 
factores que el costo de producción, en este ejemplo se omiten porque así como está resulta más práctico de acuerdo
con las intenciones de la actividad.
*/

func utilidad(_ costo: Double, _ precio: Double)-> Double{
  return ((precio - costo) / costo) * 100
}

print("Ganancia del  % \(utilidad(15, 23))")

/*Rendimiento
Una tasa de rendimiento, que es un porcentaje, indica cuánto va a crecer una determinada cantidad de dinero.
La tasa de rendimiento se mide con respecto a la cantidad, por eso si queremos determinar un crecimiento
ese porcentaje se le debe sumar a la cantidad monetaria inicial. El crecimiento puede medirse en periodos
distintos, en un més, en un año(anual), en 6 meses (semestral), o en 20 años. Para este ejemplo
no vamos a manipular el periodo, el periodo es fijo.
*/
func retorno(_ tasaRendimientoPorcentaje: Double, _ cantidad: Double)-> Double{
    return (cantidad * (tasaRendimientoPorcentaje / 100)) + cantidad
}

print("Cantidad prevista en un año: \(retorno(8,50000))")

/*Apuesta

El momio de una apuesta, hablando del tipo de momio americano que es el más común, 
 indica 2 cosas, si se encuentra con valor positivo quiere decir que esa es la cantidad
 que ganarás por cada $100 apostados. Si Se encuentra con valor negativo quiere decir que
 esa es la cantidad que necesitas apostar para ganar $100. En la solución el valor que devuelve
 incluye la cantidad apostada originalmente, osea la cantidad que estoy recuperando y la cantidad que gano. 
*/

var monto = { (apuesta: Double, momio: Double) -> Double in
    var factor: Double = 0
    if momio > 0{
        factor = ( momio / 100) * apuesta
    }else{
        factor = (-100 / momio) * apuesta
    }
    return factor + apuesta
}

print("\(monto(200, 400))")



