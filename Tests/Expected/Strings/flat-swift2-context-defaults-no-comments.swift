// Generated using SwiftGen, by O.Halligon — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable file_length

// swiftlint:disable identifier_name line_length type_body_length
enum L10n {
  static let AlertMessage = L10n.tr("Localizable", "alert_message")
  static let AlertTitle = L10n.tr("Localizable", "alert_title")
  static func ObjectOwnership(p1: Int, p2: String, p3: String) -> String {
    return L10n.tr("Localizable", "ObjectOwnership", p1, p2, p3)
  }
  static func Private(p1: String, p2: Int) -> String {
    return L10n.tr("Localizable", "private", p1, p2)
  }
  static func ApplesCount(p1: Int) -> String {
    return L10n.tr("Localizable", "apples.count", p1)
  }
  static func BananasOwner(p1: Int, p2: String) -> String {
    return L10n.tr("Localizable", "bananas.owner", p1, p2)
  }
  static let SettingsNavigationBarSelf = L10n.tr("Localizable", "settings.navigation-bar.self")
  static let SettingsNavigationBarTitleDeeperThanWeCanHandleNoReallyThisIsDeep = L10n.tr("Localizable", "settings.navigation-bar.title.deeper.than.we.can.handle.no.really.this.is.deep")
  static let SettingsNavigationBarTitleEvenDeeper = L10n.tr("Localizable", "settings.navigation-bar.title.even.deeper")
  static let SeTTingsUSerProFileSectioNFooterText = L10n.tr("Localizable", "seTTings.uSer-proFile-sectioN.footer_text")
  static let SettingsUserProfileSectionHeaderTitle = L10n.tr("Localizable", "SETTINGS.USER_PROFILE_SECTION.HEADER_TITLE")
}
// swiftlint:enable identifier_name line_length type_body_length

extension L10n {
  private static func tr(table: String, _ key: String, _ args: CVarArgType...) -> String {
    let format = NSLocalizedString(key, tableName: table, bundle: NSBundle(forClass: BundleToken.self), comment: "")
    return String(format: format, locale: NSLocale.currentLocale(), arguments: args)
  }
}

private final class BundleToken {}
