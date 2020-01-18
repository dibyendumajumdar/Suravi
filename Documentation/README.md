# Ravi / Lua Distribution

<a name="penlight.dok"></a>
# Penlight #

 * [Introduction](pl01introduction.md)
 * [Tables and arrays](pl02-arrays.md) 
 * [Higher-level operations on strings](pl03-strings.md) 
 * [Paths and Directories](pl04-paths.md) 
 * [Date and Time](pl05-dates.md) 
 * [Data](pl06-data.md)
 * [Functional Programming](pl07-functional.md) 
 * [Additional Libraries](pl08-additional.md) 
 * [Technical Choices](pl09-discussion.md) 

<a name="lpeglabel.dok"></a>
# Parsing Expression Grammers #

 * [LPeg](lpeg.md) - Parsing Expression Grammars For Lua
 * [LPegLabel](lpeglabel.md) - Parsing Expression Grammars (with Labels) for Lua 

<a name="torch.reference.dok"></a>
# Torch Package Reference Manual #

__Torch__ is the main package in [Torch7](http://torch.ch) where data
structures for multi-dimensional tensors and mathematical operations
over these are defined. Additionally, it provides many utilities for
accessing files, serializing objects of arbitrary types and other
useful utilities.

<a name="torch.reference.dok"></a>
## Torch Packages ##

  * Tensor Library
    * [Tensor](t7tensor.md) defines the _all powerful_ tensor object that provides multi-dimensional numerical arrays with type templating.
    * [Mathematical operations](t7maths.md) that are defined for the tensor object types.
    * [Storage](t7storage.md) defines a simple storage interface that controls the underlying storage for any tensor object.
  * File I/O Interface Library
    * [File](t7file.md) is an abstract interface for common file operations.
    * [Disk File](t7diskfile.md) defines operations on files stored on disk.
    * [Memory File](t7memoryfile.md) defines operations on stored in RAM.
    * [Pipe File](t7pipefile.md) defines operations for using piped commands.
    * [High-Level File operations](t7serialization.md) defines higher-level serialization functions.
  * Useful Utilities
    * [Timer](t7timer.md) provides functionality for _measuring time_.
    * [Tester](t7tester.md) is a generic tester framework.
    * [CmdLine](t7cmdline.md) is a command line argument parsing utility.
    * [Random](t7random.md) defines a random number generator package with various distributions.
    * Finally useful [utility](t7utility.md) functions are provided for easy handling of torch tensor types and class inheritance.


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

<a name='optim.dok'></a>
# Optimization package

This package contains several optimization routines and a logger for [Torch](https://github.com/dibyendumajumdar/ravi-torch7):

 * [Overview](t7optimintro.md);
 * [Optimization algorithms](t7optimalgos.md);
 * [Logger](t7optimlogger.md).

<a name="autograd.dok"></a>
# AutoGrad package #

The [Autograd](t7autograd.md) package provide automatic differentiation of [Torch](https://github.com/dibyendumajumdar/ravi-torch7) expressions