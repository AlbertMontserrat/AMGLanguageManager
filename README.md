# AMGLanguageManager

[![CI Status](http://img.shields.io/travis/albert.montserrat.gambus@gmail.com/AMGLanguageManager.svg?style=flat)](https://travis-ci.org/albert.montserrat.gambus@gmail.com/AMGLanguageManager)
[![Version](https://img.shields.io/cocoapods/v/AMGLanguageManager.svg?style=flat)](http://cocoapods.org/pods/AMGLanguageManager)
[![License](https://img.shields.io/cocoapods/l/AMGLanguageManager.svg?style=flat)](http://cocoapods.org/pods/AMGLanguageManager)
[![Platform](https://img.shields.io/cocoapods/p/AMGLanguageManager.svg?style=flat)](http://cocoapods.org/pods/AMGLanguageManager)

## Example

To initialize the singleton, just set the available languages in didFinishLaunching like this:

```
AMGLanguageManager.shared.initialize(withLanguages: ["en", "es"])
```

Then in code just

```
AMGLanguageManager.shared.localizedString(key: "str_key")
```

to retrieve the localized string.

You can also get localized resource path like this:

```
AMGLanguageManager.shared.localizedPath(forResource: "filename", ofType: "extension")
```

To change the language in any part of the app just set:

```
AMGLanguageManager.shared.setLanguage(name: "es")
```

To use NSLocalizedString just as before but with the AMGLanguageManager you can modify the macro like this:

```
#undef NSLocalizedString
#define NSLocalizedString(key,_comment) AMGLanguageManager.shared.localizedString(key: key)
```



## Requirements

## Installation

AMGLanguageManager is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "AMGLanguageManager"
```

## Author

albert.montserrat.gambus@gmail.com, albert.montserrat@pangeareality.com

## License

AMGLanguageManager is available under the MIT license. See the LICENSE file for more info.
