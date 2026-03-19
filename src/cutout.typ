#{
  import "net-qr.typ": net-qr

  set text(
    font: "Roboto",
  )

  // I can only print this on A4, but I need it smaller - 10 x 15 cm.
  // This code centers the image and draws guidelines for cutting
  set page(width: 210mm, height: 297mm) // A4

  let content-width = 100mm
  let content-height = 150mm

  let offset-x = (210mm - content-width) / 2
  let offset-y = (297mm - content-height) / 2


  // Fill in your details below:
  let network = "Your wifi network name"
  let password = "your wifi password"


  // And then just render (with some boxes, because I think they look nice).
  place(
    top + left,
    dx: offset-x,
    dy: offset-y,
    rect(
      width: content-width,
      height: content-height,
      stroke: (dash: (2pt, 4pt)),
      place(center, [
        #v(10pt)
        = Get online:
        #v(20pt)
        #rect()[
          #net-qr(network, password)
        ]
        #v(60pt)
        #rect()[
          #pad(10pt, [
            = Network: #network
            == password: #password
          ])
        ]
      ]),
    ),
  )
}
