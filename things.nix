{ lib }:
with lib;
let things = ''
      bash
      fish
      c
      css
      sass
      elixir
      haskell
      latex
      markdown
      lisp
      pharo
      python
      ruby
      yaml
      git
      emacs
      firefox
      openstreetmap
    '';
in trace
  (concatMapStringsSep "\n"
    (thing: if thing == ""
            then ""
            else ''<code><img height="20" src="https://raw.githubusercontent.com/github/explore/597bebe80fb0066a1a125416dce1d933cbfd0856/topics/${thing}/${thing}.png" alt="${thing}" /></code>'')
    (splitString "\n" things))
  { }
