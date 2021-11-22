# Programing Languages

------------


## Project staffing with logic programming.

The present project makes usage of the logic programming paradigm to be able to simulate a staff assignment program based on project requirements and staff availability, role, and skills. To make the solution more user friendly I decided to connect the logic implemented in prolog with Java for the graphical user interface, using the JPL library.

To assign employees to a project the program follows these rules:
•	The total number of members for each project is 3.
•	At least one member must be Solution Architect.
•	At least one member must be Developer Senior.
•	At least one member must be Developer Junior.
•	The Solution Architect must satisfy 50% of the requirements of the project. 
•	The Developer Senior must satisfy 33% of the requirements of the project.
•	The Developer Junior must satisfy 20% of the requirements of the project. 
•	All members must be available.
•	If no one in any position satisfy with the percentage of the requirements, the program returns all the employees in this position who are available.


### Setup.

1.	Install eclipse and prolog (SWI-Prolog downloads , Eclipse Downloads | The Eclipse Foundation).  
2.	Copy the jpl file located in github repository and paste in the folder lib, the path looks like this:  
3.	The you need to create an environment variable in java .  
4.	Add the library to build path we just created, you will added in the jpl.jar  
5.	You are ready to run the program, just run Main Window.java 

### Build with🛠️
* [Prolog](http://www.dropwizard.io/1.0.2/docs/) -Logic Language
* [Java](https://maven.apache.org/) -Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible.

### Author 📄

**Jose Eduardo Cadena Bernal** - *documentation and development*  - [jeduardocb](https://github.com/jeduardocb "jeduardocb")

### Licence 📄

This project is under the License GNU GENERAL PUBLIC LICENSE - see the   [Licence File](https://github.com/jeduardocb/ProyectoLenguajes/blob/main/Licence.txt "Licence")  for more details. 

