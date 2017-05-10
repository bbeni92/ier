// Agent Master in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
//Item kiszolgálása
//első kör -- a master megtalálja e az adatbázisban és szabad?
@e1
+exist(I): true <- 
.print("Yes, the [",I,"] can be borrowed!");
.send(finder,achieve,find(client,I));
-exist(I).
@e2
+~exist(I): true <- 
.print("No, the [",I,"] can not be borrowed!");
.send(client,tell,~has(client,I));
-~exist(I).

@m1
+!has(C,I): not exist(I)<- is_in_db(I).

//második kör -- a finder megtalálja e könyvtárban fizikailag?
@f1
+!deliver(client,I)[source(finder)]: true <- 
.print("The book named ",I," was found!");
.send(librarian, achieve, deliver(client,I)).

//harmadik kör -- finish

+delivered(client,I)[source(librarian)]<-.print("Request accompished!").

