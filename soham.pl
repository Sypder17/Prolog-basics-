%facts for route 
route(101,pune , mumbai).
route(102, mumbai , delhi).
route(103, mumbai , pune).
route(105, pune , delhi).
route(106, pune , baramati).
route(107,pune,hyderabad).
route(108,baramati,hyderabad).
route(109,mumbai,hyderabad).
route(110,jammu,kanniyakumari).
%facts for timing
time(101, 9:10 , 9:30).
time(102, 10:10 , 10:30).
time(103, 9:45 , 10:15).
time(105, 8:30 , 9:00).
time(106, 9:15 , 9:50).
time(107, 7:00 , 8:44).
time(108, 7:7 , 8:45).
time(109, 7:14 , 5:00).
time(110, 7:15 , 19.54).

is_route(T,Source,Dest) :- route(T,Source,Dest). 

%to define a rule to check time of train 
route_time(T,Depature,Arrival) :- time(T,Depature,Arrival).

%to check whether the train is on time
on_route(T,Source,Dest) :- route(T,Source,Dest).

on_time(T,Depature,Arrival) :- time(T,Depature,Arrival).