Feature: Coffee Machine
As a coffee buyer
I want a basic machine that
I can put a 10 kr coin in
and get a black cup of coffee back
because I crave caffeine.

Background:
    Given that the coffee machine is plugged in
    And that the machine has enough water 
    And that the machine has enough beans
    And that the machine has enough cups
   	

  Scenario: Black coffee
    Given that he chooses a black coffee
    And that the machine has ground beans 
    And heats up the water
    And adds the water
    And presses the start button
    Then the coffee will be dispensed into the cup
    And he receives a cup of coffee

  Scenario: Espresso
    Given that he chooses a espresso
    And that the machine grounds the espresso beans 
    And packs it up in a small container
    And heats up the water
    And adds the water 
    And filter it through the container
    And presses the start button
    Then the coffee will be dispensed into the cup
    And he receives a cup of coffee

  Scenario: Double espresso
    Given that he chooses a double espresso
    And that the machine grounds the espresso beans 
    And packs it up in a bigger container 
    And heats up the water
    And adds the water
    And filter it through the bigger container
    And presses the start button
    Then the coffee will be dispensed into the cup
    And he receives a cup of coffee

  Scenario: Cappuccino
    Given that he chooses a cappuccino
    And that the machine grounds the espresso beans 
    And packs it up in a small container
    And heats up the water
    And adds the water
    And filter it through the container
    And the machine has enough milk
    And the machine has chocolate powder
    And heats the milk
    And foams the milk
    And pours the milk over the espresso
    And sprinkles it with chocolate powder
    And presses the start button
    Then the coffee will be dispensed into the cup
    And he receives a cup of coffee

  Scenario: Cortado
    Given that he chooses a black coffee
    And that the machine grounds the espresso beans 
    And packs it up in a small container
    And heats up the water
    And adds the water
    And filter it through the container
    And the machine has enough milk
    And heats the milk
    And foams the milk
    And pours the milk over the espresso
    And presses the start button
    Then the coffee will be dispensed into the cup
    And he receives a cup of coffee

  Scenario Outline: Buying a coffee
    Given that he selects a <coffee> on the display
    When the user inserts a the <coin>
    Then he will get the <cupOfCoffee>

  Examples:
    |coffee		        	|coin	| cupOfCoffee|
    |black coffee   		| 5   | 1          |  
    |espresso		        |10	  | 1          |
    |cappuccino	      	|20 	| 1          |
    |cortado	        	|20 	| 1          |
    |double espresso	  |20	  | 1          |
    |black coffee	    	|5  	| 0          |
    |cappuccino		      |5	  | 0          |
    |cortado	         	|1  	| 0          |


  Scenario Outline: not enough ingredients
    Given that he has chosen a <coffee>
    And that the <ingredient> is missing
    Then he will not receive a <cupOfCoffee>

  Examples:
    |coffee			      |ingredient	|cupOfCoffee|
    |black coffee		  |beans		  |0          |
    |black coffee		  |water		  |0          |
    |black coffee		  |cup		    |0          |
    |espresso		      |beans		  |0          |
    |espresso		      |water		  |0          |
    |espresso		      |cup		    |0          |
    |double espresso	|beans		  |0          |
    |double espresso	|water		  |0          |
    |double espresso	|cup		    |0          |
    |cappuccino		    |beans		  |0          |
    |cappuccino		    |water		  |0          |
    |cappuccino		    |milk		    |0          |
    |cappuccino		    |cup		    |0          |
    |cortado		      |beans		  |0          |
    |cortado		      |water		  |0          |
    |cortado		      |milk		    |0          | 
    |cortado		      |cup		    |0          |

    