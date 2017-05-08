// Agent Finder in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
@h1
+!found(client,book)[source(master)]:true <-
.send(master,achieve,found(client,book)).
