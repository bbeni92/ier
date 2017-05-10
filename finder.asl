// Agent Finder in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
@f1
+!find(client,I)[source(master)]:true <-
.send(master,achieve,deliver(client,I));
.print("I found the book named ",I,"!").
