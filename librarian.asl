// Agent Librarian in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
+!deliver(client,book)[source(master)]:true <-
.print("I delivered the book!");
.send(client,tell,has(client, book));
.send(master,tell,delivered(client,book)).

