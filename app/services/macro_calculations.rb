class MacroCalculations

    def initialize(user, tdee)
        @user = user
        @tdee = tdee
    end

    def macro_calculation
        recommended = {
        calories: @tdee,
        macros: {
            protein: protein,
            carbs: carbs,
            fat: fat
        },
        meals_per_day: @user.diet.meals_per_day
    }
    end

    private

    def protein
        ((@tdee * 0.33) / 4).floor
    end

    def carbs
        ((@tdee * 0.33) / 4).floor
    end

    def fat 
        ((@tdee * 0.34) / 9).floor
    end

end