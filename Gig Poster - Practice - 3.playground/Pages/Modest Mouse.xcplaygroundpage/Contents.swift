//: # Gig Poster - Practice Task 3
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

/*:
 Each image is exactly 400 pixels wide by 600 pixels tall. 
 
 Your goal is to precisely reproduce this image: 
 
 ![modest-mouse-no-grid](modest-mouse-no-grid.jpg "Modest Mouse")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let darkGrey = Color(hue: 60, saturation: 9, brightness: 56, alpha: 100)
let lightGrey = Color(hue: 71, saturation: 5, brightness: 87, alpha: 100)
let deepYellow = Color(hue: 46, saturation: 99, brightness: 99, alpha: 100)
let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)

// Begin your solution here...

// Make background colour
canvas.fillColor = darkGrey
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

var yCoord = 0
for y in stride(from: -400, through: 400, by: 40){

    if y <= 0 {
        canvas.lineColor = black
    }else{
        canvas.lineColor = lightGrey
    }
canvas.drawLine(from: Point(x: 0, y: y), to: Point(x: 400, y: yCoord), lineWidth: 15, capStyle: NSBezierPath.LineCapStyle.square)

    yCoord += 40
}

//// Draw grey lines
//
//var yCoord = 400
//
//canvas.lineColor = lightGrey
//
//for y in stride(from: 0, through: 400, by: 44){
//
//    canvas.drawLine(from: Point(x: 0, y: y), to: Point(x: 400, y: yCoord), lineWidth: 15, capStyle: NSBezierPath.LineCapStyle.square)
//
//    yCoord += 44
//
//}
//
//
//// Draw black lines
//yCoord = 400
//
//canvas.lineColor = black
//for yTwo in stride(from: 0, through: -400, by: -44){
//
//    canvas.drawLine(from: Point(x: 0, y: yTwo), to: Point(x: 400, y: yCoord), lineWidth: 15, capStyle: NSBezierPath.LineCapStyle.square)
//
//    yCoord -= 44
//
//}


// Draw yellow lines
canvas.lineColor = deepYellow

yCoord = 360
for yThree in stride(from: -40, through: 40, by: 40){
    
    canvas.drawLine(from: Point(x: 0, y: yThree), to: Point(x: 400, y: yCoord), lineWidth: 16, capStyle: NSBezierPath.LineCapStyle.square)
    
    yCoord += 40
}




canvas.drawShapesWithBorders = false
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)


canvas.fillColor = Color.black



//// Make grid
//
//canvas.lineColor = black
//// Horizontal lines
//for y in stride(from: 0, through: 600, by: 50){
//
//    canvas.drawLine(from: Point(x: 0, y: y), to: Point(x: 400, y: y))
//
//}
//
//// Vertical lines
//for x in stride(from: 0, through: 400, by: 50){
//
//    canvas.drawLine(from: Point(x: x, y: 0), to: Point(x: x, y: 600))
//}
/*:
 ## Use Source Control
 
 As this is a practice task, there is no hard deadline. However, completing this practice task – an assessment for learning – prior to attempting an assessment of learning – is strongly recommended.
 
 Be sure to commit your work multiple times as you make progress on completing this task.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

