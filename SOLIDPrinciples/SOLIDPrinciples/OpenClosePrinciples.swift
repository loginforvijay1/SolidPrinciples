//
//  OpenClosePrinciples.swift
//  SOLIDPrinciples
//
//  Created by Vemireddy Vijayasimha Reddy on 08/04/24.
//

import Foundation
class Rectangle {
    var width: Double = 0
    var heigt:Double = 0
    init(width: Double, heigt: Double) {
        self.width = width
        self.heigt = heigt
    }
}

class Circle {
    var radious: Double = 0
    init(radious: Double) {
        self.radious = radious
    }
}

class AreaCalculator {
    func area(shape: AnyObject) -> Double {
        var area: Double = 0.0
        if shape is Rectangle {
            if let rect = shape as? Rectangle {
                area = rect.width * rect.heigt
            }
        }
        else if shape is Circle {
            if let circle = shape as? Circle {
                area = circle.radious * circle.radious
            }
        }
        return area
    }
}


// Implementation
protocol Shape {
    func area() -> Double
}

class Rectangle1: Shape {
    var width: Double = 0.0
    var height: Double = 0.0
    func area() -> Double {
        width * height
    }
}

class Circle1: Shape {
    var radius: Double = 0
    func area() -> Double {
        return radius * radius
    }
}

class AreaCalculator1 {
    func area(shape: Shape) -> Double {
        return shape.area()
    }
}
