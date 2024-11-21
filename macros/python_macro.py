from sqlmesh import macro

@macro()
def multiply(evaluator, x, y):
  return x * y