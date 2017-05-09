// Agent Librarian in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
+!deliver(client,B)[source(master)]:true <-
.print("I delivered the book!");
.send(client,tell,has(client, B));
.send(master,tell,delivered(client,B)).

