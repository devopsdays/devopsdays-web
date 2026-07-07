+++
Title = "Speakers"
Type = "speakers"
Description = "Meet our speakers for DevOpsDays Rockies 2026"
+++

<style>
    .section-title {
        color: #1a365d;
        font-weight: 700;
        font-size: 2rem;
        margin-bottom: 5px;
    }
    .title-divider {
        border-top: 3px solid #3182ce;
        width: 60px;
        margin: 0 0 20px 0;
        border-radius: 2px;
    }
    .speaker-card-col {
        margin-bottom: 30px;
    }
    .speaker-card {
        background: #ffffff;
        border-radius: 12px;
        box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        border: 1px solid rgba(226, 232, 240, 0.8);
        height: 100%;
        display: flex;
        flex-direction: column;
        transition: transform 0.25s ease, box-shadow 0.25s ease;
        overflow: hidden;
    }
    .speaker-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
        border-color: #3182ce;
    }
    .speaker-card-header {
        background: #f0f4f8;
        border-bottom: 1px solid #e2e8f0;
        position: relative;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        overflow: hidden;
        height: 220px;
        transition: filter 0.2s ease;
    }
    .speaker-card-header:hover {
        filter: brightness(0.94);
    }
    .speaker-card-header::after {
        content: '\2197';
        position: absolute;
        top: 12px;
        right: 14px;
        font-size: 1rem;
        color: #a0aec0;
        opacity: 0;
        transition: opacity 0.2s ease;
    }
    .speaker-card-header:hover::after {
        opacity: 1;
    }
    .speaker-photo {
        width: 100%;
        height: 100%;
        object-fit: contain;
        object-position: center;
        display: block;
    }
    .speaker-card-header .speaker-name {
        display: none;
    }
    .speaker-card-body {
        padding: 16px 20px;
        flex-grow: 1;
        display: flex;
        flex-direction: column;
    }
    .speaker-name {
        font-size: 1.1rem;
        font-weight: 700;
        color: #2d3748;
        margin: 0 0 10px 0;
        line-height: 1.3;
    }
    .speaker-bio-text {
        font-size: 0.88rem;
        color: #4a5568;
        line-height: 1.6;
        flex-grow: 1;
        display: -webkit-box;
        -webkit-line-clamp: 4;
        -webkit-box-orient: vertical;
        overflow: hidden;
        margin-bottom: 10px;
    }
    .speaker-bio-text.expanded {
        display: block;
        overflow: visible;
        -webkit-line-clamp: unset;
    }
    .read-more-btn {
        background: none;
        border: none;
        color: #3182ce;
        font-size: 0.82rem;
        font-weight: 600;
        padding: 0;
        cursor: pointer;
        display: flex;
        align-items: center;
        gap: 4px;
        align-self: flex-start;
        transition: color 0.15s ease;
    }
    .read-more-btn:hover {
        color: #2b6cb0;
        text-decoration: underline;
    }
    .speaker-card-footer {
        padding: 12px 20px;
        background-color: #f7fafc;
        border-top: 1px solid #edf2f7;
    }
    .speaker-talk-link {
        font-size: 0.82rem;
        font-weight: 600;
        color: #3182ce;
        text-decoration: none;
        display: inline-flex;
        align-items: center;
        gap: 5px;
        transition: color 0.15s ease;
    }
    .speaker-talk-link:hover {
        color: #2b6cb0;
        text-decoration: underline;
    }
    .spinner-border {
        display: inline-block;
        width: 2rem;
        height: 2rem;
        border: 0.25em solid #3182ce;
        border-right-color: transparent;
        border-radius: 50%;
        animation: spin 0.75s linear infinite;
    }
    @keyframes spin { to { transform: rotate(360deg); } }
</style>

<div id="speakers-loading" class="text-center my-5">
    <div class="spinner-border" role="status"></div>
    <p class="mt-2 text-muted">Loading speakers from Pretalx...</p>
</div>
<div id="speakers-content"></div>

<noscript>
<div class="pretalx-widget">
    <div class="pretalx-widget-info-message">
        JavaScript is disabled in your browser. To access our speaker list without JavaScript,
        please <a target="_blank" href="https://talks.devopsdays.org/dodroxrox26/speaker/">click here</a>.
    </div>
</div>
</noscript>

