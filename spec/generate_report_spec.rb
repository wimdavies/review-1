require 'generate_report'

RSpec.describe 'generate_report' do
  context 'when input equals empty string' do
    it 'returns appropriate message' do
      expect(generate_report('')).to eq 'No results have been given'
    end
  end

  context 'returns desired format for single examples of each result type' do
    it 'green' do
      expect(generate_report('Green')).to eq 'Green: 1'
    end

    it 'amber' do
      expect(generate_report('Amber')).to eq 'Amber: 1'
    end

    it 'red' do
      expect(generate_report('Red')).to eq 'Red: 1'
    end
  end

  context 'processes single examples of more than one type' do
    it 'when in output order' do
      result = generate_report('Green, Amber, Red')
      expect(result).to eq "Green: 1\nAmber: 1\nRed: 1"
    end

    it 'when not in output order' do
      result = generate_report('Amber, Green, Red')
      expect(result).to eq "Green: 1\nAmber: 1\nRed: 1"
    end
  end
end