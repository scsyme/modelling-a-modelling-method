# Candidate learning experiments

Captured 2026-11-24. Status: exploratory backlog, not an agreed roadmap. Revisit both the storage decision and experiment selection as the repository evolves.

## Purpose

Learn about the effectiveness, limitations, repeatability and scalability of Jessica Talisman's [Ontology Pipeline](https://jesstalisman-ia.github.io/ontology-pipeline/) through small, independently verifiable domains. The games are experimental subjects, not products. These ideas supplement the existing three experiments described in the [README](../README.md); they do not replace them or claim to be prescribed by the methodology.

## Candidate domains

| Domain | Learning opportunity / candidate hypothesis |
| --- | --- |
| Tic-tac-toe | A minimal end-to-end workflow can represent actors, board, actions, legal states and outcomes; exhaustive reachable-state checks are feasible. |
| Connect Four | Reuse spatial and winning-line concepts from tic-tac-toe; introduce gravity and placement constraints. Can both be generalised into an m,n,k-game model without premature abstraction? |
| N-Queens | Represent constraints (rows, columns, diagonals) independently of solving algorithms; generalise board size. |
| Minesweeper | Distinguish objective reality, observations, deduced facts and uncertainty; model adjacency and partial knowledge. |
| 4x4 Sudoku | Introduce overlapping row, column and region constraints with a small state space. |
| 9x9 Sudoku | Scale the model, distinguish puzzle validity, solution uniqueness, solving techniques and solver knowledge; consider reuse of the earlier open-knowledge candidate-elimination experiment. |
| Standard playing cards | Independently model cards, suits, ranks, decks and collections; distinguish card types from physical card instances. |
| Klondike solitaire | Compose the playing-card model with game-specific piles, ordering, hidden information and legal transitions. |
| FreeCell | Test whether a second game can consume the same card ontology without duplication; contrast visible information and move constraints. |
| Spider solitaire | Explore multiple decks and variant-specific suit rules. |
| Chess | Specialised piece behaviour, legal versus possible moves, check, castling rights, en passant, repetition and terminal conditions. |
| Battleships | Separate player perspectives, hidden knowledge and spatial constraints. |
| Mastermind | Deductive reasoning, feedback and candidate elimination. |
| Lights Out | Interdependent state changes and deterministic transformations. |
| Othello (Reversi) | Directional rules, conditional actions and cascading state changes. |
| Poker / Bridge | Potential later consumers of the standard playing-card ontology. |

## Provisional progression

Tic-tac-toe → Connect Four → N-Queens → Minesweeper → 4x4 Sudoku → 9x9 Sudoku → standard playing cards → Klondike → FreeCell → chess → cross-domain refactoring.

This is a candidate sequence, not a dependency chain or commitment. Select the next smallest experiment that tests a useful hypothesis. Other candidates may be substituted or skipped.

## Reuse and cross-domain questions

- Discover shared concepts (spatial structures, constraints, actors, actions, states, transitions, inference) through evidence from concrete domains rather than designing a universal game ontology upfront.
- Distinguish inheritance/specialisation from composition: Klondike is a kind of solitaire; solitaire uses playing cards, rather than inheriting from a card. Test reuse across FreeCell, Spider, Poker and Bridge.
- Distinguish reality from an actor's knowledge, justified inference and uncertainty. Minesweeper is particularly promising for transfer to testing, requirements analysis and AI-assisted reasoning.
- Can the same Sudoku model accommodate 4x4, 9x9, 16x16 and irregular regions? Which constraints genuinely generalise?
- Can a model distinguish valid states, reachable states, legal transitions and strategically desirable actions?
- Can we evolve a shared ontology without breaking existing consumers?

## Experiment selection and assessment

Before starting, review the actual pipeline stages and existing experiments. Define a small competency question, explicit prediction, evidence sources, modelling decisions, independent oracle or counterexample, and a reproducible check. Record which pipeline artefacts and stages are exercised; do not assume that every experiment needs every stage.

Candidate success criteria:
- Domain representation is accurate within explicitly stated scope.
- Competency questions can be answered from the model; where useful, executable behaviour can be derived.
- Independent checks and deliberate counterexamples distinguish correct from incorrect answers.
- Changes and reuse can be assessed against existing checks.
- Results record limitations and learning, including negative results.

Keep backlog ideas distinct from experiment specifications and observed results. No experiment has been approved or executed by this document. Revisit the sequence and the choice of GitHub as canonical storage when appropriate.
