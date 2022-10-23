//
//  CourseListView.swift
//  MVVM_course
//
//  Created by Ildar Garifullin on 22/10/2022.
//

import SwiftUI

struct CourseListView: View {
    
    @StateObject private var viewModel = CourseListViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(viewModel.courses, id: \.name) { course in
                    Text(course.name)
                }
            }
            .navigationBarTitle("Courses")
            .navigationBarItems(trailing: Button("Fetch Data", action: viewModel.fetchDataButtonPressed))
        }
    }
}

struct CourseListView_Previews: PreviewProvider {
    static var previews: some View {
        CourseListView()
    }
}
