% Define the arrays to be filled
array[1..12] of var 1..7: arr1;
array[1..12] of var 1..7: arr2;
array[1..12] of var 1..7: arr3;
array[1..12] of var 1..7: arr4;
array[1..12] of var 1..7: arr5;
array[1..12] of var 1..7: arr6;

%Vacation Momths
array[1..3] of int: vac1= [10,2,5];
array[1..3] of int: vac2= [10,11,5];
array[1..3] of int: vac3= [11,1,4];
array[1..3] of int: vac4= [10,12,4];
array[1..3] of int: vac5= [10,2,6];
array[1..3] of int: vac6= [10,1,4];


% Define the constraints for arr1
constraint count(arr1, 1) = 4; % The number 1 must be repeated 4 times 
constraint count(arr1, 2) = 2; % The number 2 must be repeated 2 times
constraint count(arr1, 3) = 2; % The number 3 must be repeated 2 times
constraint count(arr1, 4) = 1; % The number 4 must be repeated 1 times 
constraint count(arr1, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr1, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr1, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (arr1[i] != 1 \/ arr1[i+1] != 1); % The number 1 cannot be used back to back

% Define the constraints for arr2
constraint count(arr2, 1) = 4; % The number 1 must be repeated 4 times
constraint count(arr2, 2) = 2; % The number 2 must be repeated 2 times
constraint count(arr2, 3) = 2; % The number 3 must be repeated 2 times
constraint count(arr2, 4) = 1; % The number 4 must be repeated 1 times
constraint count(arr2, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr2, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr2, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (arr2[i] != 1 \/ arr2[i+1] != 1); % The number 1 cannot be used back to back

% Define the constraints for arr3
constraint count(arr3, 1) = 4; % The number 1 must be repeated 4 times
constraint count(arr3, 2) = 2; % The number 2 must be repeated 2 times
constraint count(arr3, 3) = 2; % The number 3 must be repeated 2 times
constraint count(arr3, 4) = 1; % The number 4 must be repeated 1 times
constraint count(arr3, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr3, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr3, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (arr3[i] != 1 \/ arr3[i+1] != 1); % The number 1 cannot be used back to back

% Define the constraints for arr4
constraint count(arr4, 1) = 4; % The number 1 must be repeated 4 times
constraint count(arr4, 2) = 2; % The number 2 must be repeated 2 times
constraint count(arr4, 3) = 2; % The number 3 must be repeated 2 times
constraint count(arr4, 4) = 1; % The number 4 must be repeated 1 times
constraint count(arr4, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr4, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr4, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (arr4[i] != 1 \/ arr4[i+1] != 1); % The number 1 cannot be used back to back

% Define the constraints for arr5
constraint count(arr5, 1) = 4; % The number 1 must be repeated 4 times
constraint count(arr5, 2) = 2; % The number 2 must be repeated 2 times
constraint count(arr5, 3) = 2; % The number 3 must be repeated 2 times
constraint count(arr5, 4) = 1; % The number 4 must be repeated 1 times
constraint count(arr5, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr5, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr5, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (arr5[i] != 1 \/ arr5[i+1] != 1); % The number 1 cannot be used back to back

% Define the constraints for arr6
constraint count(arr6, 1) = 4; % The number 1 must be repeated 4 times
constraint count(arr6, 2) = 2; % The number 2 must be repeated 2 times
constraint count(arr6, 3) = 2; % The number 3 must be repeated 2 times
constraint count(arr6, 4) = 1; % The number 4 must be repeated 1 times
constraint count(arr6, 5) = 1; % The number 5 must be repeated 1 times
constraint count(arr6, 6) = 1; % The number 6 must be repeated 1 times
constraint count(arr6, 7) = 1; % The number 7 must be repeated 1 times
constraint forall(i in 1..11) (arr6[i] != 1 \/ arr6[i+1] != 1); % The number 1 cannot be used back to back

% Two different instances of 1 in each column of all arrays
constraint forall(j in 1..12) (
count([arr1[j], arr2[j], arr3[j], arr4[j], arr5[j], arr6[j]], 1) = 2
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
output ["arr1 = \(arr1)\n", "arr2 = \(arr2)\n", "arr3 = \(arr3)\n", "arr4 = \(arr4)\n",  "arr5 = \(arr5)\n", "arr6 = \(arr6)\n"];