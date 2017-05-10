// Environment code for project ier_hf

import jason.asSyntax.*;
import jason.asSyntax.parser.ParseException;
import jason.environment.*;

import java.util.Collection;
import java.util.logging.*;

public class Env extends Environment {

    private Logger logger = Logger.getLogger("ier_hf."+Env.class.getName());
    //public static final Literal isInDB = ASSyntax.createLiteral("get", ASSyntax.createLiteral("book", ASSyntax.createString(jt.getText()) ));
    public static final Literal not_exist = Literal.parseLiteral("not_exist(book(X))");
    

    /** Called before the MAS execution with the args informed in .mas2j */
    @Override
    public void init(String[] args) {
        super.init(args);
    }
    @Override
    public boolean executeAction(String agName, Structure action) {
        System.out.println("["+agName+"] doing: "+action);
        boolean value = false;
        
        if(agName.equals("master") && action.getFunctor().equals("is_in_db")){ 
        	
        	String item = action.getTerm(0).toString();
        	System.out.println(item);
        	
        	boolean available = false;
        	//adatbázis összehasonlítás 
        	// .......
        	
        	if(available){
        		addPercept("master",ASSyntax.createLiteral("exists",ASSyntax.createString(item)));
        	}
        	else{
        		addPercept("master",ASSyntax.createLiteral("~exists",ASSyntax.createString(item)));
        	}
        	value = available;
        }
        informAgsEnvironmentChanged();
        
        return value; // the action was executed with success 
    }

    /** Called before the end of MAS execution */
    @Override
    public void stop() {
        super.stop();
    }
}
