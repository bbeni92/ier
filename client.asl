// Agent Client in project Intelligent_lib.mas2j
/* Initial beliefs and rules */

/* Initial goals */
!get(X).

/* Plans */
@g
+!get(X) : true
<- .send(master, achieve, has(client,X));
.print("Ordered!").
@h1
+has(client,X) : true <- 
.send(master, tell,satisfied(client));
.print("I get the book");
-get(X).
@h2
-has(client,X) : true
<- !get(X).
