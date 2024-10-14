(lang dune 3.17)

(name CFGAnalyzer)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name <author@example.com>")

(maintainers "Maintainer Name <maintainer@example.com>")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name CFGAnalyzer)
 (synopsis "CFGAnalyzer context free grammar analysis tool.")
 (description "CFGAnalyzer context free grammar analysis tool.")
 (depends ocaml dune ocaml-sat-solvers)
 (tags
  ("context free grammars" "formal methods")))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
