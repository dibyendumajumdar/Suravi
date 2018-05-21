
<a name="nn.dok"></a>
# Neural Network Package #

This package provides an easy and modular way to build and train simple or complex neural networks using [Torch](https://github.com/torch/torch7/blob/master/README.md):
  
  * Modules are the bricks used to build neural networks. Each are themselves neural networks, but can be combined with other networks using containers to create complex neural networks:
    * [Module](t7nnmodule.md#nn.Module) : abstract class inherited by all modules;
    * [Containers](t7nncontainers.md#nn.Containers) : container classes like [Sequential](t7nncontainers.md#nn.Sequential), [Parallel](t7nncontainers.md#nn.Parallel) and [Concat](t7nncontainers.md#nn.Concat);
    * [Transfer functions](t7nntransfer.md#nn.transfer.dok) : non-linear functions like [Tanh](t7nntransfer.md#nn.Tanh) and [Sigmoid](t7nntransfer.md#nn.Sigmoid);
    * [Simple layers](t7nnsimple.md#nn.simplelayers.dok) : like [Linear](t7nnsimple.md#nn.Linear), [Mean](t7nnsimple.md#nn.Mean), [Max](t7nnsimple.md#nn.Max) and [Reshape](t7nnsimple.md#nn.Reshape); 
    * [Table layers](t7nntable.md#nn.TableLayers) : layers for manipulating tables like [SplitTable](t7nntable.md#nn.SplitTable), [ConcatTable](t7nntable.md#nn.ConcatTable) and [JoinTable](t7nntable.md#nn.JoinTable);
    * [Convolution layers](t7nnconvolution.md#nn.convlayers.dok) : [Temporal](t7nnconvolution.md#nn.TemporalModules),  [Spatial](t7nnconvolution.md#nn.SpatialModules) and [Volumetric](t7nnconvolution.md#nn.VolumetricModules) convolutions ; 
  * Criterions compute a gradient according to a given loss function given an input and a target:
    * [Criterions](t7nncriterion.md#nn.Criterions) : a list of all criterions, including [Criterion](t7nncriterion.md#nn.Criterion), the abstract class;
    * [MSECriterion](t7nncriterion.md#nn.MSECriterion) : the Mean Squared Error criterion used for regression; 
    * [ClassNLLCriterion](t7nncriterion.md#nn.ClassNLLCriterion) : the Negative Log Likelihood criterion used for classification;
  * Additional documentation :
    * [Overview](t7nnoverview.md#nn.overview.dok) of the package essentials including modules, containers and training;
    * [Training](t7nntraining.md#nn.traningneuralnet.dok) : how to train a neural network using [StochasticGradient](t7nntraining.md#nn.StochasticGradient);
    * [Testing](t7nntesting.md) : how to test your modules.


