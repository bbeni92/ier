// Agent Librarian in project Intelligent_lib.mas2j

/* Initial beliefs and rules */
sincere(Master)

/* Initial goals */

/* Plans */
+deliver(B, L)[source(A)] : sincere(A)[source(self)] &  .my_name(L) <-
.send(Client,tell,delivered(Book,Client));
.send(Master,tell,delivered(Book,Client));
