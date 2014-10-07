The Harbour project tips

1. how to create the type of hash Pablo showed me and how to access it
	


	pablo_maker = {['Pablo', 'Portabales'] => {cohort: 'September'}}


		pablo_maker.keys #=> ["Pablo", "Portabales"] as an ARRAY CLASS
							#in fact I can access it like a normal Array:
							pablo_maker.keys[0][0] #=> 'Pablo' (as String)
							pablo_maker.keys[0].size

		pablo_maker.values #=> [{:cohort=>"September"}] as an ARRAY CLASS but to access the symbol you need to specify as follows:
		pablo_maker.values[0].keys #=> [:cohort]
		pablo_maker.values[0].values #=> ["September"]


!!!!!!!!!!!how to add elements in the mentioned form of hash??


2. the difference between rand() and shuffle(). The former generates something the second only mixes
	elements in array


3. Sometimes in the project starting from the smallest element can be a tip that generates
confusion because I have the tenency of forgetting the biggest class that comprehend everything

4. if statement 

5. the to_s() does not accept the to_s!
6. if infantry?(mean) == true or fleet?(mean) == true #=> the OR/ AND in the IF statements


7. inject() #=> doesn't change the array
		it needs an argument and a block. The block will be executed as many times as the elements of
		the object on which the method has been called.
		So, the block will be executed 4 times, once for every element of our array ([1,2,3,4]). The first time the block executes 
		the result argument will have a value of 0 (the value we passed as an argument to inject) and the element argument will have a 
		value of 1 (the first element in our array).
		in the case I have an array like  arr = [1,2,3,4]
			and I call arr.inject(0) {|result, element| result + element}
			->:first block execution => 0 + 1 (value 1)
			->:second block execution => 1 + 2 (value 3)
			->:third block execution => 3 + 3 (value 6)
			->:fourth block execution => 6 + 4
			------->RETURN 10 not because is the sum of those number, but because 
			is the result of the :fourth block execution
		so the argument is the starting point of the inject method















To do(Wed)
	generate a plate for lorries as string of numbers and letters
