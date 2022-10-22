//
//  CourseListViewModel.swift
//  MVVM_course
//
//  Created by Ildar Garifullin on 22/10/2022.
//

import SwiftUI

protocol CourseListViewModelProtocol {
    var message: String { get }
    
    func fetchDataButtonPressed()
}

class CourseListViewModel: CourseListViewModelProtocol, ObservableObject {
    @Published var message: String = "Property inside observable object"
    
    func fetchDataButtonPressed() {
        message = "Data is fetching"
    }
}
