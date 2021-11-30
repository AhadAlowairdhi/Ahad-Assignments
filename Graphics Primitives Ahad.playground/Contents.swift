import UIKit
import Darwin

//Create a Point struct that has two properties called "X" & "Y" both of which are Doubles
struct Point {
    var X : Double
    var Y : Double
}

//Create a Line struct that has a "Start" and "End" property both of type Point
struct Line {
    var Start : Point
    var End : Point
    
    //In the Line struct add a function to return the Length of the created line as a Double.
    func LengthOfLine() -> Double{
        return sqrt(pow(End.X - Start.X, 2) + pow(End.Y - Start.Y,2))
    }
}

struct Triangle{
    //Create a Triangle Struct that contains a property called "Points" which is an array of type Point
    var Points : [Point]
    
    init(Points:[Point]) {
           self.Points = Points
       }
    
    //Add a function to the Triangle to get the area of the triangle built with three provided points and return the value as a Double.
    func area() -> Double{
//        let a = Line(Start: Points[0], End: Points[1]).LengthOfLine()
//        let b = Line(Start: Points[1], End: Points[2]).LengthOfLine()
//        let c = Line(Start: Points[2], End: Points[0]).LengthOfLine()
//        // area =
//        let result : Double = sqrt(a + (b + c)) * (c - (a - b)) (c + (a - b)) * (a + (b - c))/4.0))
//
//        return result
        
        var Lines :[Line] = []
               Lines.append(Line(Start: Points[0], End:Points[1]))
               Lines.append(Line(Start: Points[1], End:Points[2]))
               Lines.append(Line(Start: Points[2], End:Points[0]))
               
        let s =  (Lines[0].LengthOfLine() + Lines[1].LengthOfLine() + Lines[2].LengthOfLine()) / 2
               
        return sqrt(s * (s - Lines[0].LengthOfLine())*(s - Lines[1].LengthOfLine()*(s - Lines[2].LengthOfLine())))
                                                       
    }
}
//print the result of line length
var line = Line(Start: Point(X: 2.0, Y: 3.0), End: Point(X: 2.4, Y: 6.9))
print(line.LengthOfLine())

//print the result of triangle area
var triangle = Triangle(Points: [Point(X: 0.0, Y: 0.0), Point(X: 0.0, Y: 1.0), Point(X: 1.0, Y: 0.0)])
print(triangle.area())





