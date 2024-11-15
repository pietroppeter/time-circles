import nimib, p5
nbInit
nbUseP5

nbText "this is a circle. the circle has fun doing stuff"
nbText "next [c2](c2.html)"
nbJsFromCode:
  const
    lightBlue = "#02A4BD"
    orange = "#ee961a"
    sizeCanvas = 400
    midCanvas = sizeCanvas / 2
    sizeCircle = 30

  func circle(x, y: float, size: float) =
    # have not wrapped yet the circle function in p5nim
    ellipse(x, y, size, size)

  setup:

    createCanvas(sizeCanvas, sizeCanvas)
    background(lightBlue) # light blue
    noStroke()
    fill(orange)
    circle(midCanvas, midCanvas, sizeCircle)

nbSave