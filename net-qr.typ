// Create a nice, printable, frameable QR code for your network
// Need a package for rendering QR codes
#import "@preview/cades:0.3.1": qr-code

#set page(
  paper: "a5",
)

// I like Roboto - you may need to install it.
// From google fonts: https://fonts.google.com/selection?preview.text=Network:%20Tea%20Town
#set text(
  font: "Roboto",
)

#let boolToStr(b) = {
  if b { "true" } else { "false" }
}


// This function does all the trickery.
// It's just magic - although not all that hard to parse.
#let net-qr(network, passcode, encryption: "WPA", hidden: false, debug: false) = {
  assert(
    encryption in ("nopass", "WPA", "WEP"),
    message: "encryption must be one of: \"nopass\", \"WPA\", \"WEP\"",
  )

  let code-string = (
    "WIFI:T:"
      + encryption
      + ";S:"
      + network
      + ";P:"
      + passcode
      + ";H:"
      + boolToStr(hidden)
      + ";;"
  )

  [
    #qr-code(code-string)
    #if debug { code-string }
  ]
}


// Fill in your details below:
#let network = "Your wifi network name"
#let password = "your wifi password"


// And then just render (with some boxes, because I think they look nice).
#place(center, [
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

