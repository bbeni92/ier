// Agent Master in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
@h1
+!has(client,book): available(book,library) & not delivered(client, book)
<- send(librarian,achieve,deliver(client, book));
!feedback(client).

@h2
+!has(client,book): not available(book,library)
<- .send(finder,achieve,found(client,book));
!wait(finder,book). // wait until the finder had results

@f1
+!found(client,book)[source(finder)]: true <- +available(book,library);
!has(client,book);
.print("The finder found the ordered book!").
