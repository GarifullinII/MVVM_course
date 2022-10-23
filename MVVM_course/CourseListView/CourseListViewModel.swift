//
//  CourseListViewModel.swift
//  MVVM_course
//
//  Created by Ildar Garifullin on 22/10/2022.
//

import SwiftUI

protocol CourseListViewModelProtocol {
    var courses: [Course] { get }
    
    func fetchDataButtonPressed()
}

class CourseListViewModel: CourseListViewModelProtocol, ObservableObject {
    @Published var courses: [Course] = []
    
    func fetchDataButtonPressed() {
        NetworkManager.shared.fetchData() { courses in
            self.courses = courses
        }
    }
}
