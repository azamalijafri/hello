MODEL (
    name sql_models.view_model,
    kind VIEW,
  );

  SELECT invoice_id FROM sql_models.external_model