<script>
    (function() {
        var speakersUrl = 'https://talks.devopsdays.org/api/events/dodroxrox26/speakers/?limit=50';

        var loadingElement = document.getElementById('speakers-loading');
        var contentElement = document.getElementById('speakers-content');

        fetch(speakersUrl)
        .then(function(r) { return r.json(); })
        .then(function(data) {
            var sectionHeader = document.createElement('div');
            sectionHeader.className = 'mb-4';

            var sectionTitle = document.createElement('h2');
            sectionTitle.className = 'section-title';
            sectionTitle.innerText = 'Speakers';
            sectionHeader.appendChild(sectionTitle);

            var divider = document.createElement('hr');
            divider.className = 'title-divider';
            sectionHeader.appendChild(divider);

            var row = document.createElement('div');
            row.className = 'row';

            data.results.forEach(function(speaker) {
                var col = document.createElement('div');
                col.className = 'col-sm-6 col-lg-3 speaker-card-col';

                var card = document.createElement('div');
                card.className = 'speaker-card';

                // Header — full photo, clickable
                var header = document.createElement('div');
                header.className = 'speaker-card-header';
                header.onclick = function() {
                    window.open('https://talks.devopsdays.org/dodroxrox26/speaker/' + speaker.code, '_blank');
                };

                var photoUrl = speaker.avatar_url && speaker.avatar_url.length > 0 ? speaker.avatar_url : '/img/speaker-default.jpg';
                var photoImg = document.createElement('img');
                photoImg.src = photoUrl;
                photoImg.referrerPolicy = 'no-referrer';
                photoImg.className = 'speaker-photo';
                photoImg.alt = speaker.name;
                header.appendChild(photoImg);

                // Body — name + bio
                var body = document.createElement('div');
                body.className = 'speaker-card-body';

                var nameEl = document.createElement('h3');
                nameEl.className = 'speaker-name';
                nameEl.innerText = speaker.name;
                body.appendChild(nameEl);

                if (speaker.biography) {
                    var bioText = document.createElement('p');
                    bioText.className = 'speaker-bio-text';
                    bioText.innerText = speaker.biography;
                    body.appendChild(bioText);

                    if (speaker.biography.length > 200) {
                        var readMoreBtn = document.createElement('button');
                        readMoreBtn.className = 'read-more-btn';
                        var btnText = document.createElement('span');
                        btnText.innerText = 'Read More ';
                        readMoreBtn.appendChild(btnText);
                        var btnIcon = document.createElement('i');
                        btnIcon.className = 'fa fa-chevron-down';
                        readMoreBtn.appendChild(btnIcon);
                        readMoreBtn.onclick = function() {
                            if (bioText.classList.contains('expanded')) {
                                bioText.classList.remove('expanded');
                                btnText.innerText = 'Read Less ';
                                btnIcon.className = 'fa fa-chevron-down';
                            } else {
                                bioText.classList.add('expanded');
                                btnText.innerText = 'Read More ';
                                btnIcon.className = 'fa fa-chevron-up';
                            }
                        };
                        body.appendChild(readMoreBtn);
                    }
                }

                // Footer — link to their talk
                var footer = document.createElement('div');
                footer.className = 'speaker-card-footer';

                if (speaker.submissions && speaker.submissions.length > 0) {
                    var talkLink = document.createElement('a');
                    talkLink.href = 'https://talks.devopsdays.org/dodroxrox26/talk/' + speaker.submissions[0];
                    talkLink.setAttribute('target', '_blank');
                    talkLink.className = 'speaker-talk-link';
                    var linkIcon = document.createElement('i');
                    linkIcon.className = 'fa fa-microphone';
                    talkLink.appendChild(linkIcon);
                    talkLink.appendChild(document.createTextNode(' View Talk'));
                    footer.appendChild(talkLink);
                }

                card.appendChild(header);
                card.appendChild(body);
                card.appendChild(footer);
                col.appendChild(card);
                row.appendChild(col);
            });

            contentElement.appendChild(sectionHeader);
            contentElement.appendChild(row);

            loadingElement.style.display = 'none';
            contentElement.style.display = 'block';
        })
        .catch(function(err) {
            console.error('Error fetching speakers:', err);

            var alertDiv = document.createElement('div');
            alertDiv.className = 'alert alert-danger';
            alertDiv.setAttribute('role', 'alert');

            var heading = document.createElement('h4');
            heading.className = 'alert-heading';
            heading.innerText = 'Failed to load speakers';
            alertDiv.appendChild(heading);

            var errMsg = document.createElement('p');
            errMsg.innerText = String(err);
            alertDiv.appendChild(errMsg);

            loadingElement.innerHTML = '';
            loadingElement.appendChild(alertDiv);
        });
    })();
</script>