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

