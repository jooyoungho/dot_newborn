
let artBoardWidth = 210
let artBoardHeight = 297
let NumberOfElements = 1224
var rects:String = ""
var style:String = ""

var gridNoise:Int {
    return Int.random(in: 1...24)
}

var element:(Int,Int) {
    return (name: (artBoardWidth / gridNoise), (artBoardHeight / gridNoise))
}

//Color
var colorCode:[String] = [
    "{ fill: #022859; }",
    "{ fill: #022840; }",
    "{ fill: #F29F05; }",
    "{ fill: #F2811D; }",
    "{ fill: #F2F2F2; }",
    "{ fill: #8C7C68; }",
    "{ fill: #A69581; }",
    "{ fill: #BFB2A3; }",
    "{ fill: #26190D; }",
    "{ fill: #594E4A; }",
    "{ fill: #8C3243; }",
    "{ fill: #A68A7B; }",
    "{ fill: #73574D; }",
    "{ fill: #F2F2F2; }",
    "{ fill: #0D0D0D; }",
    "{ fill: #3B3B40; }",
    "{ fill: #BFB26F; }",
    "{ fill: #BFB8AE; }",
    "{ fill: #8C6F5E; }",
    "{ fill: #591812; }",
    "{ fill: #F2695C; }",
    "{ fill: #A61414; }",
    "{ fill: #D93636; }",
    "{ fill: #D9D9D9; }",
    "{ fill: #F25CAF; }",
    "{ fill: #04C4D9; }",
    "{ fill: #24BF2F; }",
    "{ fill: #A69C14; }",
    "{ fill: #F2AB6D; }",
    "{ fill: #F2F2F2; }",
    "{ fill: #BFBFBF; }",
    "{ fill: #8C8C8C; }",
    "{ fill: #595959; }",
    "{ fill: #262626; }",
    "{ fill: #03178C; }",
    "{ fill: #021373; }",
    "{ fill: #14328C; }",
    "{ fill: #4E64A6; }",
    "{ fill: #A0AED9; }"
]

for id in 0..<colorCode.count {
    style += ".color\(id)\(colorCode[id])"
}

for _ in 0..<NumberOfElements {
    rects += "<rect x='\(element.0)' y='\(element.1)' width='\(element.0)' height='\(element.1)' class='color\(Int.random(in: 0..<colorCode.count))'/>"
    
}
var output:String {
    let str = """
<?xml version="1.0" encoding="utf-8"?>
    <!-- Generator: dot 0.1, SVG Version: 6.00)  -->
    <svg version="1.1" id="layer" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
         y="0px" viewBox="0 0 210 297" style="enable-background:new 0 0 210 297;" xml:space="preserve">
    <style type="text/css">
        \(style)
    </style>
    \(rects)
    </svg>
"""
    return str
}


print(output)
