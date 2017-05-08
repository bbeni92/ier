// Agent Master in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
@h1
+!has(client,book): not available(book,library)
<- .send(finder,achieve,find(client,book)).

@f1
+!deliver(client,book)[source(finder)]: not available(book,library)<- 
.print("The book was found!");
+available(book,library);
.send(librarian, achieve, deliver(client, book)).

+delivered(client,book)[source(librarian)]<-.print("finished!").
