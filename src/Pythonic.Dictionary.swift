// >>> filter(lambda s: not s.startswith("_"), dir({}))
//   clear: Implemented.
//   copy
//   fromkeys
//   get: Implemented (in Pythonic-test.swift to avoid compiler bug).
//   has_key: Implemented as hasKey (in Pythonic-test.swift to avoid compiler bug).
//   items
//   iteritems
//   iterkeys
//   itervalues
//   keys
//   pop: Implemented (in Pythonic-test.swift to avoid compiler bug).
//   popitem: Implemented (in Pythonic-test.swift to avoid compiler bug).
//   setdefault
//   update
//   values
//   viewitems
//   viewkeys
//   viewvalues

extension Dictionary : LogicValue {
    func getLogicValue() -> Bool {
        return len(self) != 0
    }

    mutating func clear() {
        self.removeAll()
    }

    // NOTE: get(…) implemented directly in Pythonic-test.swift to work around compiler bug.
    // NOTE: hasKey(…) implemented directly in Pythonic-test.swift to work around compiler bug.
    // NOTE: pop(…) implemented directly in Pythonic-test.swift to work around compiler bug.
    // NOTE: popItem(…) implemented directly in Pythonic-test.swift to work around compiler bug.
}
