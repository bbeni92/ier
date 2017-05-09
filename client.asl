// Agent Client in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */
!get(book("Kiskutya és a farka")).

/* Plans */
@g
+!get(book(X)) : true
<- .send(master, achieve, has(client,book(X)));
.print("Ordered!").
@h1
+has(client,book(X)) : true <- 
.send(master, tell,satisfied(client));
.print("I get the book named ", X,"!");
-get(book(X)).
@h2
-has(client,book(X)) : true
<- !get(book(X)).