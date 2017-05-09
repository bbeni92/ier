import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;

import jason.architecture.*;
import jason.asSemantics.ActionExec;
import jason.asSyntax.ASSyntax;
import jason.asSyntax.Literal;

import javax.swing.*;

public class ClientGUI extends AgArch {

    JTextArea jt;
    JFrame    f;
    JButton search;    

    public ClientGUI() {
        jt = new JTextArea(3, 30);
        search = new JButton("Search");
        search.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                Literal goal = ASSyntax.createLiteral("get", ASSyntax.createLiteral("book", ASSyntax.createString(jt.getText()) ));
                getTS().getC().addAchvGoal(goal, null);
            }
        });
        
        f = new JFrame("ClientAgent");
        f.getContentPane().setLayout(new BorderLayout());
        f.getContentPane().add(BorderLayout.CENTER, new JScrollPane(jt));
        f.getContentPane().add(BorderLayout.SOUTH, search);
        f.pack();
        f.setVisible(true);
    }

    @Override
    public void act(ActionExec action) { //, List<ActionExec> feedback) {
        if (action.getActionTerm().getFunctor().startsWith("show_winner")) {
            jt.append("Winner of auction  " + action.getActionTerm().getTerm(0));
            jt.append(" is " + action.getActionTerm().getTerm(1) + "\n");
            action.setResult(true);
            actionExecuted(action);
            
            search.setEnabled(true); // enable GUI button
        } else {
            super.act(action); // send the action to the environment to be performed.
        }
    }

    @Override
    public void stop() {
        f.dispose();
        super.stop();
    }
}