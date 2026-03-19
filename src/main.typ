#{
  import "net-qr.typ": net-qr

  set page(
    paper: "a5",
  )

  // I like Roboto - you may need to install it.
  // From google fonts: https://fonts.google.com/specimen/Roboto
  set text(
    font: "Roboto",
  )

  // Fill in your details below:
  let network = "Your wifi network name"
  let password = "your wifi password"


  // And then just render (with some boxes, because I think they look nice).
  place(center, [
    = Get online:
    #v(40pt)
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
  ])
}


