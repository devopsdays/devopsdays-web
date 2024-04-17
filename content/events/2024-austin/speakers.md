+++
Title = "Speakers"
Type = "speakers"
Description = "Meet our speakers for DevOpsDays Austin 2024"
+++

<div id="speakers" class="row"></div>

<script>
    const ul = document.getElementById('speakers');
    const list = document.createDocumentFragment();
    const url = 'https://talks.devopsdays.org/api/events/devopsdays-austin-2024/speakers/';

    fetch(url)
        .then((response) => {
            return response.json();
        })
        .then((data) => {
            let speakers = data.results;

            console.log(speakers);

            speakers.map(function(speaker) {
                let li = document.createElement('div');
                li.className = `col-lg-3 col-md-6`;
                let name = document.createElement('h4');
                let pic = document.createElement('img');
                let bio = document.createElement('div');
                let talk = document.createElement('a');

                name.innerHTML = `${speaker.name}`;
                pic.src = speaker.avatar ? `${speaker.avatar}`: ``;
                pic.className = `speakers-page`;
                bio.innerHTML = speaker.biography ? `${speaker.biography}`: `Ipsum`;
                talk.setAttribute('href', speaker.submissions[0] ? `https://talks.devopsdays.org/events/devopsdays-austin-2024/talk/${speaker.submissions[0]}` : ``);
                talk.innerHTML = `Link to talk`;

                li.appendChild(name);
                li.appendChild(pic);
                li.appendChild(bio);
                li.appendChild(talk);
                list.appendChild(li);
            });
        })
        .catch(function(error) {
            console.log(error);
        })
        .finally(() => {
            ul.appendChild(list);
        });
</script>