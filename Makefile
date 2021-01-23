index: sign
	helm repo index --url https://avanier.github.com/ax-helm-charts/ .

packages: lint
	helm package helm-charts/*

lint:
	helm lint helm-charts/*

sign: packages
	for _archive in ./*.tgz; do \
		rm "$${_archive}.sig"; \
		gpg --detach-sign "$${_archive}"; \
	done
