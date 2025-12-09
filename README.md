# Prolog Maze Solver

This project implements a maze solver in Prolog. It can follow a list of actions through the maze, or automatically find a path from the start to the exit using depth-first search.

## Requirements
- SWI-Prolog
- example.pl and test.pl 

## Features
- Maze Validation
- Movement Rules
- Action Execution
- Automatic Pathfinding
  - Uses DFS to find a path when no actions are provided.
- find_exit/2 Predicate
  - ```find_exit(Maze, Actions)``` validates a given list of actions
  - ```find_exit(Maze, Actions)``` (with Actions unbound) generates a solution

## Examples
Using basic_map/1 from "example.pl":
```
?- basic_map(M), find_exit(M, [down,left,down]).
true.

?- basic_map(M), find_exit(M, A).
A = [down, left, down].
```
Using gen_map/1 from "test.pl":
```
?- gen_map(4, 10, 10, M), display_map(M).
?- gen_map(4, 10, 10, M), find_exit(M, Actions).
```
