//
//  CourseListViewModel.swift
//  MVVM_course
//
//  Created by Ildar Garifullin on 22/10/2022.
//

import SwiftUI

protocol CourseListViewModelProtocol {
    var rows: [CourseDetailsViewModel] { get }
    
    func fetchRows()
}

class CourseListViewModel: CourseListViewModelProtocol, ObservableObject {
    @Published var rows: [CourseDetailsViewModel] = []
    
    func fetchRows() {
        NetworkManager.shared.fetchCourses { [unowned self] courses in
            courses.forEach { course in
                let courseDetailsViewModel = CourseDetailsViewModel(course: course)
                rows.append(courseDetailsViewModel)
            }
        }
    }
}
