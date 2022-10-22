//
//  CourseListView.swift
//  MVVM_course
//
//  Created by Ildar Garifullin on 22/10/2022.
//

import SwiftUI

struct CourseListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
            }
            .navigationBarTitle("Courses")
            .navigationBarItems(trailing: Button("Fetch Data") {
                
            })
        }
    }
}

struct CourseListView_Previews: PreviewProvider {
    static var previews: some View {
        CourseListView()
    }
}
