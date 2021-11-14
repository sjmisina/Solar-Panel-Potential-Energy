# Solar Panel Potential Energy

## Selected Topic:

### A study of how natural factors such as solar irradiance, solar angle, cloud cover, rainfall and more effect solar panel power generation.

## Reason why we selected the topic:

The reason we selected this topic is to hopefully encourage state governments and buisnesses to invest in solar energy stations and solar technology. We would like to show how location and weather patterns can inform the potential for solar panel electrical generation.  We propose building a machine learning model that takes solar irradiance, temperature, wind, cloud cover and solar angle into account to provide an estimate of solar panel generation potential.  Hopefully we could use this model to encourage  state governments to invest in solar power by showing the predicted amount of power generation.  We hope to show promising results, and enthuse our government into writing and approving more policies and bills in regards to the production of solar stations and solar technology. 

## Description of the data sources:

### NIST Photovoltaic Array Database 
[NIST PV Database](https://pvdata.nist.gov/) 
#### Features: 
- Electrical output
- Irradiance
- Temperature
- Wind
- Solar Angle

A database covering minute to minute solar panel output and weather data from 2015 to 2018.  Export to CSV.

![parking lot array](Resources/Images/parking_lot_canopy.jpg)

### National Solar Radiation Database
[NREL Database](https://nsrdb.nrel.gov/) 
#### Features: 
- Temperature
- Wind
- Solar Irradiance
- Solar Zenith Angle

Database covering hourly global solar irradiance. We can customize the api attributes based on features we need. Database converted to csv.

![solar irradiance map](https://github.com/jpburgess/Solar-Panel-Potential-Energy/blob/6d76a4e52033fb125a89e8ca9260ad007cf569d1/Resources/Images/NRSDB%20Viewer.PNG)

## Questions we hope to answer:

- Can we find a relation between weather patterns and solar power generation to inform state governments of the potential for solar power in their area?
- Can we find a relation between weather patterns and solar power generation?
- Do weather patterns have an effect on solar power generation?
- Could these predictions lead to policy adoption and changes?
- Can the study be used to promote investment in solar power generation facilities? 


## Communication Protocols:

### Square: 
JP
### Triangle: 
Elham, Shikhar, 
### Circle: 
Stan, Tyler, Elham
### X: 
Tony Poolsombat, Shikhar

## Database and ERD
![QuickDBD-export](Resources/Images/ERD.png)
![Screen Shot 2021-10-26 at 9 16 42 PM](https://user-images.githubusercontent.com/84756166/138983843-ef5cb8ec-c7af-474e-b18c-80fd1cb9cb59.png)
![Screen Shot 2021-10-26 at 9 14 53 PM](https://user-images.githubusercontent.com/84756166/138983854-dbab7939-a248-4f74-8a93-04ae02e3815a.png)

We will use a postgreSQL database to house our data. Sample data is pulled from https://pvdata.nist.gov/ and loaded to the database. We will merge data from our weather table with the features for our linear regression. Our machine learning model takes features from the solarData table and performs linear regression.  
# SEGMENT 2:

## Presentation:
![project powerpoint link](Resources/Solar Panel Potential Energy.pptx)

## Machine Learning Model:
### Model Location: 
[Solar Neural Net](Code/Machine%20Learning/solar_nn_regression.ipynb)

We plan on using a linear regression model with weather data as features (solar angle, solar irradiance, temperature, wind) and electrical output of the solar panels as the target. We can use this model to predict the potential energy of a given location based on their climate and latitude using widely available solar irradiance and weather data. We will utilize a PostgreSQL Database connected to our machine learning model which will be run using Python and it's data analytics libraries such as Pandas, SkLearn, and many others. Another possible model we could use is a multi-layer neural network with sigmoid and non-sigmoid activations. The models will be built with static and dynamic configurations for differential testing.

### Description of preliminary data preprocessing:

Our data was obtained from two sources:  The National Institute of Standards and Technology (NIST) and the National Solar Radiation Database (NREL).  The NIST data contained data on three solar arrays located on the NIST campus.  The data was downloaded from the NIST website in CSV format with separate folders for each month and each year.  A python script was made to extract data from all the CSVs and distill them into one dataframe. Additionally the NIST dataset contained minute to minute data from 2015 to 2018 while the NREL data was in half-hour intervals. The NIST dataset had to be trimmed down to align with the NREL timestamps. The NREL data was obtained through an API and a script that pulled all data from 2015 to 2018. 

### Description of preliminary feature engineering and preliminary feature selection, including their decision-making process:

The NIST data had many features about the arrays and about the local weather but we decided that we would just use DC voltage output and use the weather data from NREL.  We decided on this approach because the NREL dataset covers the whole globe.  This way we can use any dataset which has the dc voltage output of solar panels and timestamps.  The NREL dataset contains a number of significant weather features covering solar irradiance, surface weather conditions and solar zenith angle.

### Description of how data was split into training and testing sets:

The data was split into training and testing sets using the python library scikit-learn’s function train_test_split.  We used the default setting of splitting 25% of the data off for making a test set. 

### Explanation of model choice, including limitations and benefits: 

In this project we are looking to use various weather features to predict the voltage output of solar panel arrays.  Because of this we knew we would want some kind of regression model.  We have a group of weather features but we are not certain which ones will be significant so we knew unsupervised machine learning would be the route we would take.  The combination of regression and unsupervised learning made us decide that a neural network was the best fit for our analysis.  Using a neural net means our model will be able to handle noise in the training data well and may provide a higher degree of accuracy than standard linear regression if we are able to build the model properly.  A limitation of neural nets is that the path to optimizing the model is unclear and is mostly dependent on trial and error.  This is the main limitation of neural nets. Although they are able to approximate nearly any function it is very difficult to use the model to actually give you the function that is being approximated.  This means that we cannot distil our model into a function and we are reliant on the model to provide us with the functions output.  Despite these drawbacks we still believe that a neural net is the right tool for our analysis.

# Database 

### Database stores static data for use during the project
<img width="1530" alt="Screen Shot 2021-11-07 at 5 21 57 PM" src="https://user-images.githubusercontent.com/84756166/140663922-f5b6e5a4-ac72-47fb-b32b-1b82a962e5d3.png">

### Database interfaces with the project in some format (e.g., scraping updates the database, or database connects to the model)
![Screen Shot 2021-11-07 at 5 24 42 PM](https://user-images.githubusercontent.com/84756166/140663994-1b5af3d3-100f-4eeb-a084-1a9aff9f2271.png)

### Includes at least two tables
<img width="356" alt="Screen Shot 2021-11-07 at 5 22 52 PM" src="https://user-images.githubusercontent.com/84756166/140663942-8ba9f0f1-4893-477a-9f80-2a5b4473af86.png">

### Includes at least one join using the database language
![Screen Shot 2021-11-07 at 5 23 58 PM](https://user-images.githubusercontent.com/84756166/140663970-a4d35ae1-4295-4f4d-80d6-2791c32f570d.png)

### Includes at least one connection string (using SQLAlchemy)
![connectionStringex](https://user-images.githubusercontent.com/84756166/140663795-76861b20-4d11-4def-9711-834aa8649444.png)

### Updated ERD 
![QuickDBD-export](Resources/Images/ERD.png)

# Dashboard 
[Link to DASHBOARD blueprint](Resources/Solar-Panel-Dashboard-Visualizations.pptx)

### Description of the tool(s) that will be used to create final dashboard 
We intend to host our dashboard on a webpage
* Tableau 
* JavaScript
* D3

### Description of interactive element(s) 
* Buttons click through to detail data 
* Charts and maps allow clickthrough to underlying data
* Drop down allows you to view 1 of 3 panel arrays
