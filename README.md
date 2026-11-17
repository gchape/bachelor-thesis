# Design and Evaluation of an MVCC-Based STM in Clojure

Bachelor's thesis by **Giorgi Chapidze**, Kutaisi International University,
School of Computer Science, 2026. Supervisor: Zaal Beriashvili-Lianov.

[Read the thesis (PDF)](docs/thesis.pdf) · [Download the STM source](stm-v1.zip) · [Browse the versioned snapshot](https://github.com/gchape/bachelor-thesis/tree/stm-v1)

The thesis presents a software transactional memory system implemented in Clojure,
using a variation of Transactional Locking II (TL2) with multi-version concurrency
control (MVCC). Commit and rollback hooks coordinate side effects with transaction
outcomes. The thesis covers the design, formal model, implementation, and
experimental evaluation.

## Repository contents

| Path                      | Contents                                                                        |
| ------------------------- | ------------------------------------------------------------------------------- |
| `docs/thesis.pdf`         | Compiled thesis                                                                 |
| `main.tex`                | LaTeX entry point and front matter                                              |
| `chapters/`               | Introduction, literature, formal model, implementation, results, and conclusion |
| `references.bib`          | Bibliography                                                                    |
| `stm-v1.zip`              | Archived Clojure implementation, tests, benchmarks, and JFR recordings          |
| `RELEASE_NOTES.md`        | Source archive provenance and release information                               |
| `scripts/build-thesis.sh` | PDF build script                                                                |

## STM source snapshot

Extract `stm-v1.zip` to obtain the `stm-v1/` project. The snapshot preserves the
original `opusdb.*` namespaces referenced in the thesis. Its original README,
Leiningen project configuration, and license are included in the archive.

The snapshot is identified by the Git tag [`stm-v1`](https://github.com/gchape/bachelor-thesis/tree/stm-v1).
Archive SHA-256: `39f95ea238e447785d1fed15ae153dd70849894261ccc95be8e8d1316a9d3098`.

## Build the PDF

Install a TeX Live distribution with pdfLaTeX, BibTeX, `latexmk`, and the packages
used in `main.tex`, including `newtx`, `newtxtt`, `minted`, TikZ, and PGFPlots.
The `minted` package also requires its syntax-highlighting helper (`latexminted`
for minted 3, or Pygments for minted 2).

From the repository root, run:

```bash
./scripts/build-thesis.sh
```

The script runs the LaTeX and bibliography passes, keeps intermediate files in
`build/`, and copies the finished document to `docs/thesis.pdf`. Shell escape is
enabled for code syntax highlighting.

## License

The thesis is licensed under [Creative Commons Attribution 4.0 International](license).
The archived STM implementation has its own license in `stm-v1/LICENSE` inside
`stm-v1.zip`.
