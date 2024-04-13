import json
def print_workout(file_path: str) -> dict:
    with open(file_path, 'r') as file:
        data = json.load(file)
    print(data)
print_workout('/Users/arushshakya/Downloads/PlanPerfect/backend/workouts.json')