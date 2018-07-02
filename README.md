# Patrón Strategy

El patrón estrategia consiste en encapsular las diferentes estrategias para ser aplicadas según las necesidades, permitiendo cambiar el comportamiento de un algoritmo, usar diferentes estrategias para nuestros objetos e incluso implementar nuevas estrategias aplicando el principio solid de open/close

# Patrón Observer

El patrón observer consiste proporcionar un mecanismo de reacción ante los cambios en el estado de un objeto, siendo el objeto observado el que notifica sus cambios a los subscritos. Para ello usamos composición, mediante una lista de objetos subscritos para ser notificados y una referencia al objeto observado en los observadores.

* ObservableInterface:
  -methods: add() remove() notify();
  -optional methods: set_state() get_state()
* ObserverInterface:
  -methods: update()

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
