// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
public typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
public typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum Asset {
  public static let accentColor = ColorAsset(name: "AccentColor")
  public enum Colors {
    public enum Basic {
      public static let black = ColorAsset(name: "Colors/Basic/black")
      public static let grey = ColorAsset(name: "Colors/Basic/grey")
      public static let white = ColorAsset(name: "Colors/Basic/white")
    }
    public static let activeColor = ColorAsset(name: "Colors/activeColor")
    public static let background = ColorAsset(name: "Colors/background")
    public static let borderColor = ColorAsset(name: "Colors/borderColor")
    public static let cellBG = ColorAsset(name: "Colors/cellBG")
    public static let dialogBG = ColorAsset(name: "Colors/dialogBG")
    public static let placeholder = ColorAsset(name: "Colors/placeholder")
    public static let purple = ColorAsset(name: "Colors/purple")
    public static let templateCreativeFon = ColorAsset(name: "Colors/templateCreativeFon")
    public static let templateCreativeImageFon = ColorAsset(name: "Colors/templateCreativeImageFon")
    public static let templateGrey = ColorAsset(name: "Colors/templateGrey")
    public static let templateLightPurple = ColorAsset(name: "Colors/templateLightPurple")
    public static let templateOliveFon = ColorAsset(name: "Colors/templateOliveFon")
    public static let templatePurple = ColorAsset(name: "Colors/templatePurple")
    public static let templateSecondaryGrey = ColorAsset(name: "Colors/templateSecondaryGrey")
    public static let templateStudentFon = ColorAsset(name: "Colors/templateStudentFon")
    public static let templateTextGrey = ColorAsset(name: "Colors/templateTextGrey")
    public static let templateTextLightGrey = ColorAsset(name: "Colors/templateTextLightGrey")
    public static let templateYellow = ColorAsset(name: "Colors/templateYellow")
    public static let textGrey = ColorAsset(name: "Colors/textGrey")
    public static let textMain = ColorAsset(name: "Colors/textMain")
  }
  public enum Images {
    public static let basicTemplate = ImageAsset(name: "Images/basicTemplate")
    public static let blackTemplate = ImageAsset(name: "Images/blackTemplate")
    public static let blueTemplate = ImageAsset(name: "Images/blueTemplate")
    public static let colorfulTemplate = ImageAsset(name: "Images/colorfulTemplate")
    public static let creativeTemplate = ImageAsset(name: "Images/creativeTemplate")
    public static let greyTemplate = ImageAsset(name: "Images/greyTemplate")
    public static let modernTemplate = ImageAsset(name: "Images/modernTemplate")
    public static let oliveTemplate = ImageAsset(name: "Images/oliveTemplate")
    public static let paperTemplate = ImageAsset(name: "Images/paperTemplate")
    public static let purpleTemplate = ImageAsset(name: "Images/purpleTemplate")
    public static let studentTemplate = ImageAsset(name: "Images/studentTemplate")
    public static let yellowTemplate = ImageAsset(name: "Images/yellowTemplate")
    public enum Checkbox {
      public static let cornerSelected = ImageAsset(name: "Images/Checkbox/cornerSelected")
      public static let cornerUnselected = ImageAsset(name: "Images/Checkbox/cornerUnselected")
      public static let roundedSelected = ImageAsset(name: "Images/Checkbox/roundedSelected")
      public static let roundedUnselected = ImageAsset(name: "Images/Checkbox/roundedUnselected")
    }
    public enum Content {
      public static let skills = ImageAsset(name: "Images/Content/Skills")
      public static let about = ImageAsset(name: "Images/Content/about")
      public static let contacts = ImageAsset(name: "Images/Content/contacts")
      public static let education = ImageAsset(name: "Images/Content/education")
      public static let honors = ImageAsset(name: "Images/Content/honors")
      public static let language = ImageAsset(name: "Images/Content/language")
      public static let summary = ImageAsset(name: "Images/Content/summary")
      public static let work = ImageAsset(name: "Images/Content/work")
    }
    public enum Icons {
      public static let aboutEmptyPhoto = ImageAsset(name: "Images/Icons/aboutEmptyPhoto")
      public static let addMore = ImageAsset(name: "Images/Icons/addMore")
      public static let content = ImageAsset(name: "Images/Icons/content")
      public static let down = ImageAsset(name: "Images/Icons/down")
      public static let edit = ImageAsset(name: "Images/Icons/edit")
      public static let export = ImageAsset(name: "Images/Icons/export")
      public static let largePlus = ImageAsset(name: "Images/Icons/largePlus")
      public static let navigationArrow = ImageAsset(name: "Images/Icons/navigationArrow")
      public static let resumeIcon = ImageAsset(name: "Images/Icons/resumeIcon")
      public static let smallPlus = ImageAsset(name: "Images/Icons/smallPlus")
      public static let trashBlack = ImageAsset(name: "Images/Icons/trashBlack")
      public static let trashColored = ImageAsset(name: "Images/Icons/trashColored")
    }
    public enum Info {
      public static let info = ImageAsset(name: "Images/Info/info")
      public static let privacy = ImageAsset(name: "Images/Info/privacy")
      public static let share = ImageAsset(name: "Images/Info/share")
      public static let terms = ImageAsset(name: "Images/Info/terms")
    }
    public enum MyResume {
      public static let templateBlueBG = ImageAsset(name: "Images/MyResume/templateBlueBG")
      public static let templateColorfulBG = ImageAsset(name: "Images/MyResume/templateColorfulBG")
      public static let templatePaperBG = ImageAsset(name: "Images/MyResume/templatePaperBG")
    }
    public enum Navigation {
      public static let back = ImageAsset(name: "Images/Navigation/back")
      public static let close = ImageAsset(name: "Images/Navigation/close")
      public static let close2close = ImageAsset(name: "Images/Navigation/close@2close")
      public static let close3close = ImageAsset(name: "Images/Navigation/close@3close")
      public static let info = ImageAsset(name: "Images/Navigation/info")
      public static let privacy = ImageAsset(name: "Images/Navigation/privacy")
      public static let share = ImageAsset(name: "Images/Navigation/share")
      public static let terms = ImageAsset(name: "Images/Navigation/terms")
    }
    public enum Onboarding {
      public static let onboardingFifth = ImageAsset(name: "Images/Onboarding/onboardingFifth")
      public static let onboardingFirst = ImageAsset(name: "Images/Onboarding/onboardingFirst")
      public static let onboardingFourth = ImageAsset(name: "Images/Onboarding/onboardingFourth")
      public static let onboardingSecond = ImageAsset(name: "Images/Onboarding/onboardingSecond")
      public static let onboardingThird = ImageAsset(name: "Images/Onboarding/onboardingThird")
    }
    public static let languageDotBlack = ImageAsset(name: "Images/languageDotBlack")
    public static let languageDotGrey = ImageAsset(name: "Images/languageDotGrey")
    public static let languageDotLightGrey = ImageAsset(name: "Images/languageDotLightGrey")
    public static let languageDotWhite = ImageAsset(name: "Images/languageDotWhite")
    public static let oliveBranch = ImageAsset(name: "Images/oliveBranch")
    public static let resumeDot = ImageAsset(name: "Images/resumeDot")
    public static let resumeDotWhite = ImageAsset(name: "Images/resumeDotWhite")
    public static let resumeLocation = ImageAsset(name: "Images/resumeLocation")
    public static let resumeLocationWhite = ImageAsset(name: "Images/resumeLocationWhite")
    public static let resumeMail = ImageAsset(name: "Images/resumeMail")
    public static let resumeMailWhite = ImageAsset(name: "Images/resumeMailWhite")
    public static let resumePhone = ImageAsset(name: "Images/resumePhone")
    public static let resumePhoneWhite = ImageAsset(name: "Images/resumePhoneWhite")
    public static let resumeWeb = ImageAsset(name: "Images/resumeWeb")
    public static let resumeWebWhite = ImageAsset(name: "Images/resumeWebWhite")
  }
  public static let launchScreen = ImageAsset(name: "launchScreen")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public final class ColorAsset {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  public private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  public func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  public private(set) lazy var swiftUIColor: SwiftUI.Color = {
    SwiftUI.Color(asset: self)
  }()
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

public extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
public extension SwiftUI.Color {
  init(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

public struct ImageAsset {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  public var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  public func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  public var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

public extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
public extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
