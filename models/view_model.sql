MODEL (
    name demo.view_model,
    kind VIEW,
    audits (UNIQUE_VALUES(columns=(item_id)))
  );

  SELECT COUNT(*) AS COUNT FROM demo.seed_model GROUP BY ITEM_ID