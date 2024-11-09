import nimib, p5
nbInit
nbUseP5

nbText "previous [c2](c2.html)"
nbText "yet another circle joins the first two circles. The three circles have a lot of fun together"
nbText "they have so much fun that they decide to look for another circle to join."
nbText "next [c4](c4.html)"
nbJsFromCode:
  const
    lightBlue = "#02A4BD"
    orange = "#ee961a"
    aColor = "white"
    sizeCanvas = 400
    midCanvas = sizeCanvas / 2
    sizeCircle = 30

  proc circle(x, y: float, size: float) =
    # have not wrapped yet the circle function in p5nim
    ellipse(x, y, size, size)

  proc bigCircle2(x, y: float) =
    fill(aColor)
    circle(x, y, sizeCircle*3)
    fill(orange)
    let deltaX = sizeCircle*0.6
    circle(x -  deltaX, y, sizeCircle)    
    circle(x +  deltaX, y, sizeCircle)    

  proc bigCircle3(x, y: float) =
    fill(aColor)
    circle(x, y, sizeCircle*3.5)
    fill(orange)
    let deltaX = sizeCircle*0.6
    let deltaY = sizeCircle*0.9
    let deltaY2 = deltaY / 2
    circle(x -  deltaX, y + deltaY2, sizeCircle)    
    circle(x +  deltaX, y + deltaY2, sizeCircle)    
    circle(x, y - deltaY + deltaY2, sizeCircle)    

  setup:

    createCanvas(sizeCanvas, sizeCanvas)
    background(lightBlue) # light blue
    noStroke()
    fill(orange)
    bigCircle3(midCanvas, midCanvas)

nbSave