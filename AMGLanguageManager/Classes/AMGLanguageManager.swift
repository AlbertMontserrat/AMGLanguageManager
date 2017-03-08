//
//  AMGLanguageManager.swift
//  Albert Montserrat
//
//  Created by Albert Montserrat on 08/03/17.
//  Copyright © 2017 Albert Montserrat. All rights reserved.
//

import Foundation

class AMGLanguageManager {
    
    static let shared = AMGLanguageManager()
    
    var languages = [String]()
    
    func initialize(withLanguages languages: [String]) {
        self.languages = languages
    }
    
    func setLanguage(name:String) {
        if !self.languages.contains(name) {
            return
        }
        
        UserDefaults.standard.set(name, forKey: "AMGSelectedLanguage")
        UserDefaults.standard.synchronize()
    }
    
    func getLanguage() -> String? {
        
        let savedLanguage = UserDefaults.standard.string(forKey: "AMGSelectedLanguage")
        
        if let language = savedLanguage {
            
            if !self.languages.contains(language) {
                UserDefaults.standard.set(nil, forKey: "AMGSelectedLanguage")
                UserDefaults.standard.synchronize()
                return self.getLanguage()
            }
            
            return language
            
        } else {
            
            guard self.languages.count != 0 else { return nil }
            
            let preferredLanguages = Locale.preferredLanguages
            for preferredLanguage in preferredLanguages {
                if self.languages.contains(preferredLanguage) {
                    self.setLanguage(name: preferredLanguage)
                    return self.getLanguage()
                }
            }
            
            self.setLanguage(name: self.languages[0])
            return self.getLanguage()

        }
        
    }
    
    func localizedBundle() -> Bundle? {
        let bundlePath = Bundle.main.path(forResource: self.getLanguage(), ofType: "lproj")
        guard let path = bundlePath else { return nil }
        let bundle = Bundle(path: path)
        return bundle
    }
    
    func localizedString(key:String) -> String{
        guard let bundle = localizedBundle() else { return key }
        return bundle.localizedString(forKey: key, value: "", table: "Localizable")
    }
    
    func localizedPath(forResource name: String?, ofType ext: String?) -> String? {
        guard let bundle = localizedBundle() else { return nil }
        return bundle.path(forResource: name, ofType: ext)
    }
    
    
}
