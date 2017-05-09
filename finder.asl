// Agent Finder in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
@f1
+!find(client,book(X))[source(master)]:true <-
if(true)
{
.send(master,achieve,deliver(client,book(X)));
.print("I found the book named ",X,"!");
}.
