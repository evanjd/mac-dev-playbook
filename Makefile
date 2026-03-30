.PHONY: lint fix

lint:
	yamllint .
	ansible-lint

fix:
	yamlfix .
