from sqlmesh import macro

@macro()
def prehook(evaluator, x, y):
    print('hello world')
    return