+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "Autojenkins, o cómo acercar Jenkins a los desarrolladores"
Type = "talk"
Speakers = ["miguel-angel-garcia"]
+++

Nuestro problema era el siguiente: DevOps se estaba transformando en el cuello de botella, ya que no podíamos manejar la creación de los proyectos en Jenkins a la velocidad deseada.

Utilizar Jenkinsfiles no es suficiente, aunque sí bastante útil: permite replicación, conservar un histórico y aplicar cambios por ramas, pero nuestros desarrolladores crean proyectos para librerías como repositorios o como directorios dentro de otros repositorios... ¿Cómo lidiar con todo esto?

Así nació Autojenkins, una forma de trabajar que permite a los DEV reutilizar los Jenkinsfiles y crear proyectos bajo demanda. Ahora estamos trabajando para aplicar la misma idea en OPS...