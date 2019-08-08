%% @author saravanan.c
%% @doc @todo Add description to differenceList.

%% Find the two numbers from the given array of numbers whose DIFFERENCE is a given value of K such that |a-b| = D, where D is positive.
%% 
%%    None if no DIFFERENCE matching is found 
%% 
%%    Input : 3 5 7 12 19
%%    Difference Value : 5
%%    
%%    Output : 7 12
%%  
%%    Input : 10 20 30 50 70
%%    Difference Value : 20
%%    
%%    Output : 30 50, 50 70    
%% 
%%    Input : 10 20 30 50 70
%%    Difference Value : 50
%%    
%%    Output : NONE
%% 
%% Sample method call. start([3,5,7,12,19],5).

-module(differenceList).

%% ====================================================================
%% API functions
%% ====================================================================
-export([start/2]).

start(OriginalList,Difference) when length(OriginalList)>=2 -> 
	
	differenceList(hd(OriginalList),tl(OriginalList),Difference,[]).



%% ====================================================================
%% Internal functions
%% ====================================================================


differenceList(Num1,List,Difference,Result) ->
	
	
	if Difference == abs(Num1-hd(List)) 
		  -> differenceList(hd(List),tl(List),Difference,Result++[Num1]++[hd(List)]);
	length(List)=<1
		 -> Result;
	true 
	   -> differenceList(hd(List),tl(List) , Difference, Result)
	end.

