# bcf

> _Simple configuration file format that runs on top of bash._

## Usage.

Having this script:

```shell
#! /bin/bash

source bcf
def name shopping_list todo_list

source ~/.oblivion_aid

echo Name: "${name}."

echo
echo Groceries:
printf '  - %s\n' "${shopping_list[@]}"

echo
echo Things to do:
printf '  - %s\n' "${todo_list[@]}"
```

And this configuration file at `~/.oblivion_aid`:

```shell
# Comments work as usual.

name "Luis Lavaire"

todo_list "Buy groceries for breakfast."
        , "Meet my friend for breakfast."
        , "Publish bcf."
        , "Travel to Milan."
        , "Don't forget to come back."

shopping_list eggs
            , milk
            , bacon
            , ham
            , bagels  # Someone will have a yummy breakfast! :)
```

You'll get as output:

```
Name: Luis Lavaire.

Groceries:
  - eggs
  - milk
  - bacon
  - ham
  - bagels

Things to do:
  - Meet my friend for breakfast.
  - Publish bcf.
  - Travel to Milan.
  - Don't forget to come back.
```

##

`bcf` is just two functions: `def` and `,` (yes, `,` is a
function!).

- `def` builds a handler for a new group. A group is comprised
  of a function and an array, both have the same name, e.g:
  `def x` creates both a function and an array called `x`. The
  function, when called, appends its arguments to the array.
  However, most of the time you'll want `,` to fill those arrays
  for you...

- `,` appends its arguments to the array of the most-recently
  used group.

The purpose of `bcf` is to give the user a simple syntax for
configuring `bash` applications while relieving the programmer
from the task of parsing files (great fun to do it in shell! :))
or exposing the user to configuring their application directly
with variables or arrays. That's it!

## FAQs

- _This is too simple, I could just use plain shell instead!_ Go ahead.
- _I don't like the comma. I want something else._ Here you go: `- () { , "$@"; }`.
