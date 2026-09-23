+++
Title = "Speakers"
Type = "speakers"
Description = "Palestrantes do DevOpsDays Recife 2026"
+++

<div id="pretalx-speakers" class="recife-pretalx-speakers" aria-live="polite">
	<p>Carregando palestrantes...</p>
</div>

<style>
	.recife-pretalx-speakers {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
		gap: 20px;
	}

	.recife-pretalx-speaker {
		border: 1px solid #e5e5e5;
		border-radius: 6px;
		padding: 20px;
		background: #fff;
	}

	.recife-pretalx-speaker-header {
		display: flex;
		align-items: center;
		gap: 14px;
		margin-bottom: 14px;
	}

	.recife-pretalx-speaker-avatar {
		width: 72px;
		height: 72px;
		flex: 0 0 72px;
		border-radius: 50%;
		object-fit: cover;
		background: #f0f0f0;
	}

	.recife-pretalx-speaker-name {
		margin: 0;
		font-size: 20px;
	}

	.recife-pretalx-speaker-talks {
		margin: 0 0 16px;
		padding-left: 20px;
	}

	.recife-pretalx-speaker-talks li {
		margin-bottom: 8px;
	}
</style>

<script>
	(() => {
		const eventUrl = 'https://talks.devopsdays.org/devopsdays-recife-2026';
		const scheduleUrl = `${eventUrl}/schedule/widget/v2.json`;
		const speakersContainer = document.getElementById('pretalx-speakers');

		const escapeHtml = (value) => String(value)
			.replaceAll('&', '&amp;')
			.replaceAll('<', '&lt;')
			.replaceAll('>', '&gt;')
			.replaceAll('"', '&quot;')
			.replaceAll("'", '&#039;');

		const getLocalizedTitle = (title) => {
			if (typeof title === 'string') return title;
			return title?.['pt-br']
				|| title?.pt
				|| title?.en
				|| Object.values(title || {})[0]
				|| 'Palestra';
		};

		const renderSpeakers = (schedule) => {
			const talksBySpeaker = new Map();

			schedule.talks
				.filter((talk) => talk.slot_type !== 'break' && talk.speakers?.length)
				.forEach((talk) => {
					talk.speakers.forEach((speakerCode) => {
						const speakerTalks = talksBySpeaker.get(speakerCode) || [];
						speakerTalks.push(getLocalizedTitle(talk.title));
						talksBySpeaker.set(speakerCode, speakerTalks);
					});
				});

			const speakers = schedule.speakers
				.filter((speaker) => talksBySpeaker.has(speaker.code))
				.sort((firstSpeaker, secondSpeaker) => firstSpeaker.name.localeCompare(secondSpeaker.name, 'pt-BR'));

			if (!speakers.length) {
				speakersContainer.innerHTML = '<p>A programação de palestrantes ainda não está disponível.</p>';
				return;
			}

			speakersContainer.innerHTML = speakers.map((speaker) => {
				const talks = talksBySpeaker.get(speaker.code)
					.map((talkTitle) => `<li>${escapeHtml(talkTitle)}</li>`)
					.join('');
				const avatar = speaker.avatar || speaker.avatar_thumbnail_default || '';
				const avatarMarkup = avatar
					? `<img class="recife-pretalx-speaker-avatar" src="${escapeHtml(avatar)}" alt="${escapeHtml(speaker.name)}">`
					: '<div class="recife-pretalx-speaker-avatar" aria-hidden="true"></div>';

				return `<article class="recife-pretalx-speaker">
					<div class="recife-pretalx-speaker-header">
						${avatarMarkup}
						<h2 class="recife-pretalx-speaker-name">${escapeHtml(speaker.name)}</h2>
					</div>
					<ul class="recife-pretalx-speaker-talks">${talks}</ul>
					<a href="${eventUrl}/speaker/${encodeURIComponent(speaker.code)}/" target="_blank" rel="noopener">Ver perfil no Pretalx</a>
				</article>`;
			}).join('');
		};

		fetch(scheduleUrl)
			.then((response) => {
				if (!response.ok) throw new Error('Falha ao carregar o Pretalx');
				return response.json();
			})
			.then(renderSpeakers)
			.catch(() => {
				speakersContainer.innerHTML = '<p>Não foi possível carregar os palestrantes agora. <a href="https://talks.devopsdays.org/devopsdays-recife-2026/speaker/" target="_blank" rel="noopener">Ver no Pretalx</a>.</p>';
			});
	})();
</script>
