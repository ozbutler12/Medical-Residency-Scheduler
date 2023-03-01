% Define the arrays to be filled
array[1..12] of var 1..9: arr1; %Cody Bushyhead
array[1..12] of var 1..9: arr2; %Prabh Khunkhun
array[1..12] of var 1..9: arr3; %Jay Napolitano
array[1..12] of var 1..9: arr4; %Andrew Oracz
array[1..12] of var 1..9: arr5; %Natasha Rezvani
array[1..12] of var 1..9: arr6; %Steven Vo

%Vacation Momths
array[1..4] of int: vac1= [9,12,3,6];
array[1..4] of int: vac2= [9,12,4,6];
array[1..4] of int: vac3= [11,3,5,6];
array[1..5] of int: vac4= [10,2,4,5,6];
array[1..4] of int: vac5= [8,12,2,4];
array[1..4] of int: vac6= [12,1,3,5];


% Define the constraints for arr1
constraint count(arr1, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(arr1, 2) = 1; % The number 2 must be repeated 1 times
constraint count(arr1, 3) = 1; % The number 3 must be repeated 1 times
constraint count(arr1, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(arr1, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr1, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr1, 7) = 1; % The number 7 must be repeated 1 times
constraint count(arr1, 8) = 1; % The number 8 must be repeated 1 times
constraint count(arr1, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (arr1[i] != 1 \/ arr1[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (arr1[i] != 1 \/ i != vac1[j])
);


% Define the constraints for arr2
constraint count(arr2, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(arr2, 2) = 1; % The number 2 must be repeated 1 times
constraint count(arr2, 3) = 1; % The number 3 must be repeated 1 times
constraint count(arr2, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(arr2, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr2, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr2, 7) = 1; % The number 7 must be repeated 1 times
constraint count(arr2, 8) = 1; % The number 8 must be repeated 1 times
constraint count(arr2, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (arr2[i] != 1 \/ arr2[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (arr2[i] != 1 \/ i != vac1[j])
);

% Define the constraints for arr3
constraint count(arr3, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(arr3, 2) = 1; % The number 2 must be repeated 1 times
constraint count(arr3, 3) = 1; % The number 3 must be repeated 1 times
constraint count(arr3, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(arr3, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr3, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr3, 7) = 1; % The number 7 must be repeated 1 times
constraint count(arr3, 8) = 1; % The number 8 must be repeated 1 times
constraint count(arr3, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (arr3[i] != 1 \/ arr3[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (arr3[i] != 1 \/ i != vac1[j])
);


% Define the constraints for arr4
constraint count(arr4, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(arr4, 2) = 1; % The number 2 must be repeated 1 times
constraint count(arr4, 3) = 1; % The number 3 must be repeated 1 times
constraint count(arr4, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(arr4, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr4, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr4, 7) = 1; % The number 7 must be repeated 1 times
constraint count(arr4, 8) = 1; % The number 8 must be repeated 1 times
constraint count(arr4, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (arr4[i] != 1 \/ arr4[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (arr4[i] != 1 \/ i != vac1[j])
);


% Define the constraints for arr5
constraint count(arr5, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(arr5, 2) = 1; % The number 2 must be repeated 1 times
constraint count(arr5, 3) = 1; % The number 3 must be repeated 1 times
constraint count(arr5, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(arr5, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr5, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr5, 7) = 1; % The number 7 must be repeated 1 times
constraint count(arr5, 8) = 1; % The number 8 must be repeated 1 times
constraint count(arr5, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (arr5[i] != 1 \/ arr5[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (arr5[i] != 1 \/ i != vac1[j])
);

% Define the constraints for arr5
constraint count(arr6, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(arr6, 2) = 1; % The number 2 must be repeated 1 times
constraint count(arr6, 3) = 1; % The number 3 must be repeated 1 times
constraint count(arr6, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(arr6, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr6, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr6, 7) = 1; % The number 7 must be repeated 1 times
constraint count(arr6, 8) = 1; % The number 8 must be repeated 1 times
constraint count(arr6, 9) = 1; % The number 9 must be repeated 1 times
constraint forall(i in 1..11) (arr5[i] != 1 \/ arr5[i+1] != 1); % The number 1 cannot be used back to back
% The number 1 cannot be in a vacation month
constraint forall(j in 1..3) ( 
    forall(i in 1..12) (arr5[i] != 1 \/ i != vac1[j])
);


% Two different instances of 1 in each column of all arrays
constraint forall(j in 1..12) (
  count([arr1[j], arr2[j], arr3[j], arr4[j], arr5[j], arr6[j]], 1) !=0
); 

% Numbers cannot repeat in columns
constraint forall(i in 1..12) (
  (arr1[i] >= 2 /\ arr1[i] <= 7) ->
  arr1[i] != arr2[i] /\ arr1[i] != arr3[i] /\ arr1[i] != arr4[i] /\ arr1[i] != arr5[i] /\ arr1[i] != arr6[i]
);

constraint forall(i in 1..12) (
  (arr2[i] >= 2 /\ arr2[i] <= 7) ->
  arr2[i] != arr1[i] /\ arr2[i] != arr3[i] /\ arr2[i] != arr4[i] /\ arr2[i] != arr5[i] /\ arr2[i] != arr6[i]
);

constraint forall(i in 1..12) (
  (arr3[i] >= 2 /\ arr3[i] <= 7) ->
  arr3[i] != arr1[i] /\ arr3[i] != arr2[i] /\ arr3[i] != arr4[i] /\ arr3[i] != arr5[i] /\ arr3[i] != arr6[i]
);

constraint forall(i in 1..12) (
  (arr4[i] >= 2 /\ arr4[i] <= 7) ->
  arr4[i] != arr1[i] /\ arr4[i] != arr2[i] /\ arr4[i] != arr3[i] /\ arr4[i] != arr5[i] /\ arr4[i] != arr6[i]
);
constraint forall(i in 1..12) (
  (arr5[i] >= 2 /\ arr5[i] <= 7) ->
  arr5[i] != arr6[i]
 );

% Solve the problem
solve satisfy;

% Output the solutions
output ["\'Cody Bushyhead\': \(arr1),\n", "\'Prabh Khunkhun\': \(arr2),\n", "\'Jay Napolitano\': \(arr3),\n", 
        "\'Andrew Oracz\': \(arr4),\n",  "\'Natasha Rezvani\': \(arr5),\n", "\'Steven Vo\': \(arr6)\n"];