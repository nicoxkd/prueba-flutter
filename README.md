# Prueba de Flutter y Dart

En esta prueba se usarán dos clases (Persona y Empleado), donde una 
hereda de la otra, usaremos diferentes tipos de constructores y metodos.
Con esta prueba de practican clases, metodos, constructores, herencias... 

## Clase persona

La clase persona contiene 3 tipos de constructores:

- Nombrado: Recibe nombre y edad como parametros
- Por defecto: Asigna valores predeterminados
- De fábrica: Crea una instancia de Persona solo si la edad es mayor de 0

## Clase empleado

Esta clase solo tendra un constructor que pide todos los parametros necesarios 
pero tendremos dos metodos, al principio seran:

- mostrarDetalles: Muestra toda la información del empleado
- tipoSalario: Muestra si el salario el alto bajo o medio

Después de probar que funcionen hemos hecho un pequño cambio, el cual es hacer 
un metodo sobreescrito que será mostrarInfo (lo cambiaremos por mostrarDetalles)
el cual llamará al método original de la superclase para mostrar el nombre y la edad, 
a esto le añadiremos el puesto, el salario y ya de paso el tipoSalario para que salga 
toda la información.

## Main 

En el main haremos diferentes pruebas, la primera de todas será construir Persona con
todos los constructores que hemos creado, despues de crear estas Persona probaremos el 
metodo que tenemos con todas y vemos que aunque hemos usado diferentes constructores,
el resultado es el mismo.

Luego haremos pruebas con la clase Empleado, creamos diferentes empleados y gracias a una
lista haremos que saque la información de todos los empleados que tenemos.