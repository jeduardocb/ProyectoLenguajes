package create_Team;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;

import org.jpl7.Atom;
import org.jpl7.Query;
import org.jpl7.Term;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

        // COMPILES PROLOG FILE
        Query q1 = new Query(
        		"consult",
        		new Term[] {new Atom("proyect.pl")}
        		);
        q1.hasSolution();
        // PLACE FACT IN PROLOG FILE
        Query q2 = new Query("create_Team_Options(datawarehouse,Namesavailablearquitects,Namesavailablejuniors,Nameavailableseniors,Flags)");
       
        // VERIFY IF FACT HAS BEEN PLACED
        q2.hasSolution();
        
        Query q3 = new Query("findall(Projects, project_id(Projects,X), Projects)");
        
        // VERIFY IF FACT HAS BEEN PLACED
        q3.hasSolution();
     
        String architects =q2.oneSolution().get("Namesavailablearquitects").toString();
        String seniors =q2.oneSolution().get("Nameavailableseniors").toString();
        String juniors =q2.oneSolution().get("Namesavailablejuniors").toString();
        
        String flags =q2.oneSolution().get("Flags").toString();
       
        
        String proyectos =q3.oneSolution().get("Projects").toString();
      
        System.out.println(proyectos);
     
        String nuevo="";
        int bandera=0 ;
        char coma=',';
        char comilla=39;
        char corcheteDerecho=']';
        char corchetezquierdo='[';
        
        ArrayList<String> arrayArchitects=new ArrayList<>();
        ArrayList<String> arraySeniors=new ArrayList<>();
        ArrayList<String> arrayJuniors=new ArrayList<>();
        ArrayList<Integer> arrayFlags=new ArrayList<>();
        
        ArrayList<String> arrayProjects=new ArrayList<>();
        
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
        
        nuevo="";
        bandera=0;
        for(int i=0;i<proyectos.length();i++) {
        	if(proyectos.charAt(i)==coma || proyectos.charAt(i)==corcheteDerecho) {
        		bandera++;
        	}else if( proyectos.charAt(i)==corcheteDerecho ||  proyectos.charAt(i)==corchetezquierdo){
        		//do nothing
        	}else {
        		nuevo+=proyectos.charAt(i);
        	}
        	
        	if(bandera==1) {		
        		bandera=0;
        		nuevo=nuevo.replaceAll("\\s+","");//eliminar los espacion de los nombres de los proyectos 
        		arrayProjects.add(nuevo);
        		nuevo="";
        	}
        	
        }
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
        
        System.out.println();
        for (int i =0 ;i<arrayProjects.size();i++) {
        	System.out.print(arrayProjects.get(i)+"-");
        }
        
        
        
	}

}
