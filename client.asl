// Agent Client in project Intelligent_lib.mas2j
/* Initial beliefs and rules */

/* Initial goals */
!get(book).

/* Plans */
@g
+!get(book) : true
<- .send(master, achieve, has(client,book)).
@h1
+has(client,book) : true
<- .send(master, tell,satisfied(client));
	.print("Client: I get the book").
@h2
-has(owner,beer) : true
<- !get(book).
