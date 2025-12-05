% Maze Validation
% Valid maze: contains valid cells, same row lengths, one start, at least one end
% facts: valid cells
valid_cell(f). %path
valid_cell(w). %wall
valid_cell(s). %start
valid_cell(e). %end

% ensure all elements in row are valid cells
valid_row([]). % base case, return
valid_row([Cell|Rest]) :-
    valid_cell(Cell),
    valid_row(Rest). % recursive call

% ensure all rows have the same length
% base case empty list
same_row_length([]).
% base case one row
same_row_length([_]).
same_row_length([First, Second | Rest]) :- 
    length(First, L), % First row is length L and Second row is length L so it checks if they are the same length
    length(Second, L),
    same_row_length([Second | Rest]). % recursive call check the second row with the next row and so on

% ensure that there is only one start and at least one end
count_occurrences(_, [], 0). % base case
count_occurrences(Element, [Row|Rest], Count) :-
    count_in_row(Element, Row, RowCount), % count row by row, we have to define count_in_row
    count_occurrences(Element, Rest, RestCount), % recursive call
    Count is RowCount + RestCount.
% count occurances in the row
count_in_row(_, [], 0). % base case
% recursive case 1 element matches
count_in_row(Element, [Element|Rest], Count) :-
    count_in_row(Element, Rest, RestCount),
    Count is RestCount + 1.
% recursive case 2 element doesn't match
count_in_row(Element, [X|Rest], Count) :-
    Element \= X,
    count_in_row(Element, Rest, Count).

% final maze validation combination
valid_maze(Maze) :-
    maplist(valid_row, Maze),
    same_row_length(Maze),
    count_occurrences(s, Maze, S), S =:= 1,
    count_occurrences(e, Maze, E), E >= 1.

% Cell access --------------------------------------------------
% access the cell
cell(Map, RowIndex, ColIndex, Value) :-
    % nth0(index, list, element) returns element at index of list
    nth0(RowIndex, Map, Row), % get the row
    nth0(ColIndex, Row, Value). % finally get the cell from the row

% find the start of the maze
find_start(Map, RowIndex, ColIndex) :-
    nth0(RowIndex, Map, Row),
    nth0(ColIndex, Row, s).
