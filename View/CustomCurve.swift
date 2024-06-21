//
//  CustomCurve.swift
//  FooDApp
//
//  Created by RANA  on 13/6/24.
//

import SwiftUI

struct CustomCurve : View {
    var body: some View {
        VStack{
            NewCurve()
                .stroke(lineWidth: 3)
//            StrokeStyle(lineWidth: 4)
        }

    }
}

struct NewCurve: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.width
        let height = rect.height
        let curveHeight: CGFloat = height / 2
        

        
        path.addArc(
            center: CGPoint(x: width / 2, y: height - curveHeight),
            radius: width / 12,
            startAngle: .zero,
            endAngle: .degrees(180),
            clockwise: false
        )

 
        path.move(to: CGPoint(x: 0, y: 0))
        
        return path
    }
}



#Preview {
    CustomCurve()
}
