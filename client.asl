// Agent Client in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
@g
+!get(I) : true
<- .send(master, achieve, has(self,I));
.print("Ordered!").
@h
+has(client,I) : true <- 
.send(master, tell,satisfied(client));
.print("I get the book named ", I,"!").

+~has(client,I) : true <- .print("I am sad").