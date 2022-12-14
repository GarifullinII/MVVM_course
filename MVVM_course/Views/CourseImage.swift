//
//  CourseImage.swift
//  MVVM_course
//
//  Created by Ildar Garifullin on 23/10/2022.
//

import SwiftUI

struct CourseImage: View {
    
    let imageData: Data?
    let imageSize: CGSize
    let cornerRadius: CGFloat
    let shadowIsOn: Bool
    
    var body: some View {
        getImage(from: imageData)
            .resizable()
            .frame(width: imageSize.width, height: imageSize.height)
            .cornerRadius(cornerRadius)
            .shadow(radius: shadowIsOn ? 10 : 0)
    }
    
    private func getImage(from data: Data?) -> Image {
        guard let imageData = data else {
            return Image(systemName: "xmark.shield")
        }
        
        guard let uiImage = UIImage(data: imageData) else {
            return Image(systemName: "xmark.shield")
        }
        
        return Image(uiImage: uiImage)
    }
}

struct CourseImage_Previews: PreviewProvider {
    static var previews: some View {
        CourseImage(
            imageData: nil,
            imageSize: CGSize(width: 100, height: 100),
            cornerRadius: 0,
            shadowIsOn: true
        )
    }
}
