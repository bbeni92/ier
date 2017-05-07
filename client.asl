// Agent Client in project Intelligent_lib.mas2j

/* Initial beliefs and rules */
sincere(Master)
want(Book)
/* Initial goals */
!start.

/* Plans */
+!start: want(Book) <- .send(Master,tell,request(B, Master));
