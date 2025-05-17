+++
Title = "Speakers"
Type = "speakers"
Description = "Conoce a nuestros speakers del DevOpsDays Lima 2025"
+++

<div id="speakers" class="row"></div>
<noscript>
<div class="pretalx-widget">
        <div class="pretalx-widget-info-message">
            JavaScript is disabled in your browser. To access our speaker list without JavaScript,
            please <a target="_blank" href="https://talks.devopsdays.org/devopsdays-lima-2025/speakers/">click here</a>.
        </div>
    </div>
</noscript>

<script>
    const ul = document.getElementById('speakers');
    const list = document.createDocumentFragment();

    // JSON local con la información de los speakers
    const speakersData = [
        {
            "name": "Marc Hornbeek",
            "avatar": "/img/lima-marc.jpg",
            "biography": "Marc es autor de los libros “Engineering DevOps” (Bestseller en Amazon) y “Continuous Testing, Quality, Security and Feedback” (Mejor Libro de DevOps 2024 por DevOps Institute). También es embajador e instructor en DevOps Institute, y colaborador habitual en medios como DevOps.com, CloudNativeNow.com y SecurityBoulevard.com. Con una trayectoria internacional, Marc es un consultor estratégico que ha liderado más de 90 transformaciones digitales en empresas mediante un enfoque integral en pruebas continuas, DevOps, DevSecOps y seguridad asistida por IA.",
            "submissions": ["https://www.linkedin.com/in/marchornbeek/"]
        },
        {
            "name": "André Rezende",
            "avatar": "/img/lima-andre.jpeg",
            "biography": "André es Chief Technology Officer (CTO) del grupo Credicorp y ex Managing Director de Accenture. Con más de 30 años de experiencia en tecnología para el sector financiero América Latina, India y Europa; André ha liderado transformaciones tecnológicas en banca, mercado capitales, microfinanzas, seguros, fondos de pensiones y fintech.",
            "submissions": ["https://www.linkedin.com/in/anrezende/"]
        },
        {
            "name": "Javier Cardoso",
            "avatar": "/img/lima-javi.jpeg",
            "biography": "Javier ha recorrido cada escalón en Mercado Libre hasta convertirse en el líder que está transformando el ecosistema digital latinoamericano. Tras 14 años en la empresa de comercio electrónico más grande de la región, Javier lidera Cloud & Platform, el equipo que democratiza el comercio y los pagos digitales, elevando la experiencia de desarrollo a niveles excepcionales.",
            "submissions": ["https://www.linkedin.com/in/javiercardoso/"]
        },
        {
            "name": "Rossana Suárez",
            "avatar": "/img/lima-rossana.jpeg",
            "biography": "Con raíces venezolanas y argentinas, Rossana Suárez (@RoxsRoss) se ha convertido en una de las voces femeninas más influyentes del ecosistema DevOps en habla hispana. Actual Tech Lead DevOps en NaranjaX y con distinciones que hablan por sí solas: AWS Hero, Docker Captain y GitLab Hero. Su día a día combina automatización, DevSecOps y orquestación de entornos multi‑cloud que sirven a millones de usuarios.",
            "submissions": ["https://www.linkedin.com/in/roxsross/"]
        },
        {
            "name": "Mabel Gerónimo",
            "avatar": "/img/lima-mabel.jpg",
            "biography": " Mabel es Strategic Solutions Engineer de GitHub Inc. Con más de 9 años transformando los procesos de desarrollo en las principales organizaciones de la región, Mabel ha revolucionado la implementación de prácticas DevSecOps y soluciones GitHub que potencian la eficiencia y seguridad del ciclo de desarrollo. Dominicana de nacimiento, Ingeniera de Sistemas con participación destacada en las competencias algorítmicas de ACM-ICPC, ahora desde Austin, Texas nos trae su visión global y experiencia incomparable en implementación de IA.",
            "submissions": ["https://www.linkedin.com/in/mabel-ger%C3%B3nimo-88b11091/"]
        }
    ];  

    // Crear los elementos HTML para cada speaker
    speakersData.map(function(speaker) {
        let li = document.createElement('div');
        li.className = `col-lg-3 col-md-6 p-3`;
        let name = document.createElement('h3');
        let pic = document.createElement('img');
        let bio = document.createElement('details');
        bio.className = `p-1`;
        let talk = document.createElement('a');

        name.innerHTML = `${speaker.name}`;
        pic.src = speaker.avatar.length !== 0 ? `${speaker.avatar}` : '/img/speaker-default.jpg';
        pic.className = `speakers-page`;
        bio.innerHTML = `<summary><b>About ${speaker.name}</b></summary><p>${speaker.biography ? `${speaker.biography}` : `Ipsum`}</p>`;
        talk.setAttribute('href', speaker.submissions[0] ? `${speaker.submissions[0]}` : ``);
        talk.setAttribute('target', '_blank');
        talk.className = `btn btn-primary`;
        talk.innerHTML = `Link to connect`;

        li.appendChild(name);
        li.appendChild(pic);
        li.appendChild(bio);
        li.appendChild(talk);
        list.appendChild(li);
    });

    // Agregar los elementos al contenedor
    if (list.children.length > 0) {
        ul.appendChild(list);
    }
</script>