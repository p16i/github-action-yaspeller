# Github Action for Yaspeller

**NOTE:** This is a minimal version; and I appreciete any suggest or feedback ❤️.

This action is a wrapper of [Yaspeller](https://github.com/hcodes/yaspeller). It searchs typos in your files and provides correction candidates.
This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

## Inputs

Currently, this action requires two parameters, namely 

### `filepath`
This parameter recieves a glob syntax, e.g. `*.md`.

### `dir`
This specifies the directory of our written content for the checking.


## Example
```
on: [push]

jobs:
  proofreading:
    runs-on: ubuntu-latest
    name: Test Good File
    steps:
      # To use this repository's private action, you must check out the repository
      - name: Checkout
        uses: actions/checkout@v2
      - name: Yaspeller Action
        uses: heytitle/github-action-yaspeller
        with:
          filepath: "*.md"
          dir: "./test-files/good"
```