%%%%%%%%%%%%%%%%%%%%%%%%
% Initialize Variables %
%%%%%%%%%%%%%%%%%%%%%%%%

% Year 1:
array[1..6] of string: Y1names;
                              
array[1..3] of int: Y1vac1;
array[1..3] of int: Y1vac2;
array[1..3] of int: Y1vac3;
array[1..3] of int: Y1vac4;
array[1..3] of int: Y1vac5;
array[1..3] of int: Y1vac6;

array[1..12] of var 1..7: Y1arr1; 
array[1..12] of var 1..7: Y1arr2; 
array[1..12] of var 1..7: Y1arr3; 
array[1..12] of var 1..7: Y1arr4;
array[1..12] of var 1..7: Y1arr5;
array[1..12] of var 1..7: Y1arr6; 

% Year 2:
array[1..6] of string: Y2names;

array[1..4] of int: Y2vac1;
array[1..4] of int: Y2vac2;
array[1..4] of int: Y2vac3;
array[1..4] of int: Y2vac4;
array[1..4] of int: Y2vac5;
array[1..4] of int: Y2vac6;

array[1..12] of var 1..9: Y2arr1; 
array[1..12] of var 1..9: Y2arr2; 
array[1..12] of var 1..9: Y2arr3; 
array[1..12] of var 1..9: Y2arr4; 
array[1..12] of var 1..9: Y2arr5; 
array[1..12] of var 1..9: Y2arr6; 

% Year 3:
array[1..6] of string: Y3names;

array[1..4] of int: Y3vac1;
array[1..4] of int: Y3vac2;
array[1..4] of int: Y3vac3;
array[1..4] of int: Y3vac4;
array[1..4] of int: Y3vac5;
array[1..4] of int: Y3vac6;
    
array[1..12] of var 1..9: Y3arr1; 
array[1..12] of var 1..9: Y3arr2; 
array[1..12] of var 1..9: Y3arr3; 
array[1..12] of var 1..9: Y3arr4; 
array[1..12] of var 1..9: Y3arr5; 
array[1..12] of var 1..9: Y3arr6; 

% Conversions- 
% Year 1- 1: 'Inpt', 2: 'OBGYN', 3: 'Peds', 4: 'NICU', 5: 'Emergency Med', 6: 'Psych', 7: 'Surg'
% Year 2- 1: 'Inpt', 2: 'EM UMC', 3: 'Gyn', 4: 'Cards,', 5: 'Crit Care', 6: 'Amb Peds', 7: 'Practice Mngmt', 8: 'Peds EM', 9: 'Ortho'
% Year 3- 1: 'Elective', 2: 'Inpt', 3: 'ENT/Opthal', 4: 'Uro/Neuro,', 5: 'MSK', 6: 'Amb Peds', 7: 'Comm Med', 8: 'Derm'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%
% Constraints %
%%%%%%%%%%%%%%%

