#set definition
set Resources;
set Projects;

#parameters definition
param Profit{Projects};
param Availabilities{Resources};
param Requirement {Resources, Projects};

#decision variable definition (non-negativity)
var Selection{Projects}binary;

#objective function definition
maximize Total_Profit: sum {j in Projects} Profit[j]*Selection[j];

#contraints definition
subject to ConstrAvail {i in Resources}: sum {j in Projects} Requirement[i,j] * Selection[j] <= Availabilities[i];

