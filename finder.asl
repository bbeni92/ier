// Agent Finder in project Intelligent_lib.mas2j

/* Initial beliefs and rules */
sincere(Master)
/* Initial goals */

/* Plans */
+search(B, F)[source(A)]: sincere(A)[source(self)] &  .my_name(F) <- 
if (exists(B)){
print(X, “Got It”) 
.send(Master,tell,found(B))
}
else{
	print(X, “We dont have this shit”) 
	.send(Master,tell,not found(B))
}


