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
                Literal goal = ASSyntax.createLiteral("get", ASSyntax.createString(jt.getText()));
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
    public void stop() {
        f.dispose();
        super.stop();
    }
}