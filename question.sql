SELECT consumer.name
FROM uses_artefact AS usage
JOIN stage AS consumer ON consumer.position = usage.stage_position
JOIN artefact ON artefact.name = usage.artefact_name
WHERE artefact.name = 'Approved vocabulary'
  AND consumer.position > artefact.produced_by
ORDER BY consumer.position;
