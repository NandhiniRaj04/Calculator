# spec/services/calculator_spec.rb
require 'rails_helper'

RSpec.describe Calculator, type: :service do
  describe ".add" do
    context "when the input is empty" do
      it "returns 0 for an empty string" do
        expect(Calculator.add("")).to eq(0)
      end

      it "returns 0 for a nil input" do
        expect(Calculator.add(nil)).to eq(0)
      end
    end

    context "when the input contains numbers" do
        it "returns the sum of the numbers separated by commas" do
          expect(Calculator.add("1,2,3")).to eq(6)
        end

        it "returns the sum of the numbers separated by newlines" do
            expect(Calculator.add("1\n2\n3")).to eq(6)
        end
    end
  end
end
