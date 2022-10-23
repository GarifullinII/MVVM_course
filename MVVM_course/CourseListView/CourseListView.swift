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
                List(viewModel.rows, id: \.courseName) { courseDetailsViewModel in
                    NavigationLink(destination: CourseDetailsView(viewModel: courseDetailsViewModel)) {
                        RowView(viewModel: courseDetailsViewModel)
                    }
                }
            }
            .navigationBarTitle("Courses")
        }
        .onAppear {
            viewModel.fetchRows()
        }
    }
}

struct CourseListView_Previews: PreviewProvider {
    static var previews: some View {
        CourseListView()
    }
}
