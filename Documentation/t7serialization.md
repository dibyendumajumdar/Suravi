
<a name="torch.serialization.dok"></a>
# Serialization #

Torch provides 4 high-level methods to serialize/deserialize arbitrary Lua/Torch objects.
These functions are just abstractions over the [File](t7file.md) object, and were created
for convenience (these are very common routines).

The first two functions are useful to serialize/deserialize data to/from files:

  - `torch.save(filename, object [, format, referenced])`
  - `[object] torch.load(filename [, format, referenced])`

The next two functions are useful to serialize/deserialize data to/from strings:

  - `[str] torch.serialize(object)`
  - `[object] torch.deserialize(str)`

Serializing to files is useful to save arbitrary data structures, or share them with other people.
Serializing to strings is useful to store arbitrary data structures in databases, or 3rd party
software.

<a name="torch.save"></a>
### torch.save(filename, object [, format, referenced]) ###

Writes `object` into a file named `filename`. The `format` can be set to
`ascii` or `binary` (default is binary). Binary format is platform
dependent, but typically more compact and faster to read/write. The ASCII
format is platform-independent, and should be used to share data structures
across platforms. The option `referenced` specifies if
[object references](t7file.md#torch.File.referenced) should be tracked or not
(`true` by default).

```
-- arbitrary object:
obj = {
   mat = torch.randn(10,10),
   name = '10',
   test = {
      entry = 1
   }
}

-- save to disk:
torch.save('test.dat', obj)
```

<a name="torch.load"></a>
### [object] torch.load(filename [, format, referenced]) ###

Reads `object` from a file named `filename`.
The `format` can be set to `ascii`, `binary`, `b32` or `b64` (default is binary).
Binary format is platform dependent, but typically more compact and faster to read/write.
Use `b32`/`b64`, instead of `binary`, for loading files saved on a 32/64 bit OS.
The ASCII format is platform-independent, and may be used to share data structures across platforms.
The option `referenced` specifies if [object references](t7file.md#torch.File.referenced) should be tracked or not (`true` by default).
Note that files written with `referenced` at `true` cannot be loaded with `referenced` at `false`.

```
-- given serialized object from section above, reload:
obj = torch.load('test.dat')

print(obj)
-- will print:
-- {[mat]  = DoubleTensor - size: 10x10
--  [name] = string : "10"
--  [test] = table - size: 0}
```

<a name="torch.serialize"></a>
### [str] torch.serialize(object [, format]) ###

Serializes `object` into a string. The `format` can be set
to `ascii` or `binary` (default is binary). Binary format is platform
dependent, but typically more compact and faster to read/write. The ASCII
format is platform-independent, and should be used to share data structures
across platforms.

```
-- arbitrary object:
obj = {
   mat = torch.randn(10,10),
   name = '10',
   test = {
      entry = 1
   }
}

-- serialize:
str = torch.serialize(obj)
```

<a name="torch.deserialize"></a>
### [object] torch.deserialize(str [, format]) ###

Deserializes `object` from a string. The `format` can be set
to `ascii` or `binary` (default is binary). Binary format is platform
dependent, but typically more compact and faster to read/write. The ASCII
format is platform-independent, and should be used to share data structures
across platforms.

```
-- given serialized object from section above, deserialize:
obj = torch.deserialize(str)

print(obj)
-- will print:
-- {[mat]  = DoubleTensor - size: 10x10
--  [name] = string : "10"
--  [test] = table - size: 0}
```

