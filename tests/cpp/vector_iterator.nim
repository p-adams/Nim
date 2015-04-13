discard """
  cmd: "nim cpp $file"
"""

{.emit: """

template <class T>
struct Vector {
  struct Iterator {

  };
};

""".}

type
  Vector {.importcpp: "Vector".} [T] = object
  VectorIterator {.importcpp: "Vector<'2>::Iterator".} [T] = object

var x: VectorIterator[void]

