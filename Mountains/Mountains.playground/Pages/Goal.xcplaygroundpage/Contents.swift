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
let canvas = Canvas(width: 300, height: 300);

// Dots in the program
for y in stride(from: 300, through: 0, by: -25){

for x in stride(from: 0, through: 300, by: 25){
    canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2);
    }
}

//First Rectangle
canvas.drawShapesWithBorders = false;
canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 70, alpha: 100);
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 300, height: 75);

//First rectangles line

for x in stride(from: 0, through: 25, by: 1){
    canvas.defaultLineWidth
    canvas.drawLine(fromX: 0, fromY: 75, toX: 1, toY: 150);
}

//Triangles for first rectangle
canvas.drawShapesWithBorders = false;
canvas.fillColor = Color(hue: 0, saturation: 0, brightness: 70, alpha: 100)
canvas.drawLine(fromX: 42, fromY: 50, toX: 7, toY: 85, lineWidth: 50);

canvas.drawLine(fromX: 100, fromY: 50, toX: 75, toY: 85, lineWidth: 50);


//Second Rectangle


PlaygroundPage.current.liveView = canvas.imageView
