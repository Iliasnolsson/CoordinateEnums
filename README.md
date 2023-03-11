# CoordinateEnums

CoordinateEnums is a Swift package that provides a collection of useful enums to work with coordinates in UIKit and other graphic user interface frameworks. The package includes enums for representing axis, sides, and horizontal/vertical positions, along with extension methods that make it easier to work with these types.

Installation
------------

You can install CoordinateEnums using Swift Package Manager. To do so, add the following line to your Package.swift file:

```swift
.package(url: "https://github.com/Iliasnolsson/CoordinateEnums", from:  "1.0.0"..<"2.0.0")
```

Requirements
------------

*   Swift 5.6 or later
*   iOS 13.0 or later


Usage
------------


Axis
----

The `Axis` enum represents either the horizontal or vertical axis in a coordinate system. It has two cases, `horizontal` and `vertical`, and can be used in a variety of contexts to represent orientation:

```swift
let axis: Axis = .horizontal

if axis == .horizontal {
    // Do something for horizontal orientation
} else {
    // Do something for vertical orientation
}
```

The `Axis` enum also provides a computed property for its opposite axis:


```swift
let axis: Axis = .horizontal
let oppositeAxis = axis.opposite // .vertical
```

Side
----

The `Side` enum represents a side of a rectangle, such as the top, bottom, left, or right. It has four cases, `top`, `bottom`, `left`, and `right`, and can be used in a variety of contexts to represent edges:


```swift
let side: Side = .left

if side == .left {
    // Do something for the left edge
} else {
    // Do something for another edge
}
```

The `Side` enum also provides a computed property for its opposite side:


```swift
let side: Side = .top
let oppositeSide = side.opposite // .bottom
```

SideHorizontal
--------------

The `SideHorizontal` enum represents a horizontal side of a rectangle, such as the left or right. It has two cases, `left` and `right`, and can be used in a variety of contexts to represent horizontal edges:


```swift
let horizontalSide: SideHorizontal = .right

if horizontalSide == .right {
    // Do something for the right edge
} else {
    // Do something for the left edge
}
```

The `SideHorizontal` enum also provides a computed property for its opposite horizontal side:


```swift
let horizontalSide: SideHorizontal = .left
let oppositeHorizontalSide = horizontalSide.opposite // .right
```

SideVertical
------------

The `SideVertical` enum represents a vertical side of a rectangle, such as the top or bottom. It has two cases, `top` and `bottom`, and can be used in a variety of contexts to represent vertical edges:


```swift
let verticalSide: SideVertical = .top

if verticalSide == .top {
    // Do something for the top edge
} else {
    // Do something for the bottom edge
}
```

The `SideVertical` enum also provides a computed property for its opposite vertical side:


```swift
let verticalSide: SideVertical = .bottom
let oppositeVerticalSide = verticalSide.opposite // .top
```

SideOrCenterHorizontal
----------------------

The `SideOrCenterHorizontal` enum represents a horizontal side or center of a rectangle, such as the left, center or right. It has three cases, `left`, `center` and `right`, and can be used in a variety of contexts to represent horizontal edges and center:


```swift
let sideOrCenter: SideOrCenterHorizontal = .center

if sideOrCenter == .center {
    // Do something for the center
} else {
    // Do something for a side
}
```

The `SideOrCenterHorizontal` enum also provides a computed property for its opposite horizontal side/center:


```swift
let sideOrCenter: SideOrCenterHorizontal = .left
let oppositeSideOrCenter = sideOrCenter.opposite // .right
```

Placement
---------

The `Placement` enum represents a relative placement of a rectangle to another rectangle, such as over, under, left, or right. It has four cases, `over`, `under`, `left`, and `right`, and can be used in a variety of contexts to represent placement:


```swift
let placement: Placement = .over

if placement == .over {
    // Do something for a rectangle placed over another
} else {
    // Do something for another placement
}
```

The `Placement` enum also provides a computed property for its opposite placement:


```swift
let placement: Placement = .under
let oppositePlacement = placement.opposite // .over
```

CGPoint Extension
-----------------

The `CGPoint` extension provides two methods that make it easier to work with points and coordinate systems. The `float` method returns the `x` or `y` value of a point, depending on the specified axis:


```swift
let point = CGPoint(x: 10, y: 20)
let xValue = point.float(onAxis: .horizontal) // 10
```

The `set` method sets the `x` or `y` value of a point, depending on the specified axis:


```swift
var point = CGPoint(x: 10, y: 20)
point.set(30, onAxis: .horizontal) // CGPoint(x: 30, y: 20)
```

CGRect Extension
----------------

The `CGRect` extension provides two methods that make it easier to work with rectangles and sides. The `float` method returns the value of a rectangle's side, based on the specified side:


```swift
let rect = CGRect(x: 0, y: 0, width: 100, height: 200)
let yValue = rect.float(forSide: .top) // 0
```

The `range` method returns a closed range that includes all values along a specified side:


```swift
let rect = CGRect(x: 0, y: 0, width: 100, height: 200)
let xRange = rect.range(forSide: .top) // 0...100
```

License
-------

CoordinateEnums is available under the MIT license. See the LICENSE file for more info.
