# Modelling a modelling method

An independent learning experiment applying Jessica Talisman’s Ontology Pipeline to the pipeline itself. Can a model of the method answer a practical question about how its stages fit together?

## Experiment 1 · What uses the approved vocabulary?

**Question.** Which later stages does our model record as using the vocabulary produced in stage 1?

**Prediction.** Taxonomy. Stage 3 in Talisman’s Studio takes approved concepts and places them in a hierarchy. This first experiment records just that dependency. Other stages may also use the vocabulary. An absent row means we have yet to record evidence for it. [Source: Ontology Pipeline Studio, stage 3](https://jesstalisman-ia.github.io/ontology-pipeline/)

**Modelling decision.** A stage has a position. An artefact has a producer. Each recorded use links a stage to an artefact and carries a source. These relationships let the model distinguish the activity of agreeing terminology from the vocabulary people can subsequently use.

**Counterexample.** Imagine adding a seventh stage called Review. Giving it a place in the sequence tells us nothing about which artefacts its reviewers consult. The query should still return only Taxonomy.

## Experiment 2 · Which earlier outputs does Taxonomy use?

The vocabulary supplies concepts to arrange. The metadata application profile describes the fields and rules that guide the structure. We model both as inputs and ask which stage produced each one. This is our interpretation of the relationship Talisman describes in the Stage 3 introduction. [Source: Ontology Pipeline Studio, stages 2 and 3](https://jesstalisman-ia.github.io/ontology-pipeline/)

| Producing stage | Recorded input to Taxonomy |
| --- | --- |
| Controlled vocabulary | Approved vocabulary |
| Metadata schema | Metadata application profile |

**Try to break the claim.** Keep both earlier stages and both artefacts. Remove only the link recording Taxonomy’s use of the profile. The [inputs query](taxonomy-inputs.sql) should now return only the vocabulary. This tests whether the answer actually depends on the recorded use.

## Run the experiments

From this directory, using Python 3:

```sh
python check.py
```

The check builds an in-memory SQLite database and runs the question before and after adding Review. Both runs should print Taxonomy. It then runs the taxonomy inputs query before and after removing the profile link. All dependencies are included with Python.

Read [the model](model.sql), inspect [the question](question.sql), then try removing the recorded use. The check should now fail even though the stages are in exactly the same order.
