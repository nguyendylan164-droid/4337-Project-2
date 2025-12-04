Session 0 -
12/2/2025
6:56 PM

For this project, I will write a Prolog program that can solve a maze. First thoughts, it is a challenging project to understand since Prolog is confusing and new to me.
I will begin the project by reviewing the provided files and determining the best place to start. 

7:13 PM

From what I understand, "example.pl" provides us with small fixed mazes and "test.pl" generates random mazes for testing. I created my "project2.pl", which will be the maze solver. For my next session, I will begin implementing helper predicates. 


Session 1 -
12/3/2025
6:19 PM

This session, I need helper predicates before I can start "find-exit/2". Specifically, accessing a cell, finding the start, and getting the maze's dimensions. I am going to implement "cell" and "find_start".

7:19 PM

I created the "cell/4" and "find_start/3" predicates, which access a cell and find the start of the maze, respectively. Initially, this session was challenging until I started digging and found a built-in predicate: "nth0(index, list, element", which returns an element at the index of a list. This predicate helped simplify the session. In the next session, I will do the maze validation required by the project.
