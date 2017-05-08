// Agent Finder in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
@f1
+!find(client,book)[source(master)]:true <-
.send(master,achieve,deliver(client,book));
.print("I found the book!").

