all: help

.PHONY: help
help:
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

.PHONY: pip
pip: ## Installs project dependencies.
	pip install -q -r requirements.txt

.PHONY: run-test
run-test: ## Execute test behave.
	behave -f json.pretty -o ./report/results/report.json

.PHONY: behave2cucumber
behave2cucumber: ## Convert json behave to json cucumber.
	python -m behave2cucumber -i ./report/results/report.json -o ./report/results/report.json 

.PHONY: generate-cucumber-html
generate-cucumber-html: ## Generate html.
	cd report/ && npm install && node index.js	

.PHONY: test
test: ## Total execution: Install dependencies, run tests and report.
	make pip
	make run-test
	make behave2cucumber 
	make generate-cucumber-html