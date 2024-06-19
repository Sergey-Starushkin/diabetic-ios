BREW := /usr/local/bin/brew
CHILD_MAKEFILES_DIRS = $(sort $(dir $(wildcard */*/Makefile)))

PACKAGES_DIRS = $(sort $(dir $(wildcard Common/*/Sources/**)))

all: bootstrap

## bootstrap: Bootstrap project dependencies for development
bootstrap: homebrew hook
	mint bootstrap

## project: Generate .xcodeproj file using XcodeGen utility
project:
	mint run "yonaskolb/XcodeGen"

## gems: Install ruby dependencies
gems:
	bundle install

## homebrew: Bootstrap Homebrew dependencies
homebrew: $(BREW)
	brew bundle check || brew bundle

## fmt: Launch swift files code formatter (only changes)
fmt:
	bash ./Scripts/fmt.sh

## fullfmt: Launch swift files code formatter
fullfmt:
	bash ./Scripts/fullfmt.sh

## swiftgen: Trigger code generation from assets with swiftgen tool
swiftgen:
	mint run swiftgen

	@for d in $(CHILD_MAKEFILES_DIRS); do ( cd $$d && make swiftgen; ); done

## hook: Install git pre-commit hook
hook:
	[ -d "./.git/hooks" ] || rm -rf "./.git/hooks"
	[ -d "./.git/hooks" ] || mkdir "./.git/hooks"
	cp ./Hooks/pre-commit ./.git/hooks/pre-commit
	cp ./Hooks/prepare-commit-msg ./.git/hooks/prepare-commit-msg

	chmod +x .git/hooks/pre-commit
	chmod +x .git/hooks/prepare-commit-msg

## clean: Clean up project files
clean:
	git clean -Xfd

## screengen: Generate screen files
screengen:
	cp -r "MakeTemplates/Screen/" "$(wildcard */*/*/$(module)/*/*/Screens/)$(name)"
	rename -v 's/{Name}/$(name)/'  $(wildcard */*/*/$(module)/*/*/Screens/)$(name)/*
	find $(wildcard */*/*/$(module)/*/*/Screens/)$(name)/ -name '*' -type f -exec sed -i '' -e 's/{Name}/$(name)/g' {} \;

# cellgen: Generate cell files
cellgen:
	[ -d "$(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/Subviews" ] || mkdir "$(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/Subviews"
	cp -r "MakeTemplates/Cell/" "$(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/Subviews/$(name)Cell"
	rename -v 's/{Name}/$(name)/' $(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/Subviews/$(name)Cell/*
	find $(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/Subviews/$(name)Cell/ -name '*' -type f -exec sed -i '' -e 's/{Name}/$(name)/g' {} \;		
	find $(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/Subviews/$(name)Cell/ -name '*.xib' -type f -exec sed -i '' -e 's/{Module}/$(module)/g' {} \;

# modulegen: Generate module files
modulegen:
	cp -r "MakeTemplates/FeatureModule/" "Features/$(package)"

	mv "Features/$(package)/Packages/{package}" "Features/$(package)/Packages/$(package)"
	mv "Features/$(package)/Packages/$(package)/Tests/{package}Tests" "Features/$(package)/Packages/$(package)/Tests/$(package)Tests"
	mv "Features/$(package)/Packages/$(package)/Sources/{package}" "Features/$(package)/Packages/$(package)/Sources/$(package)"	

	find Features/$(package) -name '*.swift' -type f -exec sed -i '' -e 's/{package}/$(package)/g' {} \;
	find Features/$(package) -name '*.yml' -type f -exec sed -i '' -e 's/{package}/$(package)/g' {} \;

	(cd "Features/$(package)" ; make project)

# sectiongen: Generate child section files
sectiongen:
	[ -d "$(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/ChildModules" ] || mkdir "$(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/ChildModules"
	cp -r "MakeTemplates/CellSection/" "$(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/ChildModules/$(name)"

	rename -v 's/{Name}/$(name)/' $(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/ChildModules/$(name)/*
	rename -v 's/{Name}/$(name)/' $(wildcard */*/*/*/*/$(module)/Screens/)$(screen)/ChildModules/$(name)/Cell/*

	find $(wildcard */*/*/*/*/$(module)/Screens/$(screen)/ChildModules/)$(name) -name '*' -type f -exec sed -i '' -e 's/{Name}/$(name)/g' {} \;

## sonarqube: Analyze, test and send results to SonarQube
sonarqube: bootstrap project
	# Delete kz project, resolve conflict get_version_number_from_xcodeproj
	rm -rf sportmaster-kz.xcodeproj
    # Run lint and create reports directory
	bundle exec fastlane check
    # Run tests
	bundle exec fastlane test
    # Upload results to sonarqube
	bundle exec fastlane sonarqube

## help: Prints help message
help:
	@echo "Usage: \n"
	@sed -n 's/^##//p' ${MAKEFILE_LIST} | column -t -s ':' |  sed -e 's/^/ /' | sort

$(BREW):
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" | ruby

.PHONY: all help bootstrap test gems certs lint fmt fullfmt homebrew swiftlint icon project clean hook
