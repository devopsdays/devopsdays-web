+++
Title = "Speakers"
Type = "speakers"
Description = "Palestrantes do DevOpsDays Recife 2026"
+++

<style>
	.recife-speakers-grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
		gap: 24px;
	}
	.recife-speaker-card {
		border: 1px solid #e1e6e8;
		border-radius: 8px;
		overflow: hidden;
		height: 100%;
		background: #fff;
	}
	.recife-speaker-photo {
		display: block;
		width: 100%;
		height: 260px;
		object-fit: cover;
	}
	.recife-speaker-content {
		padding: 18px;
	}
	.recife-speaker-content h3 {
		margin-top: 0;
		color: #0082ab;
	}
	.recife-speaker-content h4 {
		font-size: 1rem;
		line-height: 1.4;
	}
	.recife-speaker-content p {
		color: #56636a;
	}
</style>

<div class="recife-speakers-grid">
	{{< recife_speakers >}}
</div>
