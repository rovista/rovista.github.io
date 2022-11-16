main:
	hugo server --buildDrafts --poll 700ms


dev: dev-no-tidy tidy
