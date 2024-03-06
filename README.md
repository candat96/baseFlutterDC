# h247-mobile-app

## Getting Started

- flutter pub get
- flutter run

## Install git hook

- dart run husky install
- dart run husky add .husky/pre-commit "dart test"
- git add .husky/pre-commit

## Generate module api , modle

- flutter pub run build_runner build --delete-conflicting-outputs

## Generate splash screen

- dart run flutter_native_splash:create

## Generate icon app

- flutter pub run flutter_launcher_icons

## Commit lint

- Commit lint format: `type(scope?): subject`
  - `type` can be
    - `build`: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
    - `ci`: Changes to our CI configuration files and scripts (example scopes: Gitlab CI, Circle, BrowserStack, SauceLabs)
    - `chore`: add something without touching production code (Eg: update npm dependencies)
    - `docs`: Documentation only changes
    - `feat`: A new feature
    - `fix`: A bug fix
    - `perf`: A code change that improves performance
    - `refactor`: A code change that neither fixes a bug nor adds a feature
    - `revert`: Reverts a previous commit
    - `style`: Changes that do not affect the meaning of the code (Eg: adding white-space, formatting, missing semi-colons, etc)
    - `test`: Adding missing tests or correcting existing tests
  - `scope` is optional.
  - `subject` is what you do with code.
  - Example: `git commit -m "docs(README.md): update commit-lint format"`
