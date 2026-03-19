// Need a package for rendering QR codes
#import "@preview/cades:0.3.1": qr-code

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
