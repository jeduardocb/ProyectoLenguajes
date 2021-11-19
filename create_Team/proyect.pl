%employe(Name of the employe,ID)
employee('Angeles Anaya',1).
employee('Jonathan Cruz',2).
employee('Luis Rosado',3).
employee('Eduardo Cadena',4).
employee('Angie Contreras',5).
employee('Maria Delgado',6).
employee('Jose Jose',7).
employee('Gilberto Ortega',8).
employee('Rodrigo de la M',9).
employee('Victoria Garcia',10).
employee('Renata Garcia',12).
employee('Sofia Rodriguez',13).
employee('Alexander Quisque',14).
employee('Mateo da Silva',15).
employee('Santiago Gonzalez',16).
employee('Daniel de la Hoya',17).
employee('Regina Quisque',18).
employee('Leonardo Di Caprio',19).
employee('Diego Mamani',20).
employee('Emiliano Persaud',21).
employee('Miguel Smith',22).
employee('Alexander Smith',23).
employee('Diego Rolle',24).
employee('Ali Mohammed',25).
employee('John Yakimeshi',26).
employee('Cuauhtemoc Segundo',27).
employee('Pepe Tercero',28).
employee('Guadalupe Martin',29).
employee('Juana Peeters',30).
employee('Antonio Rusu',31).
employee('Daniel Rossi',32).
employee('Miguel Tamm',33).
employee('Fernanda de Jong',34).
employee('Petter Ivanov',35).
employee('Liam Cuarto',36).
employee('Ian Ramirez',37).
employee('Lucas Muecas',38).
employee('Negrito Bimbo',39).
employee('Jayden Gomez',40).

%employee_position(Id of the employee,position )
employee_position(1,solutionArchitect).
employee_position(2,solutionArchitect).
employee_position(3,solutionArchitect).
employee_position(4,solutionArchitect).
employee_position(5,solutionArchitect).
employee_position(6,solutionArchitect).
employee_position(7,solutionArchitect).
employee_position(8,solutionArchitect).
employee_position(9,solutionArchitect).

employee_position(10,developerSenior).
employee_position(12,developerSenior).
employee_position(13,developerSenior).
employee_position(14,developerSenior).
employee_position(15,developerSenior).
employee_position(16,developerSenior).
employee_position(17,developerSenior).
employee_position(18,developerSenior).
employee_position(19,developerSenior).
employee_position(20,developerSenior).
employee_position(21,developerSenior).
employee_position(22,developerSenior).
employee_position(23,developerSenior).
employee_position(24,developerSenior).
employee_position(25,developerSenior).

employee_position(26,developerJunior).
employee_position(27,developerJunior).
employee_position(28,developerJunior).
employee_position(29,developerJunior).
employee_position(30,developerJunior).
employee_position(31,developerJunior).
employee_position(32,developerJunior).
employee_position(33,developerJunior).
employee_position(34,developerJunior).
employee_position(35,developerJunior).
employee_position(36,developerJunior).
employee_position(37,developerJunior).
employee_position(38,developerJunior).
employee_position(39,developerJunior).
employee_position(40,developerJunior).


%the skills are azure,cloud,java,cpp,excel,python,prolog,db,c,php,r,go,kotlin
employee_skill(1,[azure,cloud,java,cpp,excel,python,prolog,db,c]).
employee_skill(2,[azure,cloud,java,cpp,excel,python,prolog,db,c,php,r,go,kotlin]).
employee_skill(3,[python,prolog,db,c,php,r,go,kotlin]).
employee_skill(4,[azure,cloud,java,db,c,php,r,go,kotlin]).
employee_skill(5,[azure,cpp,excel,python,prolog,db,c,php,r,go,kotlin]).
employee_skill(6,[azure,cloud,java,cpp,prolog,db,c,php,r,go,kotlin]).
employee_skill(7,[azure,cloud,java,cpp,excel,python,c,php,r,go,kotlin]).
employee_skill(8,[cloud,java,cpp,prolog,db,c,php,r,go,kotlin]).
employee_skill(9,[azure,cloud,java,cpp,excel,python,prolog,db,c,php,r]).

employee_skill(10,[azure,cloud,prolog,db,c,php,r,go,kotlin]).
employee_skill(11,[azure,cloud,java,cpp,excel,python]).
employee_skill(12,[azure,excel,python,prolog,db,c,php,r,go,kotlin]).
employee_skill(13,[cloud,java,cpp,python,db,c,php,r,go,kotlin]).
employee_skill(14,[cloud,java,cpp,excel,python,prolog,db,c,php,r]).
employee_skill(15,[azure,cloud,java,cpp,excel,python,prolog,db,c,php]).
employee_skill(16,[r,go,kotlin]).
employee_skill(17,[excel,prolog,db,c,php,kotlin]).
employee_skill(18,[java,cpp,excel,python,php,r,go]).
employee_skill(19,[azure,cloud,java,cpp,excel,prolog,db,r,go,kotlin]).
employee_skill(20,[java,cpp,excel,db,c,php,r,go,kotlin]).
employee_skill(21,[azure,cloud,java,cpp,excel,python,prolog,db,c,php,r,go,kotlin]).
employee_skill(22,[cloud,java,cpp,python,prolog,c,php,r,go,kotlin]).
employee_skill(23,[excel,python,prolog,db,c,php,r,go,kotlin]).
employee_skill(24,[python,prolog,db,c,php,r,go,kotlin]).
employee_skill(25,[azure,cloud,java]).

