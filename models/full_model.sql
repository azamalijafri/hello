MODEL (
    name sql_models.full_model,
    kind FULL,
  );

  SELECT invoice_id FROM sql_models.external_model
    