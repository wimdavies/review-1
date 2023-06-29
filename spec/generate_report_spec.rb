require 'generate_report'

RSpec.describe 'generate_report' do
  context 'when input equals empty string' do
    it 'returns appropriate message' do
      expect(generate_report('')).to eq 'No results have been given'
    end
  end
end