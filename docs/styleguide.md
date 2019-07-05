# Style Guide for NMRC

In order to maintain consistent readable code throughout all of our projects, please follow the style guide.
This guide is based on the Python style guide: [https://www.python.org/dev/peps/pep-0008/](https://www.python.org/dev/peps/pep-0008/)

___
## ALWAYS COMMENT YOUR CODE
___
## Directory, Variables, Classes

Keep style consistent and keep in mind the inheritance of these files. One day someone will come back to these files and try to decipher your code (sometimes that someone is YOU). By keeping the code in a readable, consistent format it makes it easier to share and collaboratively work on code.

| Type | Style |
|------|------|
| directory | Always `lowercase`, meaningful, and no spaces. For readability consider adding an underscore '_'. |
| variable | Always `lower_case_with_underscores`, meaningful names with words separated with underscores. Avoid common variables names like 'x' unless that variable is used in simple contexts as in the index in a for loop. Generally, avoid the characters 'l' (lowercase letter el), 'I' (uppercase letter eye), 'O' (Uppercase letter oh) |
| constants | Always `UPPER_CASE_WITH_UNDERSCORES`, meaningful names with uppercase words separated with underscores. Used for constants like: MAX_ROW, TOTAL, NUM_PATIENTS. |
| class | Always `CapitalizedWords`, meaningful names with the first letter of each word caitalized, no spaces or underscores. |
| file names | Always `lower_case_with_underscores.m`, meaningful names for each file. Use underscores when it improves readability. |

## Example Code

(The example file / directory does not exist. This is merely an example.)
Within the folder UDALL_P1/scratchpad/plotdata.m

``` matlab
%% Ploting code for a 4x4 grid
MAX_ROW = 4 % Maximum number of rows
MAX_COLUMN = 4 % Maximum number of columns
TOTAL_PLOTS = MAX_ROW * MAX_COLUMN % Total number of plots 

axis_handle = zeros(TOTAL_PLOTS) % Initialize array for each axis

for ii = 1:TOTAL_PLOTS
	axis_handle(ii) = subplot(MAX_ROW, MAX_COLUMN, ii)
	do_plot_stuff(axis_handle(ii))
end % END FOR

% EOF
```