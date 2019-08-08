%% @author saravanan.c
%% @doc @todo Add description to finddivisiblerange.
%% 
%%find the multiples of entered numbers between the given range
%%	Input 1 Enter Lower Range: 10
%%	Input 2 Enter Top Range :  50
%%  Input the Multiple Numbers : 5,10
%% 
%%  Output 1 : 10,15,20,25,30,35,40,45,50
%% 
%% We can call the method by using below command
%% 	divisibleRange(10,50,[5,10]).


-module(finddivisiblerange).

%% ====================================================================
%% API functions
%% ====================================================================
-export([divisibleRange/3,isdivisible/3]).

divisibleRange(Low,High,DivisibleList)
  -> findDivisible(Low,High,DivisibleList,[]).



%% ====================================================================
%% Internal functions
%% ====================================================================

 findDivisible(Low,High,DivisibleList,ResultList)->
	if(Low>High) ->
		  ResultList;
	  true ->
		 Result = isdivisible(Low,DivisibleList,false),
		 if Result==true ->
				findDivisible(Low+1,High,DivisibleList,ResultList++[Low]);
			true ->
			  findDivisible(Low+1,High,DivisibleList,ResultList)
		 end
		  
	end.
 
isdivisible(Num,DivisibleList,Result) ->
			if length(DivisibleList)==0-> 
				   Result;
			   Num rem hd(DivisibleList)==0 ->  
				   true;
			   true ->
				   isdivisible(Num,tl(DivisibleList),Result)
			end.
			   

