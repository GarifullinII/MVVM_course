//
//  DataManager.swift
//  MVVM_course
//
//  Created by Ildar Garifullin on 23/10/2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    private let userDefaults = UserDefaults()
    
    func saveFavouriteStatus(for courseName: String, with status: Bool) {
        userDefaults.set(status, forKey: courseName)
    }
    
    func loadFavouriteStatus(for courseName: String) -> Bool {
        userDefaults.bool(forKey: courseName)
    }
}
