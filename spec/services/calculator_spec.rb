# spec/services/calculator_spec.rb
require 'rails_helper'

RSpec.describe Calculator, type: :service do
  describe ".add" do
    context "when the input is empty" do
      it "returns 0 for an empty string" do
        expect(Calculator.add("")).to eq(0)
      end
    end
  end
end
