# Patrón Strategy

El patrón estrategia consiste en encapsular las diferentes estrategias para ser aplicadas según las necesidades, permitiendo cambiar el comportamiento de un algoritmo, usar diferentes estrategias para nuestros objetos e incluso implementar nuevas estrategias aplicando el principio solid de open/close

# Patrón Observer

El patrón observer consiste proporcionar un mecanismo de reacción ante los cambios en el estado de un objeto, siendo el objeto observado el que notifica sus cambios a los subscritos. Para ello usamos composición, mediante una lista de objetos subscritos para ser notificados y una referencia al objeto observado en los observadores.

* ObservableInterface:

  -methods: add() remove() notify();

  -optional methods: set_state() get_state()

* ObserverInterface:

  -methods: update()

# Patrón Decorator

El patrón decorator permite añadir nuevas funcionalidades a un objeto sin alterar su estructura.
El objeto decorado puede cambiar en tiempo de ejecución, cogiendo la forma que queramos según los decorators que usemos.

El decorator pattern es muy útil para cumplir el principio solid Open/Close

# Factory method pattern

En este caso, la lógica de negocio es la que tiene que tomar la decisión sobre el objeto que tenemos que crear. Vamos no sabemos de antemano, que objeto necesitamos.

Un ejemplo claro sería una clase que creara objetos de forma random. La factoría depende de la función random para crear uno u otro tipo de objeto.

Este es un caso muy extremo, puede que según unas reglas de negocio, interese crear un objeto u otro.

# Abstract Factory

Como en el factory method es la lógica de negocio con la que decidimos que objeto crear.
En este caso la factoría es capaz de crear diferentes familias de objetos, apoyandose para ello en diferentes factory methods.
También podemos hacer uso de diferentes factorías, para variar la lógica de negocio a la hora de crear objetos.

## Entorno dockerizado

1.- Construir la imagen

`docker build . -t patterns`

2.- Arrancar el contenedor

`./runDocker.sh`

3.- Dar permisos a nuestro usuario

La carpeta `/_bundle` se habrá creado para el usuario root, necesitamos darle permisos a nuestro usuario linux

4.- Dentro nuestro contenedor de docker instalar las gemas

`bundle install`

5.-Lanzar los test

`rspec`


## The code

El código usado en los ejemplos, puede no sea apropiado para aplicar los patrones, pero si me pareció interesante para ilustrarlos y testearlos, además de sencillo de comprender.

## Patterns for Cooks

Esta serie de ejemplos se basan en un aprendizaje propio, siendo un método de aproximación a los patrones, para ello me baso en la facilidad que me aporta aplicar los ejemplos a la cocina. Espero que algún que otro cocinero transformado le sirvan también, sugiriendole cambiar los ejemplos por otros para interiorizar mejor los patrones. Lo mismo para transformados de otro sector, aplicar los ejemplos a sectores que conocemos facilita su comprensión.
