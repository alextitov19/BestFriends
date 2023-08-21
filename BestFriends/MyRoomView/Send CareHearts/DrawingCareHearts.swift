//
//  DrawingCareHearts.swift
//  BestFriends
//
//  Created by Zhengxu Wang on 8/18/23.
//

import SwiftUI


struct Line {
    var points = [CGPoint]()
    var color: Color = .red
    var lineWidth: Double = 1.0
}


struct DrawingCareHearts: View {

    @State private var currentLine = Line()
    @State private var lines: [Line] = []
    @State private var thickness: Double = 1.0
    @State private var isFinished = false // New state variable for the "Finished" button
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("TAP HERE") {
                                    isFinished.toggle()
                                }
                                .padding(.trailing)
                                .alert(isPresented: $isFinished) {
                                    Alert(
                                        title: Text("Coming Soon"),
                                        message: Text("This feature will be available in a future update."),
                                        dismissButton: .default(Text("OK"))
                                    )
                                }
            }
            
            Canvas { context, size in
                for line in lines {
                    var path = Path()
                    path.addLines(line.points)
                    context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                }
            }
            .frame(minWidth: 400, minHeight: 400)
            .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
                .onChanged({ value in
                    let newPoint = value.location
                    currentLine.points.append(newPoint)
                    self.lines.append(currentLine)
                })
                .onEnded({ value in
                    self.lines.append(currentLine)
                    self.currentLine = Line(points: [], color: currentLine.color, lineWidth: thickness)
                })
            )
            
            HStack {
                Slider(value: $thickness, in: 1...20) {
                    Text("Thickness")
                }.frame(maxWidth: 200)
                .onChange(of: thickness) { newThickness in
                    currentLine.lineWidth = newThickness
                }
                Divider()
                ColorPicker(selectedColor: $currentLine.color)
                    .onChange(of: currentLine.color) { newColor in
                        print(newColor)
                        currentLine.color = newColor
                    }
            }
        }
        .padding()
    }
}



struct DrawingCareHearts_Previews: PreviewProvider {
    static var previews: some View {
        DrawingCareHearts()
    }
}
