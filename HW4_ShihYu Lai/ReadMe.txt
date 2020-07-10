// Shih-Yu Lai CSCI585 HW4

Q1:
	class =
		 -0.1084 * CRIM +
		  0.0458 * ZN +
		  2.7187 * CHAS=1 +
		 -17.376 * NOX +
		  3.8016 * RM +
		 -1.4927 * DIS +
		  0.2996 * RAD +
		 -0.0118 * TAX +
		 -0.9465 * PTRATIO +
		  0.0093 * B +
		 -0.5226 * LSTAT +
		  36.3411
	
	Only eleven attributes in the linear equation, this is because WEKA will use only those columns that contribute to the correctness of the model. In this dataset, INDUS and AGE are don’t matter to the equation, so they are disappear. And class is our MEDV. Hence, that’s why the dataset has 14 columns but the equation only has 11 attributes. Also, in the equation, we can see some weights are negative and others are positive, negative weights mean negative correlation and positive weights mean positive correlation. For example, RM is mean average number of rooms per dwelling, and its weight is 3.8016(positive), so it means if the house has more rooms, then the price is higher.
	
	
Q2:
	learning rate = 0.22, momemtum = 0.15
	RMSE = 2.5105
	
	
Q3:
	num_rings = 
		 -0.8249 * Sex=I +
		  0.0577 * Sex=M +
		 -0.4583 * Length +
		  11.0751 * Diameter +
		  10.7615 * Height + 
		  8.9754 * Whole weight +
		 -19.7869 * Shucked weight +
		 -10.5818 * Viscera weight +
		  8.7418 * Shell weight +
		  3.8946

Q5:
	Cluster 0: 1388 items
	Cluster 1: 499 items
	Cluster 2: 448 items
	Cluster 3: 22 items
	Cluster 4: 172 items
	Cluster 5: 1648 items
	Total number of items: 4177
	
	
Q6:
	num_rings = 
		 -11.933 * length +
	      25.766 * diameter +
	      20.358 * hieght +
		  2.836