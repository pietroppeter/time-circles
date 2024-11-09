import nimib, p5
nbInit
nbUseP5

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
    noStroke()
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

  proc bigCircle4(x, y: float) =
    fill(aColor)
    circle(x, y, sizeCircle*6)
    fill(orange)
    let deltaX = sizeCircle*0.6
    let deltaY = sizeCircle*1.5
    let deltaY2 = deltaY*0.6
    circle(x -  deltaX, y + deltaY, sizeCircle)    
    circle(x +  deltaX, y + deltaY, sizeCircle)    
    stroke(lightBlue)
    bigCircle2(x, y - deltaY2)

  setup:

    createCanvas(sizeCanvas, sizeCanvas)
    background(lightBlue) # light blue
    strokeWeight(4)
    noStroke()
    fill(orange)
    bigCircle4(midCanvas, midCanvas)

nbSave