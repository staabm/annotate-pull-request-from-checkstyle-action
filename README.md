# annotate-pull-request-from-checkstyle-action

annotate-pull-request-from-checkstyle-action is a GitHub Action that uses cs2pr to  converts checkstyle XML files to GitHub PR annotations.

![Context Example](https://github.com/mheap/phpunit-github-actions-printer/blob/master/phpunit-printer-context.png?raw=true)
_Images from https://github.com/mheap/phpunit-github-actions-printer_

## Usage

```yml
name: CS2PR
on:
  - pull_request

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - uses: staabm/annotate-pull-request-from-checkstyle-action@v1
        with:
          files: checkstyle.xml
          notices-as-warnings: true # optional
```

### Action Inputs

- **files** _(Required)_ - The checkstyle XML files to convert to GitHub PR annotations separated by semicolons
- **graceful-warnings** _(Optional)_ - Don't exit with error codes if there are only warnings
  - Expected value: "true"
- **colorize** _(Optional)_ - Colorize the output (still compatible with Github Annotations)
  - Expected value: "true"
- **notices-as-warnings** _(Optional)_ - Convert notices to warnings (Github does not annotate notices otherwise)
  - Expected value: "true"
- **errors-as-warnings:** _(Optional)_ - Downgrade errors to warnings
  - Expected value: "true"
- **prepend-filename** _(Optional)_ - Prepend error 'filename' attribute to the message
  - Expected value: "true"
- **prepend-source** _(Optional)_ - Prepend error 'source' attribute to the message
  - Expected value: "true"
