
employee(michel,1).
employee(jonathan,2).
employee(luis,3).
employee(eduardo,4).
employee(angie,5).
employee(maria,6).
employee(jose,7).
employee(fernando,8).
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




employee_skill(1,azure).
employee_skill(1,cloud).
employee_skill(1,java).
employee_skill(2,java).
employee_skill(2,c).
employee_skill(2,cpp).
employee_skill(3,c).
employee_skill(3,cpp).
employee_skill(4,java).
employee_skill(4,azure).
employee_skill(4,cpp).
employee_skill(4,cloud).
employee_skill(5,c).
employee_skill(5,cloud).
employee_skill(5,java).
employee_skill(6,cpp).
employee_skill(6,python).
employee_skill(6,excel).
employee_skill(7,c).
employee_skill(7,python).
employee_skill(7,bootstrap).
employee_skill(7,javascript).
employee_skill(8,bootstrap).
employee_skill(8,javascript).
employee_skill(8,cloud).
employee_skill(8,cpp).
employee_skill(9,c).
employee_skill(9,cpp).
employee_skill(10,cpp).
employee_skill(10,java).
employee_skill(10,excel).



project_id(overtimetool,00099).
project_id(ttr,11199).
project_id(qms,22299).
project_id(datawarehouse,33399).
project_id(orion,44499).

employee_experience(1,44499).
employee_experience(1,00099).
employee_experience(2,22299).
employee_experience(2,44499).
employee_experience(2,33399).
employee_experience(2,11199).
employee_experience(3,44499).
employee_experience(4,00099).
employee_experience(4,22299).
employee_experience(5,22299).
employee_experience(5,00099).
employee_experience(5,33399).
employee_experience(5,11199).
employee_experience(6,00099).
employee_experience(6,33399).
employee_experience(7,11199).
employee_experience(7,22299).
employee_experience(8,44499).
employee_experience(8,22299).
employee_experience(9,11199).
employee_experience(9,33399).
employee_experience(9,00099).
employee_experience(10,22299).
employee_experience(10,11199).
employee_experience(10,00099).






project_requirements(00099,[python,azure,cpp]).
project_requirements(11199,[cpp,c,excel]).
project_requirements(22299,[cpp,c,excel,python]).
project_requirements(33399,[excel]).
project_requirements(44499,[bootstrap,cpp,c,azure]).



employee_available(1,available).
employee_available(2,available).
employee_available(3,available).
employee_available(4,unavailable).
employee_available(5,unavailable).
employee_available(6,available).
employee_available(7,available).
employee_available(8,unavailable).
employee_available(9,available).
employee_available(10,unavailable).




get_positions(Name, Position):-
  employee(Name, ID),
  employee_position(ID, Position).



get_skills(Name, Skills):-
  employee(Name, ID),
  employee_skill(ID, Skills).

get_experience(Name, Experience):-
  employee(Name, ID),
  employee_experience(ID, IDPROJECT),
  project_id(Experience,IDPROJECT)  .




