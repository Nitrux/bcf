# bcf

> _Simple configuration file format that runs on top of bash._

## Usage.

```shell
#   Comments work as usual.
#   This will build an array called `todo_list`.

todo_list "Buy groceries for breakfast."
        , "Meet my friend for breakfast."
        , "Publish bcf."
        , "Travel to Milan."
        , "Don't forget to come back."
```

From your script:
- `source bcf [groups]`, or define your groups with `def <group [groups]>`
  after sourcing `bcf`.
- `source` your configuration file.


## Desgin.

`bcf` is just two functions: `def` and `,` (yes, `,` is a function!).

- `def <group> [args]` builds a function that appends it's arguments to
  the array `<group>`.
- `,` appends its arguments to the array of the most-recently used group.


## Why.

- To relieve the programmer from the task of parsing files (great fun
  to do it in shell! :))
- To avoid exposing the user to configuring a script with mere shell
  variables or arrays.
- `\` at end of line is ugly. :)