employee_skill(26,[azure,cloud,java]).
employee_skill(27,[python,prolog,db,c,php,r,go,kotlin]).
employee_skill(28,[cpp,excel,r,go,kotlin]).
employee_skill(29,[azure,cpp,prolog,db]).
employee_skill(30,[java,cpp,excel,python,prolog,db,c,php,r,go,kotlin]).
employee_skill(31,[azure,cloud,java,cpp,prolog,db,c,php,r,go,kotlin]).
employee_skill(32,[azure,cloud,java,cpp,excel,python]).
employee_skill(33,[azure,r,go,kotlin]).
employee_skill(34,[azure,cloud,java,cpp,excel,python,prolog,db,c,php,r,go,kotlin]).
employee_skill(35,[azure,python,prolog,db,c,php,r,go,kotlin]).
employee_skill(36,[cloud,java,cpp,excel,python,prolog,c,r,go,kotlin]).
employee_skill(37,[cloud,java,cpp,excel,db,c,php,r,go,kotlin]).
employee_skill(38,[cloud,java,cpp,excel,db,c,php,r,go]).
employee_skill(39,[cloud,db,c,php,r,go,kotlin]).
employee_skill(40,[azure,cloud,java,cpp,excel]).



project_id(overtimetool,00099).
project_id(ttr,11199).
project_id(qms,22299).
project_id(datawarehouse,33399).
project_id(orion,44499).
project_id(newDB,666).




:-discontiguous project_requirements/2.

%measy project
project_requirements(00099,[cloud,azure,excel,python]).
%hard project
project_requirements(11199,[azure,cloud,java,cpp,excel,python,prolog,db,c,php,r,go,kotlin]).
%easy project
project_requirements(22299,[azure,kotlin]).
%those skills does not exist
project_requirements(33399,[drive],fly,fight).
%really hard project
project_requirements(44499,[azure,cloud,java,cpp,python,prolog,db,c,php,kotlin,talk,dance,fly,fight,cook,advancedexcel,run,jogging]).
%really really really hard hard hard project
project_requirements(666,[azure,cloud,java,cpp,python,prolog,db,c,php,kotlin,talk,dance,fly,fight,cook,advancedexcel,run,jogging,drink,hacking,sleep,jump]).



employee_available(1,unavailable).
employee_available(2,available).
employee_available(3,available).
employee_available(4,available).
employee_available(5,available).
employee_available(6,unavailable).
employee_available(7,available).
employee_available(8,available).
employee_available(9,unavailable).

employee_available(10,unavailable).
employee_available(11,available).
employee_available(12,available).
employee_available(13,available).
employee_available(14,unavailable).
employee_available(15,available).
employee_available(16,available).
employee_available(17,available).
employee_available(18,available).
employee_available(19,available).
employee_available(20,unavailable).
employee_available(21,available).
employee_available(22,available).
employee_available(23,available).
employee_available(24,unavailable).
employee_available(25,available).

employee_available(26,available).
employee_available(27,available).
employee_available(28,available).
employee_available(29,available).
employee_available(30,unavailable).
employee_available(31,available).
employee_available(32,available).
employee_available(33,available).
employee_available(34,unavailable).
employee_available(35,available).
employee_available(36,available).
employee_available(37,available).
employee_available(38,available).
employee_available(39,available).
employee_available(40,unavailable).







%check if and element belogs to a list
%example of call  belongs(1,[2,2,3,1]).
%if the element is the same of the head of the list return true
belongs(A,[A|_N]).
%recursive call,ignore the head and call belongs with the element and the rest of the list
belongs(A,[_N|T]):-
    belongs(A,T).


%check is some employee is available
available(available).

%example intersect([a,b,c,d],[b,d,e,f], X). X = [b,d]  returns a list of the elements that appear in both given lists
% Base case if one of the given lists is empty
intersect([],_,[]):- 
    !.
intersect(_,[],[]):- 
    !.
% Recursive call If the element of the first list belongs to the second list
intersect([X|Xs],Y,[X|Result]):- 
    belongs(X,Y),
    intersect(Xs,Y,Result).

intersect([_|Xs],Y,Result):- 
    intersect(Xs,Y,Result).



% Auxiliary function to get the length of a list
%example call -list_length([1,2,3],Len) =3
list_length(X,Len):- 
    list_length(X,0,Len).
