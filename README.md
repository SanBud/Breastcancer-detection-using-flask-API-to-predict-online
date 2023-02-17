# Breastcancer detection using flask API to predict online
Implementing a microservice using the Python Flask framework to serve a machine learning prediction model.

## Context:For this case study we are going to work with the following dataset:https://archive.ics.uci.edu/ml/datasets/Breast+Cancer+Wisconsin+(Diagnostic)
Features are computed from a digitized image of a fine needle aspirate (FNA) of a breastmass. They describe characteristics of the cell nuclei present in the image. n the3-dimensional space is that described in: [K. P. Bennett and O. L. Mangasarian: "RobustLinear Programming Discrimination of Two Linearly Inseparable Sets", Optimization Methodsand Software 1, 1992, 23-34].
Attribute Information:
●ID number
●Diagnosis (M = malignant, B = benign)
Ten real-valued features are computed for each cell nucleus:
●radius (mean of distances from center to points on the perimeter)
●texture (standard deviation of gray-scale values)
●perimeter
●area.
●smoothness (local variation in radius lengths)●compactness (perimeter^2 / area - 1.0)
●concavity (severity of concave portions of the contour)
●concave points (number of concave portions of the contour)
●symmetry
●fractal dimension ("coastline approximation" - 1)

## Machine Learning Task:
To build a machine learning model to predict whether the cancer type is Malignant or Benign.

## Microservice Implementation
Our main goal is to design a microservice. Which are standalone, manageable, tested,loosely coupled services that frequently only have one actual use case or function.Microservices are a method for creating a single application as a collection of smallerservices, each of which runs in its own process and communicates with simple tools,frequently an HTTP resource API.


# Instruction for Manual Build
### Cloning and building the code
git clone https://github.com/SanBud/SantoshBudni_W11_Graded_Assignment

cd SantoshBudni_W11_Graded_Assignment

### Running the code
The docker composer is created to start the flask web service. This service is configured to run at 5000. To access it outside the container, teh port is mapped to 8000 as mentioned in yaml file.
 
docker-compose up -d

### Accessing the Flask web application
open the below link in host machine browser
http://localhost:8000/info


### Using curl command to access http endpoints
Get the health of service
curl -X GET http://localhost:8000/health

Get the prediction for data
curl -d '[{"radius_mean": 17.99, "texture_mean": 10.38, "perimeter_mean": 122.8, "area_mean":1001.0, "smoothness_mean": 0.1184, "compactness_mean": 0.2776, "concavity_mean": 0.3001,"concave points_mean": 0.1471, "symmetry_mean": 0.2419, "fractal_dimension_mean": 0.07871,"radius_se": 1.095, "texture_se": 0.9053, "perimeter_se": 8.589, "area_se": 153.4,"smoothness_se": 0.006399, "compactness_se": 0.04904, "concavity_se": 0.05373, "concavepoints_se": 0.01587, "symmetry_se": 0.03003, "fractal_dimension_se": 0.006193, "radius_worst":25.38, "texture_worst": 17.33, "perimeter_worst": 184.6, "area_worst": 2019.0,"smoothness_worst": 0.1622, "compactness_worst": 0.6656, "concavity_worst": 0.7119, "concavepoints_worst": 0.2654, "symmetry_worst": 0.4601, "fractal_dimension_worst": 0.1189}]' \-H "Content-Type: application/json" \-X POST http://localhost:8000/predict


