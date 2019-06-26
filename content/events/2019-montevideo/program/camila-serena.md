+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "System Status: OK?"
Type = "talk"
Speakers = ["camila-serena", "rodrigo-sastre"]
+++

## Motivación

Los sistemas de monitoreo proporcionan una gran cantidad de métricas y datos en tiempo real, lo que da lugar al desafío de la óptima utilización de dicha información. En la mayoría de los casos se utilizan unos pocos datos que en determinados valores indican una situación no deseada, lo que genera una alerta. Esto resulta en una enorme cantidad de información desaprovechada, tanto métricas que a priori no aportan información de utilidad para alertar de situaciones indeseadas, como los datos que debido a no estar en estados de alarma, no son analizados. Otro tipo de fenómeno ignorado es el que aparece como una secuencia de eventos en distintas métricas en forma de cascada, resultando en una alerta solamente al llegar alguna de estas al umbral definido, ignorando el resto de las métricas afectadas previamente por el problema. Un ejemplo de esto puede verse en una alerta que llega debido a que el filesystem de un servidor se encuentra sin espacio disponible, causado por un problema en la base de datos. Es posible salir del estado de alerta forma provisional eliminando contenido del disco. Sin embargo, si se advierten los eventos previos que indican el problema en la base de datos, se obtiene visibilidad del problema raíz. Al igual que el último ejemplo, se ignoran todas las formas en las que múltiples métricas se correlacionan, lo cual significa una gran pérdida en el poder de acción de los equipos sobre el estado de una aplicación.

## Objetivo

Mostrar, a partir de un caso de uso, un modelo en el que utilizando machine learning es posible sacar mayor provecho a los datos obtenidos a través del monitoreo de una aplicación. Con el empleo de técnicas de aprendizaje automático se buscará obtener información que permita predecir posibles problemas de performance y estabilidad de la aplicación, haciendo uso de la totalidad de las métricas proporcionadas por los sistemas de monitoreo y su correlación.
