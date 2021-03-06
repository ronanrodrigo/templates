//
// StencilSwiftKit
// Copyright (c) 2017 SwiftGen
// MIT Licence
//

import Foundation
import Stencil

enum Filters {
  enum Error: Swift.Error {
    case invalidInputType
  }

  /// Parses filter arguments for a boolean value, where true can by any one of: "true", "yes", "1", and
  /// false can be any one of: "false", "no", "0". If optional is true it means that the argument on the filter is
  /// optional and it's not an error condition if the argument is missing or not the right type
  ///
  /// - Parameters:
  ///   - arguments: an array of argument values, may be empty
  ///   - index: the index in the arguments array
  ///   - required: If true, the argument is required and function throws if missing.
  ///               If false, returns nil on missing args.
  /// - Throws: Filters.Error.invalidInputType
  static func parseBool(from arguments: [Any?], index: Int, required: Bool = true) throws -> Bool? {
    guard index < arguments.count, let boolArg = arguments[index] as? String else {
      if required {
        throw Error.invalidInputType
      } else {
        return nil
      }
    }

    switch boolArg.lowercased() {
    case "false", "no", "0":
      return false
    case "true", "yes", "1":
      return true
    default:
      throw Error.invalidInputType
    }
  }
}
