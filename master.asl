// Agent Master in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
@h1
+!has(client,B): not available(B,library)
<- .send(finder,achieve,find(client,B)).

@f1
+!deliver(client,B)[source(finder)]: not available(B,library)<- 
.print("The book was found!");
+available(B,library);
.send(librarian, achieve, deliver(client, B)).

+delivered(client,B)[source(librarian)]<-.print("finished!").
