import nimib, p5
nbInit
nbUseP5

nbText "previous [c1](c1.html)"
nbText "another circle joins the first circle and they do stuff together"
nbText "next [c3](c3.html)"
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

  setup:

    createCanvas(sizeCanvas, sizeCanvas)
    background(lightBlue) # light blue
    noStroke()
    fill(orange)
    bigCircle2(midCanvas, midCanvas)

nbSave