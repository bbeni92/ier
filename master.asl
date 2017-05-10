// Agent Master in project Intelligent_lib.mas2j

/* Initial beliefs and rules */

/* Initial goals */

/* Plans */
//Item kiszolgálása
//első kör -- a master megtalálja e az adatbázisban és szabad?
@m1
+!has(C,I): exist(I)<-.send(finder,achieve,find(C,I)).
@m2
+!has(C,I): ~exist(I)<-.send(C,tell,~has(C,I)).
@m3
+!has(C,I): not exist(I)<-is_in_db(I);
!has(C,I).

//második kör -- a finder megtalálja e könyvtárban fizikailag?
@f1
+!deliver(C,I)[source(finder)]: true <- 
.print("The book named ",I," was found!");
.send(librarian, achieve, deliver(C,I)).

//harmadik kör -- a librarian kiszállította az Itemet

+defalivered(C,I)[source(librarian)]<-.print("Request accompished!").

