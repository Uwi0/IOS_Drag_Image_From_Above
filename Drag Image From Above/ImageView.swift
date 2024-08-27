//
//  ImageView.swift
//  Drag Image From Above
//
//  Created by dwi prasetyo on 28/08/24.
//

import SwiftUI

struct ImageView: View {
    @Binding var image: ImageModel
    @State var dragAmount = CGSize.zero
    @State var isTapped: Bool = false
    let returnDUration: Double = 0.3
    
    
    var body: some View {
        
        let gradient = LinearGradient(
            colors: [.black, .gray],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        
        ZStack {
            Image(systemName: image.name)
                .imageScale(.large)
                .foregroundColor(image.color)
                .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(gradient))
            
            if(dragAmount != .zero) {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(image.color, lineWidth: 3)
                    .blur(radius: 5)
            }
        }
    }
    
}

#Preview {
    ImageView(image: .constant(.init(name: "menucard.fill", color: .red)))
}
