//: # Your goal
//: ![goal](scenario-three.png "Your goal")
/*:
 ## Notes:
 * the image is exactly 300 pixels wide by 300 pixels high
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![assistanteditor](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 300, height: 300)

//draw the dots
for x in stride(from: 0, to: 300, by: 25){
    for y in stride(from: 300, to: 0, by: -25){
        canvas.drawEllipse(centreX: x, centreY: y, width: 1, height: 1)
    }
}


//big grey rectangle
canvas.drawShapesWithBorders = false
canvas.fillColor = Color(hue: 0, saturation: 000, brightness: 70, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 300, height: 150)


//smaller black rectangle
canvas.drawShapesWithBorders = false
canvas.fillColor = Color(hue: 0, saturation: 000, brightness: 5, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 300, height: 75)

//big grey mountain one
canvas.borderColor = Color(hue: 0, saturation: 0, brightness: 70, alpha: 100)
canvas.lineColor = Color(hue: 0, saturation: 0, brightness: 70, alpha: 100)
for xPos in stride(from: 0, to: 125, by:4){
    canvas.drawLine(fromX: 0, fromY: 198, toX: xPos, toY: 75, lineWidth: 2)
}

//big grey mountain 2
canvas.borderColor = Color(hue: 0, saturation: 0, brightness: 70, alpha: 100)
canvas.lineColor = Color(hue: 0, saturation: 0, brightness: 70, alpha: 100)
for xPos in stride(from: 0, to: 200, by:4){
    canvas.drawLine(fromX: 100, fromY: 198, toX: xPos, toY: 75, lineWidth: 2)
}

//big grey mountain 3
canvas.borderColor = Color(hue: 0, saturation: 0, brightness: 70, alpha: 100)
canvas.lineColor = Color(hue: 0, saturation: 0, brightness: 70, alpha: 100)
for xPos in stride(from: 100, to: 300, by:4){
    canvas.drawLine(fromX: 200, fromY: 198, toX: xPos, toY: 75, lineWidth: 2)
}

//big grey mountain 4
canvas.borderColor = Color(hue: 0, saturation: 0, brightness: 70, alpha: 100)
canvas.lineColor = Color(hue: 0, saturation: 0, brightness: 70, alpha: 100)
for xPos in stride(from: 200, to: 400, by:4){
    canvas.drawLine(fromX: 300, fromY: 198, toX: xPos, toY: 75, lineWidth: 2)
}

//small black mountain 1
canvas.borderColor = Color(hue: 0, saturation: 0, brightness: 5, alpha: 100)
canvas.lineColor = Color(hue: 0, saturation: 0, brightness: 5, alpha: 100)
for xPos in stride(from: 0, to: 125, by:4){
    canvas.drawLine(fromX: 0, fromY: 98, toX: xPos, toY: 50, lineWidth: 2)
}

//small black mountain 2
canvas.borderColor = Color(hue: 0, saturation: 0, brightness: 5, alpha: 100)
canvas.lineColor = Color(hue: 0, saturation: 0, brightness: 5, alpha: 100)
for xPos in stride(from: 0, to: 175, by:4){
    canvas.drawLine(fromX: 100, fromY: 98, toX: xPos, toY: 50, lineWidth: 2)
}

//small black mountain 3
canvas.borderColor = Color(hue: 0, saturation: 0, brightness: 5, alpha: 100)
canvas.lineColor = Color(hue: 0, saturation: 0, brightness: 5, alpha: 100)
for xPos in stride(from: 0, to: 200, by:4){
    canvas.drawLine(fromX: 200, fromY: 98, toX: xPos, toY: 50, lineWidth: 2)
}

PlaygroundPage.current.liveView = canvas.imageView
