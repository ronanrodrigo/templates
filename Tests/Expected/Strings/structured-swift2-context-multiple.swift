// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable explicit_type_interface identifier_name line_length nesting type_body_length type_name
enum L10n {
  enum Localizable {
    /// Some alert body there
    static let AlertMessage = L10n.tr("Localizable", "alert_message")
    /// Title of the alert
    static let AlertTitle = L10n.tr("Localizable", "alert_title")
    /// These are %3$@'s %1$d %2$@.
    static func ObjectOwnership(p1: Int, p2: String, p3: String) -> String {
      return L10n.tr("Localizable", "ObjectOwnership", p1, p2, p3)
    }
    /// Hello, my name is %@ and I'm %d
    static func Private(p1: String, p2: Int) -> String {
      return L10n.tr("Localizable", "private", p1, p2)
    }

    enum Apples {
      /// You have %d apples
      static func Count(p1: Int) -> String {
        return L10n.tr("Localizable", "apples.count", p1)
      }
    }

    enum Bananas {
      /// Those %d bananas belong to %@.
      static func Owner(p1: Int, p2: String) -> String {
        return L10n.tr("Localizable", "bananas.owner", p1, p2)
      }
    }

    enum Settings {

      enum NavigationBar {
        /// Some Reserved Keyword there
        static let `Self` = L10n.tr("Localizable", "settings.navigation-bar.self")

        enum Title {

          enum Deeper {

            enum Than {

              enum We {

                enum Can {

                  enum Handle {

                    enum No {

                      enum Really {

                        enum This {

                          enum Is {
                            /// DeepSettings
                            static let Deep = L10n.tr("Localizable", "settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          enum Even {
            /// Settings
            static let Deeper = L10n.tr("Localizable", "settings.navigation-bar.title.even.deeper")
          }
        }
      }

      enum UserProfileSection {
        /// Here you can change some user profile settings.
        static let FooterText = L10n.tr("Localizable", "seTTings.uSer-proFile-sectioN.footer_text")
        /// User Profile Settings
        static let HeaderTitle = L10n.tr("Localizable", "SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
      }
    }
  }
  enum LocMultiline {
    /// multi\nline
    static let Multiline = L10n.tr("LocMultiline", "MULTILINE")
    /// test
    static let MultiLineKey = L10n.tr("LocMultiline", "multiLine\nKey")
    /// another\nmulti\n    line
    static let Multiline2 = L10n.tr("LocMultiline", "MULTILINE2")
    /// single line
    static let Singleline = L10n.tr("LocMultiline", "SINGLELINE")
    /// another single line
    static let Singleline2 = L10n.tr("LocMultiline", "SINGLELINE2")
  }
}
// swiftlint:enable explicit_type_interface identifier_name line_length nesting type_body_length type_name

extension L10n {
  private static func tr(table: String, _ key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: NSBundle(forClass: BundleToken.self), comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

private final class BundleToken {}
