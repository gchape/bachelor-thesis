# STM v1 — thesis source snapshot

Release tag: `stm-v1`

Source snapshot accompanying the thesis, including the Clojure STM implementation,
transaction hooks, tests, benchmark programs, benchmark results, and JFR recordings.

Attach `stm-v1.zip` to this release. It extracts into `stm-v1/`.
The original `opusdb.*` namespaces and all file contents are preserved.
The original license is included in the archive as `LICENSE`.

Archive provenance:

- Original archive: `pyrelatio-thesis-v1.zip`
- Original archive Git commit recorded in its ZIP comment: `f15e5f91f9184b3c4329e8fd8a2a722022869c59`
- Original archive SHA-256: `f6e1a761cae287de6be98fda7d66d547d1839bdb86dff9c2682d25829ca79941`
- Release archive SHA-256: `39f95ea238e447785d1fed15ae153dd70849894261ccc95be8e8d1316a9d3098`

## Publication

Publication is pending. After committing the thesis changes, create the `stm-v1`
tag and publish a GitHub release in `gchape/bachelor-thesis`, attaching `stm-v1.zip`.
The thesis bibliography is prepared to cite:
https://github.com/gchape/bachelor-thesis/releases/tag/stm-v1

With GitHub CLI installed and authenticated, publish from the intended thesis commit:

```sh
gh release create stm-v1 stm-v1.zip --repo gchape/bachelor-thesis --target "$(git rev-parse HEAD)" --title "STM v1 — thesis source snapshot" --notes "Source snapshot accompanying the thesis. Includes implementation, tests, benchmarks, and recordings. Original opusdb namespaces and license are preserved."
```
