+++
Talk_date = ""
Talk_start_time = ""
Talk_end_time = ""
Title = "KubeVirt: Creando Máquinas Virtuales en un Clúster de Kubernetes"
Type = "talk"
Speakers = ["diego-duran"]
+++
<link href="/events/2024-caceres/main.css" rel="stylesheet">
<script src="/events/2024-caceres/main.js"></script>

<i class="fa fa-language fa-lg"></i><span class="talk-language-level">Spanish</span>
<i class="fa fa-bar-chart fa-lg" style="margin-left: 15px;"></i><span class="talk-language-level">All</span>

<p>

## Introducción

La virtualización y la orquestación de contenedores son dos tecnologías fundamentales en el mundo de la infraestructura de TI moderna. Kubernetes, como orquestador de contenedores líder, ha revolucionado la forma en que desplegamos y gestionamos aplicaciones. Sin embargo, ¿qué sucede cuando necesitamos ejecutar cargas de trabajo tradicionales, como máquinas virtuales (VM)? Aquí es donde entra en juego  **KubeVirt**.

## ¿Qué es KubeVirt?

**KubeVirt**  es una extensión de Kubernetes que permite a los administradores y desarrolladores ejecutar máquinas virtuales junto con contenedores en un mismo clúster. En lugar de tener dos plataformas separadas (una para contenedores y otra para VM), KubeVirt unifica ambos mundos. Esto es especialmente útil cuando se trata de migrar aplicaciones heredadas o cuando se requiere una mayor flexibilidad en la elección de la tecnología de implementación.

## Beneficios de KubeVirt

### 1. Consolidación de recursos

Al combinar máquinas virtuales y contenedores en un solo clúster, se pueden aprovechar los recursos de manera más eficiente. No es necesario mantener dos infraestructuras separadas, lo que reduce la complejidad y los costos operativos.

### 2. Flexibilidad

KubeVirt permite a los equipos de operaciones y desarrollo elegir la mejor tecnología para cada carga de trabajo. Las aplicaciones basadas en contenedores pueden coexistir con aplicaciones heredadas en el mismo entorno.

### 3. Integración con herramientas de Kubernetes

KubeVirt se integra perfectamente con las herramientas y características nativas de Kubernetes, como el escalado automático y la gestión de recursos. Esto facilita la administración y el monitoreo de las máquinas virtuales.

## Casos de uso

### 1. Migración gradual

Las organizaciones que desean modernizar sus aplicaciones pueden utilizar KubeVirt para migrar gradualmente las máquinas virtuales a un entorno basado en contenedores. Esto permite una transición sin problemas sin afectar la disponibilidad de las aplicaciones.

### 2. Desarrollo y pruebas

Los desarrolladores pueden usar KubeVirt para crear entornos de desarrollo y pruebas que incluyan tanto VM como contenedores. Esto facilita la validación de aplicaciones antes de implementarlas en producción.

### 3. Aplicaciones heredadas

Las aplicaciones heredadas que no se pueden refactorizar fácilmente pueden ejecutarse en máquinas virtuales dentro de un clúster de Kubernetes. KubeVirt proporciona una solución para mantener estas aplicaciones mientras se adopta gradualmente la arquitectura de contenedores.

## Mejores prácticas

### 1. Planificación de recursos

Es importante asignar recursos adecuados a las máquinas virtuales y contenedores. KubeVirt utiliza las mismas políticas de escalado que Kubernetes, por lo que es fundamental comprender cómo funciona la escalado de recursos.

### 2. Monitoreo

Utiliza herramientas de monitoreo para supervisar tanto para las máquinas virtuales como para los contenedores. Esto ayudará a identificar cuellos de botella y optimizar el rendimiento.

### 3. Seguridad

Aplica las mismas prácticas de seguridad a las máquinas virtuales que a los contenedores. Esto incluye la segmentación de red, el acceso a volúmenes y la autenticación.</p>
