
employee(angeles,1).
employee(jonathan,2).
employee(luis,3).
employee(eduardo,4).
employee(angie,5).
employee(maria,6).
employee(jose,7).
employee(gigi,8).
employee(rodrigo,9).
employee(pepe,10).

employee_position(1,solutionArchitect).
employee_position(5,solutionArchitect).
employee_position(8,solutionArchitect).

employee_position(3,developerSenior).
employee_position(4,developerSenior).
employee_position(9,developerSenior).

employee_position(2,developerJunior).
employee_position(6,developerJunior).
employee_position(7,developerJunior).
employee_position(10,developerJunior).

employee_skill(1,[azure,cloud,java]).
employee_skill(2,[cpp,c,java]).
employee_skill(3,[c,cpp]).
employee_skill(4,[java,azure,cpp,cloud]).
employee_skill(5,[c,cloud,java]).
employee_skill(6,[cpp,python,excel,c]).
employee_skill(7,[c,python,bootstrap,javascript]).
employee_skill(8,[bootstrap,javascript,cloud,cpp]).
employee_skill(9,[c,cpp]).
employee_skill(10,[cpp,java,excel]).



project_id(overtimetool,00099).
project_id(ttr,11199).
project_id(qms,22299).
project_id(datawarehouse,33399).
project_id(orion,44499).








project_requirements(00099,[cloud,azure,excel,python]).
project_requirements(11199,[cpp,c,excel]).
project_requirements(22299,[cpp,c,excel,python]).
project_requirements(33399,[excel]).
project_requirements(44499,[bootstrap,cpp,c,azure]).



employee_available(1,available).
employee_available(2,available).
employee_available(3,available).
employee_available(4,unavailable).
employee_available(5,available).
employee_available(6,available).
employee_available(7,available).
employee_available(8,available).
employee_available(9,available).
employee_available(10,unavailable).






%each project has 4 members
%1  solution architect
%1  developers juniors
%1 developer senior 
%%you  must to be available
%each member need experiences with the project
%each member has 1 position 

belongs(A,[A|_N]).
belongs(A,[_N|T]):-
    belongs(A,T).

available(available).

% Intersect, returns a list of the elements that appear in both given lists
% Base case: If one of the given lists is empty
intersect([],_,[]):- 
    !.
intersect(_,[],[]):- 
    !.
% Recursive call: If the element of the first list belongs to the second list
intersect([X|Xs],Y,[X|Result]):- 
    belongs(X,Y),
    intersect(Xs,Y,Result).

intersect([_|Xs],Y,Result):- 
    intersect(Xs,Y,Result).
%example
%intersect([a,b,c,d],[b,d,e,f], X). X = [b,d]
%get_available([1,2,3,5],Arrayofavilables)
%
% Auxiliary function to get the length of a list
list_length(X,Len):- 
    list_length(X,0,Len).
% Base case
list_length([],Len,Len).
% Recursive call
list_length([_|X],Sum,Len):-
    Aux is Sum+1,
    list_length(X,Aux,Len).




fits_criteria(SizeRequirements,Size,P):-
    P is 1,
    Size>= SizeRequirements//2.
fits_criteria(SizeRequirements,Size,P):-
    P is 2,
    Size>= SizeRequirements//3.
fits_criteria(SizeRequirements,Size,P):-
    P is 3,
    Size>= SizeRequirements//10.

get_available(_,[],[],_).
get_available(Project,[H|TA],[H|R],P):-
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
    get_available(Project,TA,R,P).
get_available(Project,[_H|TA],NE,P):-
    get_available(Project,TA,NE,P).

get_names([],[]).
get_names([H|Ta],[HNAMES|X]):-
    employee(HNAMES,H),
    get_names(Ta,X).





%create_members(Bag).
create_members(Project,Namesavailablearquitects,Namesavailablejuniors,Nameavailableseniors):-
    findall(Person, employee_position(Person,solutionArchitect), Arquitects),
    get_available(Project,Arquitects,Availablearquitects,1),
    get_names(Availablearquitects,Namesavailablearquitects),
    findall(Person, employee_position(Person,developerJunior), Juniors),
    get_available(Project,Juniors,Availablejuniors,3),
    get_names(Availablejuniors,Namesavailablejuniors),
    findall(Person, employee_position(Person,developerSenior), Seniors),
    get_available(Project,Seniors,Availableseniors,2),
    get_names(Availableseniors,Nameavailableseniors).




get_flag(Array,Flag,P,Array):-
    list_length(Array,Rarray),
    Rarray>=1,
    Flag is 0.%true
get_flag(Array,Flag,P,Names):-
     P is 1, 
    findall(Person, employee_position(Person,solutionArchitect), Architect),
    get_names(Architect,Names),
    Flag is 1.%false

get_flag(Array,Flag,P,Names):-
     P is 2,
     findall(Person, employee_position(Person,developerSenior), Seniors),
    get_names(Seniors,Names),
    Flag is 1.%false
get_flag(Array,Flag,P,Names):-
     P is 3,
    findall(Person, employee_position(Person,developerJunior), Juniors),
     get_names(Juniors,Names),
    Flag is 1.%false
create_Team_Options(Project,Namesavailablearquitects,Namesavailablejuniors,Nameavailableseniors,Flags):-
create_members(Project,Arqui,Junior,Senior),
    get_flag(Arqui,FNamesavailablearquitects,1,Namesavailablearquitects),
    get_flag(Senior,FNameavailableseniors,2,Nameavailableseniors),
    get_flag(Junior,FNamesavailablejuniors,3,Namesavailablejuniors),
    my_append([FNamesavailablearquitects,FNameavailableseniors],[FNamesavailablejuniors],Flags).    



%para sacar los miembros de un proyecto primero tengo que meter el nombre del proyecto
%depues voy a sacar los requerimientos
%despues voy a sacar quien tiene esos requerimientos
%depues voy a sacar su nombre con id
%despues si esta disponible
%
%employee_position(ID,Position),
%    is_available(Name,Available),
%   available(Available).






% Rotate a list N places to the left
% Auxiliary function to append two lists
% Base case
my_append([],Y,Y):-
    !.
%Recursive call
my_append([X|Xs],Y,[X|Result]):-
    my_append(Xs,Y,Result).




