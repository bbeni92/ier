// Agent Client in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
@g
+!get(I) : true
<- .send(master, achieve, has(self,I));
.print("Ordered!").
@h1
+has(self,I) : true <- 
.send(master, tell,satisfied(self));
.print("I get the book named ", I,"!");
-get(I).
@h2
-has(self,I) : true
<- !get(I).