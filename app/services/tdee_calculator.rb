class TdeeCalculator

    def initialize(user)
        @user = user
    end

    ACTIVITY_LEVEL = {
        "sedentary" => 1.2,
        "mild" => 1.375,
        "moderate" => 1.55,
        "heavy" => 1.725,
        "very_heavy" => 1.9
    }

    def calculate_tdee
        (calculate_bmr * ACTIVITY_LEVEL[@user.diet.activity_level]).floor
    end

    private

    def calculate_bmr
        if @user.sex == "male"
            (66.47 + (6.24 * @user.user_weights.last.weight) + (12.7 * @user.height) - (6.755 * user_age))
        else
            (655.1 + (4.35 * @user.user_weights.last.weight) + (4.7 * @user.height) - (4.7 * user_age))
        end
    end

    def user_age
        ((Time.zone.now - @user.date_of_birth.to_time) / 1.year.seconds).floor
    end
end