// Agent Master in project Intelligent_lib.mas2j

/* Initial beliefs and rules */
sincere(Client) 
sincere(Librarian)
sincere(Finder)

/* Initial goals */

/* Plans */
//szól a keresőnek hogy beérkezett egy könyv kérés
+request(Book,H)[source(A)] : sincere(A)[source(self)] &  .my_name(H) <- .send(Finder,tell,search(Book,Finder));
//szól a könyvtárosnak, hogy viheti a könyvet
+found(Book)[source(A)] : sincere(A)[source(self)] <- .send(Librarian,tell,deliver(Book,Librarian));




