//
//  DrawingCareHearts.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 8/18/23.
//

import SwiftUI


struct Line{
    var points = [CGPoint]()
    var color: Color = .red
    var lineWidth: Double = 1.0
}


struct DrawingCareHearts: View {

    @State private var currentLine = Line()
    @State private var lines: [Line] = []
    
    var body: some View{
        VStack {
            Canvas{ context, size in
                for line in lines{
                    var path = Path()
                    path.addLines(line.points)
                    context.stroke(path, with: .color(line.color), lineWidth:
                                    line.lineWidth)
                }
            }.gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                .onChanged({ value in
                    let newPoint = value.location
                    currentLine.points.append(newPoint)
                    self.lines.append(currentLine)
                })
                .onEnded({ value in
                            
                        })
                      
                )

        }
    }
}


struct DrawingCareHearts_Previews: PreviewProvider {
    static var previews: some View {
        DrawingCareHearts()
    }
}
