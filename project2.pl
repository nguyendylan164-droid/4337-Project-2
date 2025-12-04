% Cell access

% access the cell
cell(Map, RowIndex, ColIndex, Value) :-
    % nth0(index, list, element) returns element at index of list
    nth0(RowIndex, Map, Row), % get the row
    nth0(ColIndex, Row, Value). % finally get the cell from the row

% find the start of the maze
find_start(Map, RowIndex, ColIndex) :-
    nth0(RowIndex, Map, Row),
    nth0(ColIndex, Row, s).
