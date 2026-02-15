#import "@preview/cades:0.3.1": qr-code

#set page(
  paper: "a5",
)

#set text(
  font: "Roboto",
)

#let boolToStr(b) = {
  if b { "true" } else { "false" }
}

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

#let network = "Your wifi network name"
#let password = "your wifi password"

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

