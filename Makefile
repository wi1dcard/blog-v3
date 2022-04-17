.PHONY: pull-theme
pull-theme:
	git subtree pull --squash --prefix themes/papermod git@github.com:adityatelange/hugo-PaperMod.git master
