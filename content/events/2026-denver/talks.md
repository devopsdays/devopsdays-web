+++
Title = "Talks"
Type = "event"
Description = "Meet the talks for DevOpsDays Rockies 2026"
+++

<style>
    .talks-container {
        padding: 20px 0;
    }
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
    .talk-card-col {
        margin-bottom: 30px;
    }
    .talk-card {
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
    .talk-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
        border-color: #3182ce;
    }
    .talk-card-header {
        padding: 20px;
        background: linear-gradient(135deg, #f7fafc 0%, #edf2f7 100%);
        border-bottom: 1px solid #e2e8f0;
        background-size: cover;
        background-position: center;
        position: relative;
        cursor: pointer;
        transition: filter 0.2s ease;
    }
    .talk-card-header:hover {
        filter: brightness(0.93);
    }
    .talk-card-header::after {
        content: '\2197';
        position: absolute;
        top: 12px;
        right: 14px;
        font-size: 1rem;
        color: #a0aec0;
        opacity: 0;
        transition: opacity 0.2s ease;
    }
    .talk-card-header:hover::after {
        opacity: 1;
    }
    .talk-card-header.has-image {
        min-height: 140px;
        display: flex;
        flex-direction: column;
        justify-content: flex-end;
    }
    .talk-card-header.has-image::before {
        content: '';
        position: absolute;
        inset: 0;
        background: linear-gradient(to top, rgba(15,23,42,0.82) 50%, rgba(15,23,42,0.25) 100%);
        border-radius: 0;
    }
    .talk-card-header.has-image .talk-badge,
    .talk-card-header.has-image .talk-title,
    .talk-card-header.has-image .talk-speakers {
        position: relative;
        z-index: 1;
    }
    .talk-card-header.has-image .talk-title {
        color: #ffffff;
    }
    .talk-card-header.has-image .talk-speakers {
        color: #cbd5e0;
    }
    .talk-badge {
        display: inline-block;
        padding: 4px 8px;
        font-size: 0.75rem;
        font-weight: 600;
        text-transform: uppercase;
        border-radius: 20px;
        margin-bottom: 10px;
    }
    .badge-talk {
        background-color: #ebf8ff;
        color: #2b6cb0;
    }
    .badge-ignite {
        background-color: #feebc8;
        color: #c05621;
    }
    .badge-keynote {
        background-color: #faf5ff;
        color: #6b46c1;
    }
    .talk-title {
        font-size: 1.25rem;
        font-weight: 700;
        color: #2d3748;
        margin: 0 0 10px 0;
        line-height: 1.4;
    }
    .talk-speakers {
        font-size: 0.9rem;
        color: #4a5568;
        font-weight: 500;
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        gap: 8px;
    }
    .speaker-chip {
        display: flex;
        align-items: center;
        gap: 6px;
    }
    .speaker-avatar {
        width: 28px;
        height: 28px;
        border-radius: 50%;
        object-fit: cover;
        border: 2px solid rgba(255,255,255,0.6);
        flex-shrink: 0;
    }
    .speaker-icon-fallback {
        width: 28px;
        height: 28px;
        border-radius: 50%;
        background: #cbd5e0;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 0.75rem;
        color: #4a5568;
        flex-shrink: 0;
    }
    .talk-card-body {
        padding: 20px;
        flex-grow: 1;
        display: flex;
        flex-direction: column;
    }
    .talk-abstract {
        font-size: 0.9rem;
        color: #4a5568;
        line-height: 1.6;
        margin-bottom: 15px;
        flex-grow: 1;
        display: -webkit-box;
        -webkit-line-clamp: 4;
        -webkit-box-orient: vertical;
        overflow: hidden;
    }
    .talk-abstract.expanded {
        display: block;
        overflow: visible;
        -webkit-line-clamp: unset;
    }
    .read-more-btn {
        background: none;
        border: none;
        color: #3182ce;
        font-size: 0.85rem;
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
    .talk-card-footer {
        padding: 15px 20px;
        background-color: #f7fafc;
        border-top: 1px solid #edf2f7;
        font-size: 0.8rem;
        color: #718096;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .spinner-border {
        display: inline-block;
        width: 2rem;
        height: 2rem;
        vertical-align: text-bottom;
        border: .25em solid currentColor;
        border-right-color: transparent;
        border-radius: 50%;
        animation: spinner-border .75s linear infinite;
    }
    @keyframes spinner-border {
        to { transform: rotate(360deg); }
    }
</style>

<div id="talks-loading" class="text-center my-5">
    <div class="spinner-border text-primary" role="status"></div>
    <p class="mt-2 text-muted">Loading talks from Pretalx...</p>
</div>
<div id="talks-content"></div>

<script>
    (function() {
        var speakersUrl = 'https://talks.devopsdays.org/api/events/dodroxrox26/speakers/?limit=50';
        var submissionsUrl = 'https://talks.devopsdays.org/api/events/dodroxrox26/submissions/?limit=50';

        var loadingElement = document.getElementById('talks-loading');
        var contentElement = document.getElementById('talks-content');

        Promise.all([
            fetch(speakersUrl).then(function(r) { return r.json(); }),
            fetch(submissionsUrl).then(function(r) { return r.json(); })
        ])
        .then(function(results) {
            var speakersData = results[0];
            var submissionsData = results[1];

            var speakersMap = {};
            speakersData.results.forEach(function(speaker) {
                speakersMap[speaker.code] = {
                    name: speaker.name,
                    avatar: speaker.avatar_url || null
                };
            });

            var submissions = submissionsData.results.filter(function(sub) {
                return sub.state === 'confirmed' && sub.speakers && sub.speakers.length > 0;
            });

            // Sort: keynotes first, then regular talks, then ignites
            submissions.sort(function(a, b) {
                function rank(d) { return d >= 45 ? 0 : d === 5 ? 2 : 1; }
                return rank(a.duration) - rank(b.duration);
            });

            // Build section containers dynamically
            var keynoteSectionHeader = document.createElement('div');
            keynoteSectionHeader.className = 'talks-section-header mb-4';
            var keynoteSectionTitle = document.createElement('h2');
            keynoteSectionTitle.className = 'section-title';
            keynoteSectionTitle.innerText = 'Keynotes';
            keynoteSectionHeader.appendChild(keynoteSectionTitle);
            var keynoteDivider = document.createElement('hr');
            keynoteDivider.className = 'title-divider';
            keynoteSectionHeader.appendChild(keynoteDivider);
            var keynoteRow = document.createElement('div');
            keynoteRow.className = 'row';

            var talksSectionHeader = document.createElement('div');
            talksSectionHeader.className = 'talks-section-header my-5';
            var talksSectionTitle = document.createElement('h2');
            talksSectionTitle.className = 'section-title';
            talksSectionTitle.innerText = 'Conference Talks';
            talksSectionHeader.appendChild(talksSectionTitle);
            var talksDivider = document.createElement('hr');
            talksDivider.className = 'title-divider';
            talksSectionHeader.appendChild(talksDivider);
            var regularTalksRow = document.createElement('div');
            regularTalksRow.className = 'row';

            var igniteSectionHeader = document.createElement('div');
            igniteSectionHeader.className = 'talks-section-header my-5';
            var igniteSectionTitle = document.createElement('h2');
            igniteSectionTitle.className = 'section-title';
            igniteSectionTitle.innerText = 'Ignite Talks';
            igniteSectionHeader.appendChild(igniteSectionTitle);
            var igniteDivider = document.createElement('hr');
            igniteDivider.className = 'title-divider';
            igniteSectionHeader.appendChild(igniteDivider);
            var igniteTalksRow = document.createElement('div');
            igniteTalksRow.className = 'row';

            submissions.forEach(function(talk) {
                var duration = talk.duration;
                var isKeynote = duration >= 45;
                var isIgnite = duration === 5;
                var badgeClass = isKeynote ? 'badge-keynote' : (isIgnite ? 'badge-ignite' : 'badge-talk');
                var typeLabel = isKeynote ? '\u2605 Keynote' : (isIgnite ? 'Ignite' : 'Talk');

                var speakerNames = talk.speakers
                    .map(function(code) { return speakersMap[code] ? speakersMap[code].name : 'TBD'; })
                    .join(', ');

                var col = document.createElement('div');
                col.className = isKeynote ? 'col-md-6 col-lg-6 talk-card-col' : 'col-md-6 col-lg-4 talk-card-col';

                var card = document.createElement('div');
                card.className = 'talk-card';

                var cardHeader = document.createElement('div');
                if (talk.image) {
                    cardHeader.className = 'talk-card-header has-image';
                    cardHeader.style.backgroundImage = 'url(' + talk.image + ')';
                } else {
                    cardHeader.className = 'talk-card-header';
                }
                cardHeader.onclick = function() {
                    window.open('https://talks.devopsdays.org/dodroxrox26/talk/' + talk.code, '_blank');
                };

                var badge = document.createElement('span');
                badge.className = 'talk-badge ' + badgeClass;
                badge.innerText = typeLabel;
                cardHeader.appendChild(badge);

                var title = document.createElement('h3');
                title.className = 'talk-title';
                title.innerText = talk.title;
                cardHeader.appendChild(title);

                var speakersDiv = document.createElement('div');
                speakersDiv.className = 'talk-speakers';
                talk.speakers.forEach(function(code) {
                    var spk = speakersMap[code];
                    var chip = document.createElement('div');
                    chip.className = 'speaker-chip';
                    if (spk && spk.avatar) {
                        var avatarImg = document.createElement('img');
                        avatarImg.src = spk.avatar;
                        avatarImg.referrerPolicy = 'no-referrer';
                        avatarImg.className = 'speaker-avatar';
                        avatarImg.alt = spk ? spk.name : '';
                        chip.appendChild(avatarImg);
                    } else {
                        var iconDiv = document.createElement('div');
                        iconDiv.className = 'speaker-icon-fallback';
                        var icon = document.createElement('i');
                        icon.className = 'fa fa-user';
                        iconDiv.appendChild(icon);
                        chip.appendChild(iconDiv);
                    }
                    var nameSpan = document.createElement('span');
                    nameSpan.innerText = spk ? spk.name : 'TBD';
                    chip.appendChild(nameSpan);
                    speakersDiv.appendChild(chip);
                });
                cardHeader.appendChild(speakersDiv);

                var cardBody = document.createElement('div');
                cardBody.className = 'talk-card-body';

                var abstractParagraph = document.createElement('p');
                abstractParagraph.className = 'talk-abstract';
                abstractParagraph.innerText = talk.abstract || 'No description provided.';
                cardBody.appendChild(abstractParagraph);

                if (talk.abstract && talk.abstract.length > 180) {
                    var readMoreBtn = document.createElement('button');
                    readMoreBtn.className = 'read-more-btn';
                    var btnText = document.createElement('span');
                    btnText.innerText = 'Read More ';
                    readMoreBtn.appendChild(btnText);
                    var btnIcon = document.createElement('i');
                    btnIcon.className = 'fa fa-chevron-down';
                    readMoreBtn.appendChild(btnIcon);
                    readMoreBtn.onclick = function() {
                        if (abstractParagraph.classList.contains('expanded')) {
                            abstractParagraph.classList.remove('expanded');
                            btnText.innerText = 'Read More ';
                            btnIcon.className = 'fa fa-chevron-down';
                        } else {
                            abstractParagraph.classList.add('expanded');
                            btnText.innerText = 'Read Less ';
                            btnIcon.className = 'fa fa-chevron-up';
                        }
                    };
                    cardBody.appendChild(readMoreBtn);
                }

                var cardFooter = document.createElement('div');
                cardFooter.className = 'talk-card-footer';
                var durationSpan = document.createElement('span');
                var clockIcon = document.createElement('i');
                clockIcon.className = 'fa fa-clock-o';
                durationSpan.appendChild(clockIcon);
                durationSpan.appendChild(document.createTextNode(' ' + duration + ' mins'));
                cardFooter.appendChild(durationSpan);

                card.appendChild(cardHeader);
                card.appendChild(cardBody);
                card.appendChild(cardFooter);
                col.appendChild(card);

                if (isKeynote) {
                    keynoteRow.appendChild(col);
                } else if (isIgnite) {
                    igniteTalksRow.appendChild(col);
                } else {
                    regularTalksRow.appendChild(col);
                }
            });

            if (keynoteRow.children.length > 0) {
                contentElement.appendChild(keynoteSectionHeader);
                contentElement.appendChild(keynoteRow);
            }
            contentElement.appendChild(talksSectionHeader);
            contentElement.appendChild(regularTalksRow);
            contentElement.appendChild(igniteSectionHeader);
            contentElement.appendChild(igniteTalksRow);

            loadingElement.style.display = 'none';
            contentElement.style.display = 'block';
        })
        .catch(function(err) {
            console.error('Error fetching talks:', err);

            var alertDiv = document.createElement('div');
            alertDiv.className = 'alert alert-danger';
            alertDiv.setAttribute('role', 'alert');

            var heading = document.createElement('h4');
            heading.className = 'alert-heading';
            heading.innerText = 'Failed to load talks';
            alertDiv.appendChild(heading);

            var errMsg = document.createElement('p');
            errMsg.innerText = String(err);
            alertDiv.appendChild(errMsg);

            loadingElement.innerHTML = '';
            loadingElement.appendChild(alertDiv);
        });
    })();
</script>
