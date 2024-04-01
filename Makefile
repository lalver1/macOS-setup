# Makefile to setup macOS Sonoma

default: setup

prepare: ## Install brew, latest Bash, and Git
	@bash prepare.sh

set_shell: ## Set shell to use Bash
	@bash set_default_shell.sh

config: ## Setup Bash (.bash_profile and .bashrc) and Starship
	@ls bash | xargs -I {} cp ${PWD}/bash/{} ~/.{}
	@ls config | xargs -I {} cp ${PWD}/config/{} ~/.config/{}

brew: ## Install other brew packages
	@bash brew.sh

setup: prepare set_shell config brew

.PHONY: prepare set_shell config brew

