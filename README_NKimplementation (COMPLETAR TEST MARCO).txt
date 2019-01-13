
Installation
======================================================================
First thing to do is to install this package by executing this command
 in the Oncosimul directory

	./install-dir.sh R



Github use
======================================================================
We used the tool git for the update of the repository (in Mac), using 
this commands(inside the Oncosimul directory)

First indexed the changes with:

	git add *


And nexo we committed them

	git commit -m "Commit message"


And pushed it to the repository

	git push origin master


MODIFICATIONS MADE IN THIS PACKAGE
======================================================================
############################################################
EVERY CHANGE PERFORMED IN THIS PACKAGE WAS COMENTED BY "##!"
############################################################

- rfitness.R  
	> Localized at /OncoSimul/OncoSimulR/R
	> Contain the rfitness() function


- fitness_landscape_utils.R
	> Localized at /OncoSimul/OncoSimulR/R
	> Contain the functions:
		+ F_checker()
		+ F_applier()
		+ generate_interaction_matrix()
	
	used inside rfitness()


- rfitness.Rd
	> Localized at /OncoSimul/OncoSimulR/man
	> Documentation for the use of rfitness()


- test.Z-rfitness-landscape-NK.R
	> Localized at /OncoSimul/OncoSimulR/tests/testthat 
	> Contain the tests
		+
		+
		+

	> Test designed to test the functionality of rfitness in a Nk model context.




