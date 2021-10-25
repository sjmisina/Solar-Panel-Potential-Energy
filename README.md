# Solar Panel Potential Energy

## Selected Topic:

### A study of how natural factors such as solar irradiance, solar angle, cloud cover, rainfall and more effect solar panel power generation.

## Reason why we selected the topic:

The reason we selected this topic is to hopefully encourage state governments and buisnesses to invest in solar energy stations and solar technology. We would like to show how location and weather patterns can inform the potential for solar panel electrical generation.  We propose building a machine learning model that takes solar irradiance, temperature, wind, cloud cover and solar angle into account to provide an estimate of solar panel generation potential.  Hopefully we could use this model to encourage  state governments to invest in solar power by showing the predicted amount of power generation.  We hope to show promising results, and enthuse our government into writing and approving more policies and bills in regards to the production of solar stations and solar technology. 

## Description of the data sources:

### NIST Photovoltaic Array Database 
https://pvdata.nist.gov/ 
#### Features: 
- Electrical output
- Irradiance
- Temperature
- Wind
- Solar Angle

A database covering minute to minute solar panel output and weather data from 2015 to 2018.  Export to CSV.

![parking lot array](Resources/Images/parking_lot_canopy.jpg)

### National Solar Radiation Database
https://nsrdb.nrel.gov/ 
#### Features: 
- Temperature
- Wind
- Solar Irradiance
- Solar Zenith Angle

Database covering hourly global solar irradiance. We can customize the api attributes based on features we need. Database converted to csv.

![solar irradiance map](Resources/Images/NSRDB Viewer.PNG)

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

## Machine Learning Model:

We plan on using a multiple linear regression model with weather data as features (solar angle, solar irradiance, temperature, wind) and electrical output of the solar panels as the target. We can use this model to predict the potential energy of a given location based on their climate and latitude using widely available solar irradiance and weather data. We will utilize a PostgreSQL Database connected to our machine learning model which will be run using Python and it's data analytics libraries such as Pandas, SkLearn, and many others. Another possible model we could use is a multi-layer neural network with sigmoid and non-sigmoid activations. The models will be built with static and dynamic configurations for differential testing.

