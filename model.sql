CREATE TABLE stage (
    position INTEGER PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);
CREATE TABLE artefact (
    name TEXT PRIMARY KEY NOT NULL,
    produced_by INTEGER NOT NULL REFERENCES stage(position)
);
CREATE TABLE uses_artefact (
    stage_position INTEGER NOT NULL REFERENCES stage(position),
    artefact_name TEXT NOT NULL REFERENCES artefact(name),
    source TEXT NOT NULL,
    PRIMARY KEY (stage_position, artefact_name)
);

INSERT INTO stage VALUES
    (1, 'Controlled vocabulary'), (2, 'Metadata schema'), (3, 'Taxonomy'),
    (4, 'Thesaurus'), (5, 'Ontology'), (6, 'Knowledge graph');
INSERT INTO artefact VALUES ('Approved vocabulary', 1);
-- The Stage 3 introduction and hierarchy exercise describe this use.
INSERT INTO uses_artefact VALUES
    (3, 'Approved vocabulary', 'https://jesstalisman-ia.github.io/ontology-pipeline/');

-- Studio, stage 2 defines the profile. Stage 3 describes its role in taxonomy design.
INSERT INTO artefact VALUES ('Metadata application profile', 2);
INSERT INTO uses_artefact VALUES
    (3, 'Metadata application profile', 'https://jesstalisman-ia.github.io/ontology-pipeline/');
