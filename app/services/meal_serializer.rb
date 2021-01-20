class MealSerializer

    def initialize(meal_object)
        @meal = meal_object
    end

    def to_serialized_json
        options = {
            include: {
                foods: {
                    except: [:updated_at]
                }
            }
        }
        @meal.to_json(options)
    end
end