%Year 1:
% Define the constraints for Y1arr1
constraint count(Y1arr1, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(Y1arr1, 2) = 2; % The number 2 must be repeated 2 times
constraint count(Y1arr1, 3) = 2; % The number 3 must be repeated 2 times
constraint count(Y1arr1, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(Y1arr1, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y1arr1, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y1arr1, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (Y1arr1[i] != 1 \/ Y1arr1[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y1arr1[i] != 1 /\ Y1arr1[i] != 2 \/ i != Y1vac1[j])
);

% Define the constraints for Y1arr2
constraint count(Y1arr2, 1) = 4; % The number 1 must be repeated 4 times
constraint count(Y1arr2, 2) = 2; % The number 2 must be repeated 2 times
constraint count(Y1arr2, 3) = 2; % The number 3 must be repeated 2 times
constraint count(Y1arr2, 4) = 1; % The number 4 must be repeated 1 times
constraint count(Y1arr2, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y1arr2, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y1arr2, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (Y1arr2[i] != 1 \/ Y1arr2[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y1arr2[i] != 1 /\ Y1arr2[i] != 2 \/ i != Y1vac2[j])
);

% Define the constraints for Y1arr3
constraint count(Y1arr3, 1) = 4; % The number 1 must be repeated 4 times
constraint count(Y1arr3, 2) = 2; % The number 2 must be repeated 2 times
constraint count(Y1arr3, 3) = 2; % The number 3 must be repeated 2 times
constraint count(Y1arr3, 4) = 1; % The number 4 must be repeated 1 times
constraint count(Y1arr3, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y1arr3, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y1arr3, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (Y1arr3[i] != 1 \/ Y1arr3[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y1arr3[i] != 1 /\ Y1arr3[i] != 2 \/ i != Y1vac3[j])
);

% Define the constraints for Y1arr4
constraint count(Y1arr4, 1) = 4; % The number 1 must be repeated 4 times
constraint count(Y1arr4, 2) = 2; % The number 2 must be repeated 2 times
constraint count(Y1arr4, 3) = 2; % The number 3 must be repeated 2 times
constraint count(Y1arr4, 4) = 1; % The number 4 must be repeated 1 times
constraint count(Y1arr4, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y1arr4, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y1arr4, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (Y1arr4[i] != 1 \/ Y1arr4[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y1arr4[i] != 1 /\ Y1arr4[i] != 2 \/ i != Y1vac4[j])
);

% Define the constraints for Y1arr5
constraint count(Y1arr5, 1) = 4; % The number 1 must be repeated 4 times
constraint count(Y1arr5, 2) = 2; % The number 2 must be repeated 2 times
constraint count(Y1arr5, 3) = 2; % The number 3 must be repeated 2 times
constraint count(Y1arr5, 4) = 1; % The number 4 must be repeated 1 times
constraint count(Y1arr5, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y1arr5, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y1arr5, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (Y1arr5[i] != 1 \/ Y1arr5[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y1arr5[i] != 1 /\ Y1arr5[i] != 2 \/ i != Y1vac5[j])
);

% Define the constraints for Y1arr6
constraint count(Y1arr6, 1) = 4; % The number 1 must be repeated 4 times
constraint count(Y1arr6, 2) = 2; % The number 2 must be repeated 2 times
constraint count(Y1arr6, 3) = 2; % The number 3 must be repeated 2 times
constraint count(Y1arr6, 4) = 1; % The number 4 must be repeated 1 times
constraint count(Y1arr6, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y1arr6, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y1arr6, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (Y1arr6[i] != 1 \/ Y1arr6[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y1arr6[i] != 1 /\ Y1arr6[i] != 2 \/ i != Y1vac6[j])
);

% Two different instances of 1 in each column of all Y1arrays
constraint forall(j in 1..12) (
count([Y1arr1[j], Y1arr2[j], Y1arr3[j], Y1arr4[j], Y1arr5[j], Y1arr6[j]], 1) = 2
); 

% Numbers cannot repeat in columns
constraint forall(i in 1..12) (
  (Y1arr1[i] >= 2 /\ Y1arr1[i] <= 7) ->
  Y1arr1[i] != Y1arr2[i] /\ Y1arr1[i] != Y1arr3[i] /\ Y1arr1[i] != Y1arr4[i] /\ Y1arr1[i] != Y1arr5[i] /\ Y1arr1[i] != Y1arr6[i]
);

constraint forall(i in 1..12) (
  (Y1arr2[i] >= 2 /\ Y1arr2[i] <= 7) ->
  Y1arr2[i] != Y1arr1[i] /\ Y1arr2[i] != Y1arr3[i] /\ Y1arr2[i] != Y1arr4[i] /\ Y1arr2[i] != Y1arr5[i] /\ Y1arr2[i] != Y1arr6[i]
);

constraint forall(i in 1..12) (
  (Y1arr3[i] >= 2 /\ Y1arr3[i] <= 7) ->
  Y1arr3[i] != Y1arr1[i] /\ Y1arr3[i] != Y1arr2[i] /\ Y1arr3[i] != Y1arr4[i] /\ Y1arr3[i] != Y1arr5[i] /\ Y1arr3[i] != Y1arr6[i]
);

constraint forall(i in 1..12) (
  (Y1arr4[i] >= 2 /\ Y1arr4[i] <= 7) ->
  Y1arr4[i] != Y1arr1[i] /\ Y1arr4[i] != Y1arr2[i] /\ Y1arr4[i] != Y1arr3[i] /\ Y1arr4[i] != Y1arr5[i] /\ Y1arr4[i] != Y1arr6[i]
);
constraint forall(i in 1..12) (
  (Y1arr5[i] >= 2 /\ Y1arr5[i] <= 7) ->
  Y1arr5[i] != Y1arr6[i]
 );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Year 2: 
% Define the constraints for Y2arr1
constraint count(Y2arr1, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(Y2arr1, 2) = 1; % The number 2 must be repeated 1 times
constraint count(Y2arr1, 3) = 1; % The number 3 must be repeated 1 times
constraint count(Y2arr1, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(Y2arr1, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y2arr1, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y2arr1, 7) = 1; % The number 7 must be repeated 1 times
constraint count(Y2arr1, 8) = 1; % The number 8 must be repeated 1 times
constraint count(Y2arr1, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (Y2arr1[i] != 1 \/ Y2arr1[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..4) ( 
    forall(i in 1..12) (Y2arr1[i] != 1 /\ Y2arr1[i] != 2 \/ i != Y2vac1[j])
);

% Define the constraints for Y2arr2
constraint count(Y2arr2, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(Y2arr2, 2) = 1; % The number 2 must be repeated 1 times
constraint count(Y2arr2, 3) = 1; % The number 3 must be repeated 1 times
constraint count(Y2arr2, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(Y2arr2, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y2arr2, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y2arr2, 7) = 1; % The number 7 must be repeated 1 times
constraint count(Y2arr2, 8) = 1; % The number 8 must be repeated 1 times
constraint count(Y2arr2, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (Y2arr2[i] != 1 \/ Y2arr2[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..4) ( 
    forall(i in 1..12) (Y2arr2[i] != 1 /\ Y2arr2[i] != 2 \/ i != Y2vac2[j])
);

% Define the constraints for Y2arr3
constraint count(Y2arr3, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(Y2arr3, 2) = 1; % The number 2 must be repeated 1 times
constraint count(Y2arr3, 3) = 1; % The number 3 must be repeated 1 times
constraint count(Y2arr3, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(Y2arr3, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y2arr3, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y2arr3, 7) = 1; % The number 7 must be repeated 1 times
constraint count(Y2arr3, 8) = 1; % The number 8 must be repeated 1 times
constraint count(Y2arr3, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (Y2arr3[i] != 1 \/ Y2arr3[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..4) ( 
    forall(i in 1..12) (Y2arr3[i] != 1 /\ Y2arr3[i] != 2 \/ i != Y2vac3[j])
);

% Define the constraints for Y2arr4
constraint count(Y2arr4, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(Y2arr4, 2) = 1; % The number 2 must be repeated 1 times
constraint count(Y2arr4, 3) = 1; % The number 3 must be repeated 1 times
constraint count(Y2arr4, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(Y2arr4, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y2arr4, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y2arr4, 7) = 1; % The number 7 must be repeated 1 times
constraint count(Y2arr4, 8) = 1; % The number 8 must be repeated 1 times
constraint count(Y2arr4, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (Y2arr4[i] != 1 \/ Y2arr4[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..4) ( 
    forall(i in 1..12) (Y2arr4[i] != 1 /\ Y2arr4[i] != 2 \/ i != Y2vac4[j])
);

% Define the constraints for Y2arr5
constraint count(Y2arr5, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(Y2arr5, 2) = 1; % The number 2 must be repeated 1 times
constraint count(Y2arr5, 3) = 1; % The number 3 must be repeated 1 times
constraint count(Y2arr5, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(Y2arr5, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y2arr5, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y2arr5, 7) = 1; % The number 7 must be repeated 1 times
constraint count(Y2arr5, 8) = 1; % The number 8 must be repeated 1 times
constraint count(Y2arr5, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (Y2arr5[i] != 1 \/ Y2arr5[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..4) ( 
    forall(i in 1..12) (Y2arr5[i] != 1 /\ Y2arr5[i] != 2 \/ i != Y2vac5[j])
);

% Define the constraints for Y2arr6
constraint count(Y2arr6, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(Y2arr6, 2) = 1; % The number 2 must be repeated 1 times
constraint count(Y2arr6, 3) = 1; % The number 3 must be repeated 1 times
constraint count(Y2arr6, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(Y2arr6, 5) = 1; % The number 5 must be repeated 1 times
constraint count(Y2arr6, 6) = 1; % The number 6 must be repeated 1 times
constraint count(Y2arr6, 7) = 1; % The number 7 must be repeated 1 times
constraint count(Y2arr6, 8) = 1; % The number 8 must be repeated 1 times
constraint count(Y2arr6, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (Y2arr6[i] != 1 \/ Y2arr6[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 and 2 cannot be in a vacation month
constraint forall(j in 1..4) ( 
    forall(i in 1..12) (Y2arr6[i] != 1 /\ Y2arr6[i] != 2 \/ i != Y2vac6[j])
);

% Two different instances of 1 in each column of all Y2arrays
constraint forall(j in 1..12) (
count([Y2arr1[j], Y2arr2[j], Y2arr3[j], Y2arr4[j], Y2arr5[j], Y2arr6[j]], 1) = 2
); 

% Numbers cannot repeat in columns
constraint forall(i in 1..12) (
  (Y2arr1[i] >= 2 /\ Y2arr1[i] <= 9) ->
  Y2arr1[i] != Y2arr2[i] /\ Y2arr1[i] != Y2arr3[i] /\ Y2arr1[i] != Y2arr4[i] /\ Y2arr1[i] != Y2arr5[i] /\ Y2arr1[i] != Y2arr6[i]
);

constraint forall(i in 1..12) (
  (Y2arr2[i] >= 2 /\ Y2arr2[i] <= 9) ->
  Y2arr2[i] != Y2arr1[i] /\ Y2arr2[i] != Y2arr3[i] /\ Y2arr2[i] != Y2arr4[i] /\ Y2arr2[i] != Y2arr5[i] /\ Y2arr2[i] != Y2arr6[i]
);

constraint forall(i in 1..12) (
  (Y2arr3[i] >= 2 /\ Y2arr3[i] <= 9) ->
  Y2arr3[i] != Y2arr1[i] /\ Y2arr3[i] != Y2arr2[i] /\ Y2arr3[i] != Y2arr4[i] /\ Y2arr3[i] != Y2arr5[i] /\ Y2arr3[i] != Y2arr6[i]
);

constraint forall(i in 1..12) (
  (Y2arr4[i] >= 2 /\ Y2arr4[i] <= 9) ->
  Y2arr4[i] != Y2arr1[i] /\ Y2arr4[i] != Y2arr2[i] /\ Y2arr4[i] != Y2arr3[i] /\ Y2arr4[i] != Y2arr5[i] /\ Y2arr4[i] != Y2arr6[i]
);
constraint forall(i in 1..12) (
  (Y2arr5[i] >= 2 /\ Y2arr5[i] <= 9) ->
  Y2arr5[i] != Y2arr6[i]
 );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Year 3:
% Define the constraints for Y3arr1
constraint count(Y3arr1, 1) = 4; % Elective
constraint count(Y3arr1, 2) = 2; % Inpt
constraint count(Y3arr1, 3) = 1; % ENT/Opthal
constraint count(Y3arr1, 4) = 1; % Uro/Neuro
constraint count(Y3arr1, 5) = 1; % MSK
constraint count(Y3arr1, 6) = 1; % Amd Peds
constraint count(Y3arr1, 7) = 1; % Comm Med
constraint count(Y3arr1, 8) = 1; % Derm
constraint forall(i in 1..11) (Y3arr1[i] != 2 \/ Y3arr1[i+1] != 2); % The number 2 cannot be used back to back
% The number 2, 3, and 4 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y3arr1[i] != 2 /\ Y3arr1[i] != 3 /\ Y3arr1[i] != 4 \/ i != Y3vac1[j])
);

% Define the constraints for Y3arr2
constraint count(Y3arr2, 1) = 4; % Elective
constraint count(Y3arr2, 2) = 2; % Inpt
constraint count(Y3arr2, 3) = 1; % ENT/Opthal
constraint count(Y3arr2, 4) = 1; % Uro/Neuro
constraint count(Y3arr2, 5) = 1; % MSK
constraint count(Y3arr2, 6) = 1; % Amd Peds
constraint count(Y3arr2, 7) = 1; % Comm Med
constraint count(Y3arr2, 8) = 1; % Derm
constraint forall(i in 1..11) (Y3arr2[i] != 2 \/ Y3arr2[i+1] != 2); % The number 2 cannot be used back to back
% The number 2, 3, and 4 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y3arr2[i] != 2 /\ Y3arr2[i] != 3 /\ Y3arr2[i] != 4 \/ i != Y3vac2[j])
);

% Define the constraints for Y3arr3
constraint count(Y3arr3, 1) = 4; % Elective
constraint count(Y3arr3, 2) = 2; % Inpt
constraint count(Y3arr3, 3) = 1; % ENT/Opthal
constraint count(Y3arr3, 4) = 1; % Uro/Neuro
constraint count(Y3arr3, 5) = 1; % MSK
constraint count(Y3arr3, 6) = 1; % Amd Peds
constraint count(Y3arr3, 7) = 1; % Comm Med
constraint count(Y3arr3, 8) = 1; % Derm
constraint forall(i in 1..11) (Y3arr3[i] != 2 \/ Y3arr3[i+1] != 2); % The number 2 cannot be used back to back
% The number 2, 3, and 4 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y3arr3[i] != 2 /\ Y3arr3[i] != 3 /\ Y3arr3[i] != 4 \/ i != Y3vac3[j])
);

% Define the constraints for Y3arr4
constraint count(Y3arr4, 1) = 4; % Elective
constraint count(Y3arr4, 2) = 2; % Inpt
constraint count(Y3arr4, 3) = 1; % ENT/Opthal
constraint count(Y3arr4, 4) = 1; % Uro/Neuro
constraint count(Y3arr4, 5) = 1; % MSK
constraint count(Y3arr4, 6) = 1; % Amd Peds
constraint count(Y3arr4, 7) = 1; % Comm Med
constraint count(Y3arr4, 8) = 1; % Derm
constraint forall(i in 1..11) (Y3arr4[i] != 2 \/ Y3arr4[i+1] != 2); % The number 1 cannot be used back to back
% The number 1, 3, and 4 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y3arr4[i] != 2 /\ Y3arr4[i] != 3 /\ Y3arr4[i] != 4 \/ i != Y3vac4[j])
);

% Define the constraints for Y3arr5
constraint count(Y3arr5, 1) = 4; % Elective
constraint count(Y3arr5, 2) = 2; % Inpt
constraint count(Y3arr5, 3) = 1; % ENT/Opthal
constraint count(Y3arr5, 4) = 1; % Uro/Neuro
constraint count(Y3arr5, 5) = 1; % MSK
constraint count(Y3arr5, 6) = 1; % Amd Peds
constraint count(Y3arr5, 7) = 1; % Comm Med
constraint count(Y3arr5, 8) = 1; % Derm
constraint forall(i in 1..11) (Y3arr5[i] != 2 \/ Y3arr5[i+1] != 2); % The number 2 cannot be used back to back
% The number 1, 3, and 4 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y3arr6[i] != 2 /\ Y3arr6[i] != 3 /\ Y3arr6[i] != 4 \/ i != Y3vac5[j])
);

% Define the constraints for Y3arr6
constraint count(Y3arr6, 1) = 4; % Elective
constraint count(Y3arr6, 2) = 2; % Inpt
constraint count(Y3arr6, 3) = 1; % ENT/Opthal
constraint count(Y3arr6, 4) = 1; % Uro/Neuro
constraint count(Y3arr6, 5) = 1; % MSK
constraint count(Y3arr6, 6) = 1; % Amd Peds
constraint count(Y3arr6, 7) = 1; % Comm Med
constraint count(Y3arr6, 8) = 1; % Derm
constraint forall(i in 1..11) (Y3arr6[i] != 2 \/ Y3arr6[i+1] != 2); % The number 2 cannot be used back to back
% The number 1, 3, and 4 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (Y3arr6[i] != 2 /\ Y3arr6[i] != 3 /\ Y3arr6[i] != 4 \/ i != Y3vac6[j])
);
% Two different instances of 1 in each column of all Y3arrays
constraint forall(j in 1..12) (
count([Y3arr1[j], Y3arr2[j], Y3arr3[j], Y3arr4[j], Y3arr6[j], Y3arr6[j]], 1) = 2
); 

% Numbers cannot repeat in columns
constraint forall(i in 1..12) (
  (Y3arr1[i] >= 2 /\ Y3arr1[i] <= 8) ->
  Y3arr1[i] != Y3arr2[i] /\ Y3arr1[i] != Y3arr3[i] /\ Y3arr1[i] != Y3arr4[i] /\ Y3arr1[i] != Y3arr5[i] /\ Y3arr1[i] != Y3arr6[i]
);

constraint forall(i in 1..12) (
  (Y3arr2[i] >= 2 /\ Y3arr2[i] <= 8) ->
  Y3arr2[i] != Y3arr1[i] /\ Y3arr2[i] != Y3arr3[i] /\ Y3arr2[i] != Y3arr4[i] /\ Y3arr2[i] != Y3arr5[i] /\ Y3arr2[i] != Y3arr6[i]
);

constraint forall(i in 1..12) (
  (Y3arr3[i] >= 2 /\ Y3arr3[i] <= 8) ->
  Y3arr3[i] != Y3arr1[i] /\ Y3arr3[i] != Y3arr2[i] /\ Y3arr3[i] != Y3arr4[i] /\ Y3arr3[i] != Y3arr5[i] /\ Y3arr3[i] != Y3arr6[i]
);

constraint forall(i in 1..12) (
  (Y3arr4[i] >= 2 /\ Y3arr4[i] <= 8) ->
  Y3arr4[i] != Y3arr1[i] /\ Y3arr4[i] != Y3arr2[i] /\ Y3arr4[i] != Y3arr3[i] /\ Y3arr4[i] != Y3arr5[i] /\ Y3arr4[i] != Y3arr6[i]
);
constraint forall(i in 1..12) (
  (Y3arr5[i] >= 2 /\ Y3arr5[i] <= 8) ->
  Y3arr5[i] != Y3arr6[i]
 );

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%
% Solving and Output %
%%%%%%%%%%%%%%%%%%%%%%

% Solve the problem
solve satisfy;

% Output the solutions
output ["data1 = {\n",
        "\(Y1names[1]): \(Y1arr1),\n", "\(Y1names[2]): \(Y1arr2),\n", "\(Y1names[3]): \(Y1arr3),\n", 
        "\(Y1names[4]): \(Y1arr4),\n",  "\(Y1names[5]): \(Y1arr5),\n", "\(Y1names[6]): \(Y1arr6)\n}\n",
        "data2 = {\n",
        "\(Y2names[1]): \(Y2arr1),\n", "\(Y2names[2]): \(Y2arr2),\n", "\(Y2names[3]): \(Y2arr3),\n", 
        "\(Y2names[4]): \(Y2arr4),\n",  "\(Y2names[5]): \(Y2arr5),\n", "\(Y2names[6]): \(Y2arr6)\n}\n",
        "data3 = {\n",
        "\(Y3names[1]): \(Y3arr1),\n", "\(Y3names[2]): \(Y3arr2),\n", "\(Y3names[3]): \(Y3arr3),\n", 
        "\(Y3names[4]): \(Y3arr4),\n",  "\(Y3names[5]): \(Y3arr5),\n", "\(Y3names[6]): \(Y3arr6)\n}"];