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
 



PlaygroundPage.current.liveView = canvas.imageView
