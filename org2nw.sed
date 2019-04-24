#!/bin/bash
sed '
s/^#+begin_export latex/@/
s/^#+begin_src.*<</<</
s/\/\/ *<</<</
/^#+end/d
/^\*/d
s/^  //
' $@
