# review-1

school report company
Help teachers to find out how their students perform on tests
Get a string of comma-separated values (test results)
Like me to generate a simple report

NB: the strings will be "at least" comma-separated. Examples include comma+whitespace, multicomma.

Input:
"Green, Green, Amber, Red, Green"

Return value:
"Green: 3\nAmber: 1\nRed: 1"

- string of each test result type, colon space, number of those results in the input; each type is separated by a newline

"Green,,Green,Red," =>	"Green: 2\nRed: 1"

If not in the input, should not appear in the output.
Output order is always green-amber-red

Test case examples:

```ruby
'' => 'No results have been given'

'Green' => 'Green: 1'
'Amber' => 'Amber: 1'
'Red' => 'Red: 1'

'Green, Amber, Red' => "Green: 1\nAmber: 1\nRed: 1"
# out-of-order:
'Amber, Green, Red' => "Green: 1\nAmber: 1\nRed: 1"
# original
"Green, Green, Amber, Red, Green" => "Green: 3\nAmber: 1\nRed: 1"
#mixedcase
'green,green,AMBER,red,Red' => "Green: 2\nAmber: 1\Red: 2"
# where separated by multiple commas, no spaces
"Green,,Green,Red," => "Green: 2\nRed: 1"
# account for whitespace
'    Red    ' => "Red: 1"

```
