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


Session 2 -
12/4/2025
4:36 PM

The project details state, "The predicate should fail if the maze is invalid..." Therefore, I plan to implement maze validation predicates for this session.

6:07 PM

For a maze to be valid, I had 3 criteria: It must contain valid cells, all rows must be the same length, there must be only one start, and there must be at least one end. I created the "valid_cell" rules and the predicates: "valid_row/1", "same_row_length/1", "count_occurrences/3", "count_in_row/3", and "valid_maze/1". I had a hard time understanding the logic, but through research, I was able to implement my predicates using recursion. Next session, I plan to do movement step rules.


Session 3 -
12/7/2025
12:03 AM

Now that I can access maze cells and validate mazes, it's time for me to create movement. I think this will be a little more challenging than the previous sessions, so I might take a while to post an update. Also, because it's getting late, and I need to sleep. Based on the project, up, down, left, or right are the actions a user can take. For this session, I am going to implement "action" and "valid_move".

1:33 AM 

I managed to finish "action/3" and "valid_action/2", and again, Prolog logic is still tricky for me. In the next session, I plan to create predicates to execute actions.


Session 4 -
12/7/2025
3:17 PM

For this session, I will implement a predicate that executes a list of actions. It will use my previous predicates: "action/3", "valid_action/2", and "valid_maze/1". It seems I am nearing the end of my project.

3:34 PM

This was a fairly simple session, so I plan to implement the case for when "find_exit/2" has an unbound parameter for its second parameter. After some research, implementing a Depth-First Search (DFS) algorithm to find the maze exit is the best approach. However, I have a feeling it might not be easy to implement it in Prolog. 
