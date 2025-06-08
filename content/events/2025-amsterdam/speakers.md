+++
Title = "Speakers"
Type = "speakers"
Description = "Meet our speakers for DevOpsDays Amsterdam 2025"
+++

<div id="speakers" class="row"></div>
<noscript>
<div class="pretalx-widget">
        <div class="pretalx-widget-info-message">
            JavaScript is disabled in your browser. To access our speaker list without JavaScript,
            please <a target="_blank" href="https://talks.devopsdays.org/devopsdays-amsterdam-2025/speaker/">click here</a>.
        </div>
    </div>
</noscript>

<script>
    const ul = document.getElementById('speakers');
    const list = document.createDocumentFragment();
    const url = 'https://talks.devopsdays.org/api/events/devopsdays-amsterdam-2025/speakers/?page=1&page_size=50';

    fetch(url)
        .then((response) => response.json())
        .then((data) => {
            let speakers = data.results;
            console.log(speakers);

            speakers.forEach(function(speaker) {
                let li = document.createElement('div');
                li.className = 'col-lg-3 col-md-6 p-3';

                let name = document.createElement('h3');
                name.textContent = speaker.name;

                let pic = document.createElement('img');
                pic.className = 'speakers-page';
                pic.src =
                    (typeof speaker.avatar_url === 'string' && speaker.avatar_url.trim().length > 0)
                        ? speaker.avatar_url
                        : '/img/speaker-default.jpg';

                let bio = document.createElement('details');
                bio.className = 'p-1';
                bio.innerHTML =
                    `<summary><b>About ${speaker.name}</b></summary><p>${
                        speaker.biography
                            ? speaker.biography
                            : `No biography found for ${speaker.name}. If you are ${speaker.name}, please email the organizers with a biography to be used here.`
                    }</p>`;

                li.appendChild(name);
                li.appendChild(pic);
                li.appendChild(bio);

                if (
                    Array.isArray(speaker.submissions) &&
                    speaker.submissions.length > 0 &&
                    speaker.submissions[0]
                ) {
                    let talk = document.createElement('a');
                    talk.href = `https://talks.devopsdays.org/devopsdays-amsterdam-2025/talk/${speaker.submissions[0]}`;
                    talk.target = '_blank';
                    talk.className = 'btn btn-primary';
                    talk.textContent = 'Link to talk';
                    li.appendChild(talk);
                }

                list.appendChild(li);
            });
        })
        .catch(function(error) {
            console.error('Error fetching speaker data:', error);
        })
        .finally(() => {
            ul.appendChild(list);
        });
</script>

