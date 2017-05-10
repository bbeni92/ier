// Agent Librarian in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
+!deliver(client,I)[source(master)]:true <-
.print("I delivered the book named [",I,"]!");
.send(client,tell,has(client, I));
.send(master,tell,delivered(client,I)).