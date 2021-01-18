class MacroCalculations

    def initialize(user, tdee)
        @user = user
        @tdee = tdee
        @meals_per_day = @user.diet.meals_per_day
    end

    def macro_calculation
        recommended = {
        daily_macros: {
            calories: @tdee,
            protein: total_protein,
            carbs: total_carbs,
            fat: total_fat
        },
        per_meal_macros: {
            calories: per_meal_calories,
            carbs: per_meal_carbs,
            fat: per_meal_fat,
            protein: per_meal_protein
        }
    }
    end


    private

    def total_protein
        ((@tdee * 0.33) / 4).floor
    end

    def total_carbs
        ((@tdee * 0.33) / 4).floor
    end

    def total_fat 
        ((@tdee * 0.34) / 9).floor
    end

    def per_meal_calories
        @tdee / @meals_per_day
    end

    def per_meal_protein
        total_protein / @meals_per_day
    end

    def per_meal_carbs
        total_carbs / @meals_per_day
    end

    def per_meal_fat
        total_fat / @meals_per_day
    end

    


end