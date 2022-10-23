//
//  Course.swift
//  MVVM_course
//
//  Created by Ildar Garifullin on 23/10/2022.
//

import Foundation

struct Course: Decodable {
    let name: String
    let imageUrl: URL
    let numberOfLessons: Int
    let numberOfTests: Int
}
