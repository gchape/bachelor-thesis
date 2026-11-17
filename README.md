# Design and Evaluation of an MVCC-Based STM in Clojure

**Bachelor's thesis · Giorgi Chapidze · Kutaisi International University · 2026**

School of Computer Science · Supervisor: Zaal Beriashvili-Lianov

**[Read the thesis](docs/thesis.pdf)** · **[Download the implementation](stm-v1.zip)** · **[View the source snapshot tag](https://github.com/gchape/bachelor-thesis/tree/stm-v1)**

## Overview

Clojure's built-in software transactional memory (STM) can retry a transaction,
causing side effects inside it to run more than once. This thesis investigates
how an STM implemented entirely in Clojure can coordinate those effects with
transaction outcomes, without modifying the language runtime.

The implementation combines a variation of Transactional Locking II (TL2) with
multi-version concurrency control (MVCC) and bounded version histories.
Transaction hooks expose commit and rollback events. The thesis develops a
formal model, examines opacity, explains the implementation, and evaluates
throughput, contention, version history size, and latency.

## Read the thesis

The [compiled PDF](docs/thesis.pdf) contains the complete 54-page thesis,
including the bibliography. Its six chapters cover:

1. **Introduction** — motivation, side effects, and the public API.
2. **Literature review** — concurrency, transactional memory, and Clojure's STM.
3. **Formal model** — transactions, execution, the commit protocol, and opacity.
4. **Implementation** — reference histories, transaction lifecycle, conflict resolution, and hooks.
5. **Results and evaluation** — experimental setup, scalability, and latency.
6. **Conclusion** — findings, limitations, and future work.

## Explore the implementation

The [`stm-v1.zip`](stm-v1.zip) archive contains the source snapshot accompanying
the thesis: the STM, transaction hooks, tests, benchmark programs, results, and
Java Flight Recorder recordings. It extracts into `stm-v1/`.

The code retains its original `opusdb.*` namespaces so it matches the examples
in the thesis. The archive also includes its original README and Leiningen
configuration; references there to the former OpusDB repository are historical.
Use this repository's snapshot to obtain the implementation.

With a JDK and Leiningen installed, extract the archive and run the tests:

```bash
unzip stm-v1.zip
cd stm-v1
lein test
```

Leiningen downloads the dependencies declared in `project.clj`, including
Clojure 1.12.4. Benchmark configuration and entry points are included in the
archive's `project.clj` and `src/opusdb/benchmark/` directory.

The snapshot is preserved by the [`stm-v1` tag](https://github.com/gchape/bachelor-thesis/tree/stm-v1).
To check the archive's integrity:

```bash
sha256sum stm-v1.zip
# 39f95ea238e447785d1fed15ae153dd70849894261ccc95be8e8d1316a9d3098  stm-v1.zip
```

## Build the thesis PDF

Install TeX Live with pdfLaTeX, BibTeX, `latexmk`, and the packages used in
[`main.tex`](main.tex). These include `newtx`, `newtxtt`, `multirow`, `minted`,
TikZ, and PGFPlots, together with their font dependencies. Code highlighting
requires `latexminted` for minted 3, or Pygments for minted 2.

From the repository root:

```bash
./scripts/build-thesis.sh
```

The script resolves the bibliography and cross-references, writes intermediate
files to `build/`, and saves the finished PDF to [`docs/thesis.pdf`](docs/thesis.pdf).
It enables shell escape for code highlighting. The checked-in PDF was built
with TeX Live 2026.

## Repository layout

| Path                                                 | Contents                                          |
| ---------------------------------------------------- | ------------------------------------------------- |
| [`docs/thesis.pdf`](docs/thesis.pdf)                 | Compiled thesis                                   |
| [`main.tex`](main.tex)                               | LaTeX entry point and front matter                |
| [`chapters/`](chapters/)                             | Six thesis chapters                               |
| [`references.bib`](references.bib)                   | Bibliography                                      |
| [`stm-v1.zip`](stm-v1.zip)                           | Implementation, tests, benchmarks, and recordings |
| [`scripts/build-thesis.sh`](scripts/build-thesis.sh) | PDF build script                                  |

## License

The thesis is licensed under [Creative Commons Attribution 4.0 International](license).
The implementation is distributed under its own license, included as
`stm-v1/LICENSE` inside the source archive.