% Base case
list_length([],Len,Len).
% Recursive call
list_length([_|X],Sum,Len):-
    Aux is Sum+1,
    list_length(X,Aux,Len).



%check if the number of requirements of the architect is equal or above 50%
fits_criteria(SizeRequirements,Size,P):-
    P is 1,
    Size>= SizeRequirements//2.

%check if the number of requirements of the developer senior is equal or above 33%
fits_criteria(SizeRequirements,Size,P):-
    P is 2,
    Size>= SizeRequirements//3.

%check if the number of requirements of the junior is equal or above 10%
fits_criteria(SizeRequirements,Size,P):-
    P is 3,
    Size>= SizeRequirements//10.

%check if all the requirements fits
%if is an employee
%if the employee is available
%if the employee has the enough skillss of the project
check_requirements(_,[],[],_).
check_requirements(Project,[H|TA],[H|R],P):-
    employee(_Nombre,H),
    employee_available(H,Available),
    available(Available),  
    project_id(Project,IdProject),
    employee_skill(H,Skills),
    project_requirements(IdProject,Requirements),
    intersect(Skills,Requirements,ListIntersected),
    list_length(ListIntersected,Size),
    list_length(Requirements,SizeRequirements),
    fits_criteria(SizeRequirements,Size,P),
    check_requirements(Project,TA,R,P).
check_requirements(Project,[_H|TA],NE,P):-
    check_requirements(Project,TA,NE,P).

%function to get an array of names of the employees,it receive a list of ids
%example call get_names([1,2,3],Len)= Len = ['Angeles Anaya', 'Jonathan Cruz', 'Luis Rosado']
get_names([],[]).
get_names([H|Ta],[HNAMES|X]):-
    employee(HNAMES,H),
    get_names(Ta,X).




%helper to get all the architecs , juniors and seniors
%create_members(ttr,Namesavailablearquitects,Namesavailablejuniors,Nameavailableseniors)
create_members(Project,Namesavailablearquitects,Namesavailablejuniors,Nameavailableseniors):-
    findall(Person, employee_position(Person,solutionArchitect), Arquitects),
    check_requirements(Project,Arquitects,Availablearquitects,1),
    get_names(Availablearquitects,Namesavailablearquitects),
    findall(Person, employee_position(Person,developerJunior), Juniors),
    check_requirements(Project,Juniors,Availablejuniors,3),
    get_names(Availablejuniors,Namesavailablejuniors),
    findall(Person, employee_position(Person,developerSenior), Seniors),
    check_requirements(Project,Seniors,Availableseniors,2),
    get_names(Availableseniors,Nameavailableseniors).


%function to check the available employees
%receives a list of id and return the available ids of the employees
get_available([],[]).
get_available([H|TA],[H|R]):-
    employee_available(H,Available),
    available(Available),
    get_available(TA,R).
get_available([_H|TA],NE):-
    get_available(TA,NE).

%function to get the flag
%verify if is the full array of people 
%is the list contain at least 1 return the same list
get_flag(Array,Flag,_P,Array):-
    list_length(Array,Rarray),
    Rarray>=1,
    Flag is 0.%true
%if is an architect return the all the names of the available architects
get_flag(_Array,Flag,P,Names):-
     P is 1, 
    findall(Person, employee_position(Person,solutionArchitect), Architect),
    get_available(Architect,Availablearchitects),
    get_names(Availablearchitects,Names),
    Flag is 1.%false

%if is an senior  return the all the names of the available senior
get_flag(_Array,Flag,P,Names):-
     P is 2,
     findall(Person, employee_position(Person,developerSenior), Seniors),
     get_available(Seniors,Availableseniors),
    get_names(Availableseniors,Names),
    Flag is 1.%false

%if is an junior return the all the names of the available junior
get_flag(_Array,Flag,P,Names):-
     P is 3,
    findall(Person, employee_position(Person,developerJunior), Juniors),
     get_available(Juniors,Availablejuniors),
    get_names(Availablejuniors,Names),
    Flag is 1.%false



%  append two lists
% Base case
my_append([],Y,Y):-
    !.
%Recursive call
my_append([X|Xs],Y,[X|Result]):-
    my_append(Xs,Y,Result).

% function to gets the list of the employees with the flags
% example of call create_Team_Options(newDB,Namesavailablearquitects,Namesavailablejuniors,Nameavailableseniors,F)
create_Team_Options(Project,Namesavailablearquitects,Namesavailablejuniors,Nameavailableseniors,Flags):-
create_members(Project,Arqui,Junior,Senior),
    get_flag(Arqui,FNamesavailablearquitects,1,Namesavailablearquitects),
    get_flag(Senior,FNameavailableseniors,2,Nameavailableseniors),
    get_flag(Junior,FNamesavailablejuniors,3,Namesavailablejuniors),
    my_append([FNamesavailablearquitects,FNameavailableseniors],[FNamesavailablejuniors],Flags).    












