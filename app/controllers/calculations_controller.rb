class CalculationsController < ApplicationController
    def calculate
        input = params[:numbers]
        number_input=input.strip.delete_prefix('"').delete_suffix('"').gsub("\\n", "\n")
        result = Calculator.add(number_input)
        render json: { result: result }
    end
end
