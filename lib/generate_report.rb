def generate_report(string)
  return 'No results have been given' if string == ""

  green_count = 0
  amber_count = 0
  red_count = 0

  string.split(', ').each do |result|
    case result
    when 'Green'
      green_count += 1
    when 'Amber'
      amber_count += 1
    when 'Red'
      red_count += 1
    end
  end

  report_array = []
  report_array << "Green: #{green_count}" if green_count > 0
  report_array << "Amber: #{amber_count}" if amber_count > 0
  report_array << "Red: #{red_count}" if red_count > 0

  report = report_array.join("\n")
end