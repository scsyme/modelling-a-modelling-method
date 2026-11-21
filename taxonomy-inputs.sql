SELECT producer.name, artefact.name
FROM stage AS consumer
JOIN uses_artefact AS usage ON usage.stage_position = consumer.position
JOIN artefact ON artefact.name = usage.artefact_name
JOIN stage AS producer ON producer.position = artefact.produced_by
WHERE consumer.name = 'Taxonomy' AND producer.position < consumer.position
ORDER BY producer.position, artefact.name;
