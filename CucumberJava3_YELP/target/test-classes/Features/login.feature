Feature: YELP


Scenario Outline: Testing YELP

Given go to yelp
When search element <type>
And append pizza to the searched element
And report number of search results

#PRICE OPTIONS
#Super Economical (0)
#Economical (1)
#Expensive (2)
#Super Expensive (3)

And filtering precio <price>


#DISTANCE OPTIONS
#Bird's-eye View (0)
#Driving 5mi. (1)
#Biking 2mi. (2)
#Walking 1mi. (3)
#Within 4 blocks (4)


And filtering distance <dist> 
And report number of search results
And report stars rating
Then get business info

 
Examples:
	|type|price|dist|
	|Restaurants|0|0|