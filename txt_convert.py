import pandas as pd

df = pd.read_csv('MonitorMeal.csv')
df.to_csv('output.csv', index=False)

    # # GLUCOSE LIST IN FLOAT VALUES in mg/dl
    # for i in glucose_str:
    #     try:
    #         glucose_flt.append(float(i))
    #     except Exception:
    #         print('Bad: "', i, '"', sep='')

    # # CARB LIST FROM CSV INTO STRING LIST
    # for col in csv.DictReader(filename):
    #     carbohydrate_str.append(col["MealSize"])

    # # CARB LIST IN FLOAT VALUES
    # for j in carbohydrate_str:
    #     carbohydrate_flt.append(float(j))