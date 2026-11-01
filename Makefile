.PHONY: check lint

.DEFAULT_GOAL := lint

check:
	uv run ansible-playbook site.yaml --check

deploy:
	uv run ansible-playbook site.yaml --diff

lint:
	uv run ansible-playbook --syntax-check site.yaml
	uv run ansible-lint .
