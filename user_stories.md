#Example
As a user,
So I can find customers,
I want to search for my customers by their surnames.

| Objects	  | Messages  |
|---        |---        |
| User	    |           |
| Customer	| find_by_surname|


##1.
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

nouns:
person
bike
docking stations

verbs:
use
release

| Objects	 | Messages  |
|---       |---        |
| Person   |           |
| Bike     | Use       |
| Docking_station| Release   |

##2.
As a person,
So that I can use a good bike,
I'd like to see if a bike is working

nouns:
person
bike

verbs:
use
condition

| Objects	 | Messages  |
|---       |---        |
| Person   |           |
| Bike     | Condition?|
| Docking_station| Release|


##Diagrams

Person --> Working? (true/false?)
Docking Station --> Bike Release --> Bike
