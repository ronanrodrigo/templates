//
// SwiftGen
// Copyright (c) 2015 Olivier Halligon
// MIT Licence
//

import StencilSwiftKit
import XCTest

class StringsTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "localizable"]
  }

  // generate variations to test customname generation
  let variations: VariationGenerator = { name, context in
    guard name == "localizable" else { return [(context: context, suffix: "")] }

    return [
      (context: context,
       suffix: ""),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["enumName=XCTLoc"]),
       suffix: "-customname"),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["noComments"]),
       suffix: "-no-comments")
    ]
  }

  func testFlatSwift2() {
    test(template: "flat-swift2",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }

  func testFlatSwift3() {
    test(template: "flat-swift3",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }

  func testStructuredSwift2() {
    test(template: "structured-swift2",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }

  func testStructuredSwift3() {
    test(template: "structured-swift3",
         contextNames: Contexts.all,
         directory: .strings,
         contextVariations: variations)
  }
}
