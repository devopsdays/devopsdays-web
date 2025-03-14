+++
Title = "Speakers"
Type = "speakers"
Description = "Meet our speakers for DevOpsDays Austin 2025"
+++


<h2>Review some of the talks from these speakers as we finalize details!</h2>
<h3><a href="https://talks.devopsdays.org/devopsdays-austin-2025/featured/">Explore the featured talks here.</a></h3>
<div id="speakers" class="row"></div>
<noscript>
<div class="pretalx-widget">
        <div class="pretalx-widget-info-message">
            JavaScript is disabled in your browser. To access our speaker list without JavaScript,
            please <a target="_blank" href="https://talks.devopsdays.org/devopsdays-austin-2025/speakers/">click here</a>.
        </div>
    </div>
</noscript>

<script>
    const ul = document.getElementById('speakers');
    const list = document.createDocumentFragment();
    const url = 'https://talks.devopsdays.org/api/events/devopsdays-austin-2025/speakers/?limit=50';

    fetch(url)
        .then((response) => {
            return response.json();
        })
        .then((data) => {
            let speakers = data.results;

            speakers.map(function(speaker) {
                let li = document.createElement('div');
                li.className = `col-lg-3 col-md-6 p-3`;
                let name = document.createElement('h3');
                let pic = document.createElement('img');
                let bio = document.createElement('details');
                bio.className = `p-1`;
                //let talk = document.createElement('a');

                name.innerHTML = `${speaker.name}`;
                pic.src = speaker.avatar.length != 0 ? `${speaker.avatar}`: '/img/speaker-default.jpg';
                pic.className = `speakers-page`;
                bio.innerHTML = `<summary><b>About ${speaker.name}</b></summary><p>${speaker.biography ? `${speaker.biography}`: `Ipsum`}</p>`;
                //talk.setAttribute('href', speaker.submissions[0] ? `https://talks.devopsdays.org/devopsdays-austin-2025/talk/${speaker.submissions[0]}` : ``);
                //talk.setAttribute('target', '_blank');
                //talk.className = `btn btn-primary`;
                //talk.innerHTML = `Link to talk`;

                li.appendChild(name);
                li.appendChild(pic);
                li.appendChild(bio);
                //li.appendChild(talk);
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