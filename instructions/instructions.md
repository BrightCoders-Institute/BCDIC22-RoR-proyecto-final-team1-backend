ss![BrightCoders Logo](../img/logo.png)

- [Proyecto Final](#proyecto-final)
  - [Objetivos](#objetivos)
  - [Instrucciones](#instrucciones)
  - [Entregables](#entregables)
  - [Flujo de trabajo sugerido](#flujo-de-trabajo-sugerido)
    - [\[ 01 \] Project description](#-01--project-description)
    - [\[ 02 \] Functional requirements](#-02--functional-requirements)
    - [\[ 03 \] Non-functional requirements](#-03--non-functional-requirements)
    - [\[ 04 \] Workplan](#-04--workplan)
    - [\[ 05 \] UI Design](#-05--ui-design)
    - [\[ 06 \] Database model](#-06--database-model)
    - [\[ 07 \] GitHub Planner](#-07--github-planner)
  - [Definiciones](#definiciones)
  - [Recursos](#recursos)
  
# Proyecto Final

  Atributo |  Valor
 --- | --- |
 Tipo | Colaborativo
 Estrategia | Collaborative
 Modo | Síncrono
 Dedicación | 180 horas
 Duración | 45 días

## Objetivos

- Desarrollar experiencia en el trabajo colaborativo remoto para desarrollo de aplicaciones
- Desarrollar experiencia en el uso de React Native para la codificación de aplicaciones móviles

## Instrucciones

1. Como equipo deberán acordar sobre cuál será el proyecto final sobre el que estarán trabajando. Puede ser:
   1. Un producto o aplicación original o idea de emprendimiento
   2. Un producto o aplicación inspirada o similar a una existente
   3. Una clonación de algún producto o servicio existente.
2. Considerar que el proyecto sea retador, es decir, que el proceso de su desarrollo te deje además de un producto, aprendizajes
3. El concepto sobre que se trabajará el proyecto es un MVP. Es decir un producto que incluye las características o funcionalidades mínimas necesarias para probar una idea o producto en una etapa temprana del ciclo de desarrollo.
4. __BONUS__ Considera en tu proyecto parte de su funcionalidad trabajarla como una [API REST](https://guides.rubyonrails.org/api_app.html). Esto te servirá para aprender como una API REST utilizando Rails.
5. Una vez que llegaron a un acuerdo deberán definir las características (funcionalidad) del prototipo a desarrollar, en este análisis se debe tomar en consideración el tiempo que tienen para desarrollarlo así como la velocidad y tamaño del equipo. No debe ser un listado muy detallado pero si claro de las ideas o funcionalidades propuestas. Para facilitar este proceso, procura organizarlas en [milestones](#definiciones) y para cada milestone puedes agregar alguna descripción para precisar algunos puntos.
6. El siguiente paso, es crear un mockup o diseño básico de la UI de la aplicación. Entre otras cosas este diseño servirá para tener una mejor idea del esfuerzo que requerirán para desarrollar el proyecto para que con base en esto realicen ajustes de ser necesario. Puedes apoyarte en herramientas como [uizard](https://uizard.io/es/), [Figma](https://www.figma.com/) ó similares.
7. También, necesitarás un modelo inicial para tu base de datos genera el modelo inicial utilizando una herramienta como [dbdiagram.io](https://dbdiagram.io/home) ó similar.
8. Con el diseño, el equipo podrá iniciar a planear las tareas para su primer sprint. Antes de crear tus tareas asegúrate de crear y configurar el proyecto de GitHub [(ver instrucciones)](project-planner.md)
9. Una vez planificado tu sprint inicia a codificar siguiendo nuestro [flujo de trabajo para el desarrollo ágil]((workflow.md))

## Entregables

- Descripción del proyecto
- Plan de trabajo
- Descripción de requerimientos funcionales
- Descripción de requerimientos no funcionales
- Propuesta de diseño de UI
- Código fuente
- Despliegue de la aplicación (deployment)
- Documentación para su instalación, ejecución y pruebas

## Flujo de trabajo sugerido

### [ 01 ] Project description

> This is a project that seeks to replicate the basic functionalities of the famous Air-Bnb platform. (Airbnb is a community marketplace for listing, advertising, and booking cheap accommodation online or from your smartphone.) It is based on the “Bed and Dinner” modality (where the “bnd” comes from).

### [ 02 ] Functional requirements

> Registra los requerimientos funcionales considerados para este proyecto, para que no sea tan extenso, puedes dividirlo en [milestones](#definiciones). Por ejemplo: Milestone 1:  Formulario o pantalla para registro de nuevos usuarios. Milestone 2: Pantalla de inicio que muestra un registro de todos los proyectos. Milestone 3: CRUD  de proyectos. No es necesario describir aquí en detalle todas las tareas, sino más bien los módulos o milestones más generales.

- Milestone 1. Initial Configuration of the Project: Create base structure, directories, add libraries...
- Milestone 2. Database Creation: Migrations will be created to generate the schema.
- Milestone 3. User's CRUD: Create, Read, Update and Delete Users.
- Milestone 4. Housing CRUD: Create, Read, Update and Delete the Place.
- Milestone 5. Housing Reservation CRUD: Create, Read, Update and Delete the reservations.
- Milestone 6. Deployment: Deploy the proyect

### [ 03 ] Non-functional requirements

-  Tecnologias
   - ReactJS for the frontend
   - Ruby on Rails for the backend
- Calidad
  - Utilizar estilo de código definido por la comunidad (apoyarse en Rubocop)
  - Incluir pruebas unitarias(tal vez)
  - Puntuación en RubyCritic por lo menos 90 en la carpeta de la App y por lo menos 65 en las pruebas
- Deployment
  - Publicación de la App en un servidor web, frontend Netlify, Backend Railway

### [ 04 ] Workplan

> Organiza tus requerimientos ó `milestones` de manera calendarizada.

Milestone | WK1 | WK2 | WK3 | WK4 | WK5 | WK6 | WK7 | WK8 | WK9 |
---|---|---|---|---|---|---|---|---|---|
 #1 | x | x |
 #2 |   | x |
 #3 |   |   |
 #4 |   |   |
 #5 |   |   |
 #6 |   |   |

### [ 05 ] UI Design

> https://www.figma.com/file/ztQa5xTqxag18W7V8Fh40m/EarthB%26D-Mockup?node-id=0%3A1&t=gzjrVxfOQw0rs8uU-1

### [ 06 ] Database model

> https://lucid.app/lucidchart/d90becb2-df51-4563-9c6d-a7f5db6714c4/edit?viewport_loc=-961%2C-168%2C4270%2C1946%2C0_0&invitationId=inv_752c20cf-beb9-45d2-a0e2-aa44624653fc

### [ 07 ] GitHub Planner

> https://github.com/orgs/BrightCoders-Institute/projects/36/views/2

## Definiciones

- Milestone
  - Es un punto específico en un proyecto que marca una etapa significativa de desarrollo.
  - Funciona como una señal para ayudar a visualizar cuánto progreso se ha logrado y qué queda por hacer.
  - Se descomponen en tareas
- Tarea
  - Historias de usuario, issues, tickets, etc
  - Descripción breve y sencilla de una característica del producto a desarrollar desde el punto de vista de la persona que desea la nueva capacidad, puede ser un usuario, cliente, o cualquier stakeholder.

## Recursos

- [Minimum Viable Product](https://www.agilealliance.org/glossary/mvp/#q=~(infinite~false~filters~(tags~(~'mvp))~searchTerm~'~sort~false~sortDirection~'asc~page~1))
- [Minimum Viable Product (MVP)](https://www.productplan.com/glossary/minimum-viable-product/)
- [Design Thinking](https://www.interaction-design.org/literature/topics/design-thinking)
- [El proceso de pensamiento de diseño](https://www.youtube.com/watch?v=_r0VX-aU_T8)
- [Metodología Design Thinking. Ejemplos](https://www.youtube.com/watch?v=_ul3wfKss58)
- [Design Thinking ejemplo sencillo](https://www.youtube.com/watch?v=_H33tA2-j0s)
