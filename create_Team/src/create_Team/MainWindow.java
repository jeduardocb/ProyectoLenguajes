package create_Team;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.awt.event.ActionEvent;
import java.awt.Color;
import javax.swing.JComboBox;
import javax.swing.JLabel;

import org.jpl7.Atom;
import org.jpl7.Query;
import org.jpl7.Term;

import java.awt.Font;
import javax.swing.SwingConstants;

public class MainWindow {

	private JFrame frame;

	/**
	 * Launch the application.
	 */
	//global variables
	String proyectoSeleccionado;
	//global  arraylist
    ArrayList<String> arrayArchitects=new ArrayList<>();
    ArrayList<String> arraySeniors=new ArrayList<>();
    ArrayList<String> arrayJuniors=new ArrayList<>();
    ArrayList<Integer> arrayFlags=new ArrayList<>();
	public static void main(String[] args) {
	    
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					MainWindow window = new MainWindow();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public MainWindow() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.getContentPane().setBackground(new Color(204, 204, 255));
		frame.getContentPane().setForeground(Color.LIGHT_GRAY);
		frame.setBounds(100, 100, 679, 448);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		

		JComboBox architectsBox = new JComboBox();
		architectsBox.setBounds(20, 329, 163, 21);
		frame.getContentPane().add(architectsBox);
		
		JComboBox SeniorsBox = new JComboBox();
		SeniorsBox.setBounds(252, 329, 163, 21);
		frame.getContentPane().add(SeniorsBox);
		
		JComboBox JuniorsBox = new JComboBox();
		JuniorsBox.setBounds(473, 329, 156, 21);
		frame.getContentPane().add(JuniorsBox);
		
		JLabel lblNewLabel = new JLabel("Available Projects:");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblNewLabel.setBounds(41, 22, 181, 30);
		frame.getContentPane().add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("Software Architects:");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblNewLabel_1.setBounds(10, 272, 173, 39);
		frame.getContentPane().add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("Developers Seniors");
		lblNewLabel_2.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblNewLabel_2.setBounds(252, 281, 163, 21);
		frame.getContentPane().add(lblNewLabel_2);
		
		JLabel lblNewLabel_3 = new JLabel("Developers Juniors");
		lblNewLabel_3.setFont(new Font("Tahoma", Font.PLAIN, 18));
		lblNewLabel_3.setBounds(473, 281, 173, 30);
		frame.getContentPane().add(lblNewLabel_3);
		
		
		JLabel labelarchitects = new JLabel("");
		labelarchitects.setHorizontalAlignment(SwingConstants.TRAILING);
		labelarchitects.setFont(new Font("Tahoma", Font.PLAIN, 17));
		labelarchitects.setBounds(10, 117, 149, 146);
		frame.getContentPane().add(labelarchitects);
		

		
		JLabel labelseniors = new JLabel("");
		labelseniors.setFont(new Font("Tahoma", Font.PLAIN, 17));
		labelseniors.setBounds(252, 117, 149, 136);
		frame.getContentPane().add(labelseniors);
		
		JLabel labeljuniors = new JLabel("");
		labeljuniors.setFont(new Font("Tahoma", Font.PLAIN, 17));
		labeljuniors.setBounds(473, 117, 156, 136);
		frame.getContentPane().add(labeljuniors);
		
		
		
		// compiles prolog file
        Query q1 = new Query(
        		"consult",
        		new Term[] {new Atom("proyect.pl")}
        		);
        q1.hasSolution();
        //fin all the existing projects
        Query q3 = new Query("findall(Projects, project_id(Projects,X), Projects)");
	        
	    // verify if the query has solution
        q3.hasSolution();
        ///get all the projects in an string
        String proyectos =q3.oneSolution().get("Projects").toString();
		//Declare the array list for the projects
		 ArrayList<String> arrayProjects=new ArrayList<>();
		 //helpers variables
		 String nuevo="";
	       int bandera=0;
	        char coma=',';
	        char comilla=39;
	        char corcheteDerecho=']';
	        char corchetezquierdo='[';
	        //read character by character and add each project in the array
	        for(int i=0;i<proyectos.length();i++) {
	        	if(proyectos.charAt(i)==coma || proyectos.charAt(i)==corcheteDerecho) {
	        		bandera++;
	        	}else if( proyectos.charAt(i)==corchetezquierdo){
	        		//do nothing
	        	}else {
	        		nuevo+=proyectos.charAt(i);
	        	}
	        	
	        	if(bandera==1) {		
	        		bandera=0;
	        		nuevo=nuevo.replaceAll("\\s+","");//delete the spaces in one string
	        		arrayProjects.add(nuevo);
	        		nuevo="";
	        	}
	        	
	        }
	     //when the JComboBox is created insert the arraylist of projects
        JComboBox ProjectsBox = new JComboBox(arrayProjects.toArray());
		ProjectsBox.setBounds(209, 30, 123, 21);
		frame.getContentPane().add(ProjectsBox);
		JButton btnNewButton = new JButton("Search Employees");
		btnNewButton.setForeground(new Color(255, 255, 255));
		btnNewButton.setFont(new Font("Tahoma", Font.PLAIN, 15));
		
	
		btnNewButton.setBackground(new Color(123, 104, 238));
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//get the selected item of the project box
				proyectoSeleccionado=ProjectsBox.getSelectedItem().toString();
				System.out.println(ProjectsBox.getSelectedItem().toString());
				
				//helper variables
				String nuevo="";
		        int bandera=0 ;
		        char coma=',';
		        char comilla=39;
		        char corcheteDerecho=']';
		        char corchetezquierdo='[';
		        
				 // create the query adding the selected projects
		        Query q2 = new Query("create_Team_Options("+proyectoSeleccionado+",Namesavailablearquitects,Namesavailablejuniors,Nameavailableseniors,Flags)");
		       
		        //verify if the query is correct
		        q2.hasSolution();
		        
		        //with the query already executed get the values of the architects, seniors, juniots, and the flags
		        String architects =q2.oneSolution().get("Namesavailablearquitects").toString();
		        String seniors =q2.oneSolution().get("Nameavailableseniors").toString();
		        String juniors =q2.oneSolution().get("Namesavailablejuniors").toString();
		        
		        String flags =q2.oneSolution().get("Flags").toString();
		     
		        
		        
		        //read the string of architects, divide each name and insert in the arraylist
		        for(int i=0;i<architects.length();i++) {
		        	if(architects.charAt(i)==comilla ) {
		        		bandera++;
		        		
		        	}else if(architects.charAt(i)==coma || architects.charAt(i)==corcheteDerecho ||  architects.charAt(i)==corchetezquierdo){
		        		//do nothing
		        	}else {
		        		nuevo+=architects.charAt(i);
		        	}
		        	
		        	if(bandera==2) {
		        		bandera=0;
		        		arrayArchitects.add(nuevo);
		        		nuevo="";
		        	}
		        	
		        }
		        //read the string of seniors, divide each name and insert in the arraylist
		        nuevo="";
		        bandera=0;
		        for(int i=0;i<seniors.length();i++) {
		        	if(seniors.charAt(i)==comilla ) {
		        		bandera++;
		        		
		        	}else if(seniors.charAt(i)==coma || seniors.charAt(i)==corcheteDerecho ||  seniors.charAt(i)==corchetezquierdo){
		        		//do nothing
		        	}else {
		        		nuevo+=seniors.charAt(i);
		        	}
		        	
		        	if(bandera==2) {		
		        		bandera=0;
		        		arraySeniors.add(nuevo);
		        		nuevo="";
		        	}
		        	
		        }
		        //read the string of juniors, divide each name and insert in the arraylist
		        nuevo="";
		        bandera=0;
		        for(int i=0;i<juniors.length();i++) {
		        	if(juniors.charAt(i)==comilla ) {
		        		bandera++;
		        		
		        	}else if(juniors.charAt(i)==coma || juniors.charAt(i)==corcheteDerecho ||  juniors.charAt(i)==corchetezquierdo){
		        		//do nothing
		        	}else {
		        		nuevo+=juniors.charAt(i);
		        	}
		        	
		        	if(bandera==2) {
		        		bandera=0;
		        		arrayJuniors.add(nuevo);
		        		nuevo="";
		        	}
		        	
		        }
		        //read the string of flags, divide each name and insert in the arraylist
		        int auxiliar=0;
		        for(int i=0;i<flags.length();i++) {
		        	if(flags.charAt(i)==corchetezquierdo ) {
		        		auxiliar=Integer.parseInt(String.valueOf(flags.charAt(i+1) ));
		        		arrayFlags.add(auxiliar);
		        	}else if(flags.charAt(i)==coma){
		        		auxiliar=Integer.parseInt(String.valueOf(flags.charAt(i+2) ));
		        		arrayFlags.add(auxiliar);
		        	}
		        	
		        	
		        }
		        
		        
		        //print the values of each array
		        for (int i =0 ;i<arrayArchitects.size();i++) {
		        	System.out.print(arrayArchitects.get(i)+"-");
		        }
		        System.out.println();
		        for (int i =0 ;i<arraySeniors.size();i++) {
		        	System.out.print(arraySeniors.get(i)+"-");
		        }
		        System.out.println();
		        for (int i =0 ;i<arrayJuniors.size();i++) {
		        	System.out.print(arrayJuniors.get(i)+"-");
		        }
		        System.out.println();
		        for (int i =0 ;i<arrayFlags.size();i++) {
		        	System.out.print(arrayFlags.get(i)+"-");
		        }
		        
		        //to eachjcombobox set the new valuees
		        architectsBox.setModel(new DefaultComboBoxModel(arrayArchitects.toArray()));
		        SeniorsBox.setModel(new DefaultComboBoxModel(arraySeniors.toArray()));
		        JuniorsBox.setModel(new DefaultComboBoxModel(arrayJuniors.toArray()));
		        //verify the flags, if the flag is 0 means that there is at least one employee that fits for that project
		        //if the flag is 0 you will receive all the available employees 
		        if(arrayFlags.get(0)==0) {
		        	labelarchitects.setText("<html>Architectures that fits your project needs</html>");
		        	labelarchitects.setForeground(Color.black);
		        }else {
		        	labelarchitects.setText("<html>There are no architectures that fits your project needs,there is a list of all the  Architectures.</html>");
		        	labelarchitects.setForeground(Color.red);
		        }
		        
		        if(arrayFlags.get(1)==0) {
		        	labelseniors.setText("<html>Developers Seniors that fits your project needs</html>");
		        	labelseniors.setForeground(Color.black);
		        }else {
		        	labelseniors.setText("<html>There are no Seniors that fits your project needs,there is a list of all the Seniors.</html>");
		        	labelseniors.setForeground(Color.red);
		        }
		        if(arrayFlags.get(2)==0) {
		        	labeljuniors.setText("<html>Developers Juniors that fits your project needs</html>");
		        	labeljuniors.setForeground(Color.black);
		        }else {
		        	labeljuniors.setText("<html>There are no Juniors that fits your project needs,there is a list of all the Juniors.</html>");
		        	labeljuniors.setForeground(Color.red);
		        }
		        //clean the arraylist for the next time we want to search new possible employees for the project
		        arrayArchitects.clear();
		        arraySeniors.clear();
		        arrayJuniors.clear();
		        arrayFlags.clear();
		        
			}
		});
		btnNewButton.setBounds(473, 24, 173, 58);
		frame.getContentPane().add(btnNewButton);
		
	
		

        
       
	}
}
