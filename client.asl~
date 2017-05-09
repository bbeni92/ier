// Agent Client in project Intelligent_lib.mas2j
/* Initial beliefs and rules */

/* Initial goals */
!get(book).

/* Plans */
@g
+!get(book) : true
<- .send(master, achieve, has(client,book));
.print("Ordered!").
@h1
+has(client,book) : true <- 
.send(master, tell,satisfied(client));
.print("I get the book");
-get(book).
@h2
-has(client,book) : true
<- !get(book).
