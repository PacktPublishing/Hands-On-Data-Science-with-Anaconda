###
  Name     : c9_28_install_conda.jl
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
###


Pkg.add("ScikitLearn")
Pkg.rm("Conda")
ENV["PYTHON"] = ""
Pkg.build("Conda")
Pkg.build("PyCall")


using ScikitLearn
using RDatasets: dataset
iris = dataset("datasets", "iris")
x = convert(Array, iris[[:SepalLength,:SepalWidth, :PetalLength,:PetalWidth]])
y = convert(Array, iris[:Species])
  


# This model requires scikit-learn. See
# http://scikitlearnjl.readthedocs.io/en/latest/models/#installation
@sk_import linear_model: LogisticRegression
# The Hyperparameters such as regression strength, whether to fit the intercept, penalty type.
model = LogisticRegression(fit_intercept=true)
  
# Train the model.
fit!(model, X, y)
  
# Accuracy is evaluated
accuracy = sum(predict(model, X) .== y) / length(y)
println(“accuracy: $accuracy”)