import os
def gen_chance_predicate(chance: float) -> None:
    with open(f'{os.path.dirname(__file__)}/{chance}.json', 'w') as file:
        file.write(f'{{\n  "condition": "random_chance",\n  "chance": {chance/100}\n}}')
gen_chance_predicate(0.01)
gen_chance_predicate(0.02)
gen_chance_predicate(0.05)
gen_chance_predicate(0.1)
gen_chance_predicate(0.3)
for chance in range(1, 100+1):
    gen_chance_predicate(chance)