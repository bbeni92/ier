// Agent Master in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
@h1
+!has(client,book(X)): not available(book(X),library)
<- .send(finder,achieve,find(client,book(X))).

@f1
+!deliver(client,book(X))[source(finder)]: not available(book(X),library)<- 
.print("The book named ",X," was found!");
+available(book(X),library);
.send(librarian, achieve, deliver(client, book(X))).

+delivered(client,book(X))[source(librarian)]<-.print("finished!").