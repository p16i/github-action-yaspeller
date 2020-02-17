# Github Action for Yaspeller

**NOTE:** This is a MVP version; I would appreciete any suggest or feedback ❤️.

This action is a wrapper of [Yaspeller](https://github.com/hcodes/yaspeller). It searches typos in your files and provides corrections.

## Inputs

Currently, this action requires two parameters, namely 

### `ext`
This is file extensions, e.g. `.md,.html`.

### `dir`
This specifies the directory of our written content for the checking.

### `dictionary`
You can also specify a dicionary for special words.

## Example
```
on: [push]

jobs:
  proofreading:
    runs-on: ubuntu-latest
    name: Proofreading
    steps:
      # To use this repository's private action, you must check out the repository
      - name: Checkout
        uses: actions/checkout@v2
      - name: Yaspeller Action
        uses: heytitle/github-action-yaspeller/v0.0.4
        with:
          ext: "*.md"
          dir: "./test-files/good"
```