# Modelling a modelling method

An independent learning experiment applying Jessica Talisman’s Ontology Pipeline to the pipeline itself. Can a model of the method answer a practical question about how its stages fit together?

## Experiment 1 · What uses the approved vocabulary?

**Question.** Which later stages does our model record as using the vocabulary produced in stage 1?

**Prediction.** Taxonomy. Stage 3 in Talisman’s Studio takes approved concepts and places them in a hierarchy. This first experiment records just that dependency. Other stages may also use the vocabulary. An absent row means we have yet to record evidence for it. [Source: Ontology Pipeline Studio, stage 3](https://jesstalisman-ia.github.io/ontology-pipeline/)

**Modelling decision.** A stage has a position. An artefact has a producer. Each recorded use links a stage to an artefact and carries a source. These relationships let the model distinguish the activity of agreeing terminology from the vocabulary people can subsequently use.

**Counterexample.** Imagine adding a seventh stage called Review. Giving it a place in the sequence tells us nothing about which artefacts its reviewers consult. The query should still return only Taxonomy.

## Run the experiment

From this directory, using Python 3:

```sh
python check.py
```

The check builds an in-memory SQLite database and runs the question before and after adding Review. Each run should print Taxonomy. All dependencies are included with Python.

Read [the model](model.sql), inspect [the question](question.sql), then try removing the recorded use. The check should now fail even though the stages are in exactly the same order.

## Next question

Can a stage use the output of several earlier stages? Add one sourced relationship and a question that makes the difference observable. Keep each modelling decision small enough to review in a commit.
