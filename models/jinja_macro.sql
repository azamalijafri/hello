MODEL (
  name demo.jinja_macro,
  kind VIEW
);

JINJA_STATEMENT_BEGIN;
{{ pre_hook() }}
JINJA_END;;

JINJA_QUERY_BEGIN;
SELECT 
{{ alias('invoice_id', 'PRODUCT_INVOICE_ID')}}
FROM 
demo.external_model
JINJA_END;;

JINJA_STATEMENT_BEGIN;
{{ post_hook() }}
JINJA_END;