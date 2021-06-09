index: sign
	helm repo index --url https://avanier.github.com/ax-helm-charts/ .

packages: lint
	helm package helm-charts/*

lint:
	helm lint helm-charts/*

sign: packages
	for _archive in ./*.tgz; do \
		rm "$${_archive}.sig" || true; \
		gpg --detach-sign --sign-with D766C712266ADEA49E47CB0C38BE1C0E3449F34D "$${_archive}"; \
	done
