MODEL (
    name sql_models.mesh_macro,
    kind VIEW
);

-- inline variables
-- @DEF(inline_var, 'value');

-- inline functions
@DEF(
    inline_function, 
    (x,y) -> x + y
);



-- SELECT * from sql_models.seed_model where id = @var_a
-- SELECT * from sql_models.seed_model where id = @VAR('var_a', null)
SELECT * from sql_models.seed_model where id=@inline_function(1,2)