#{
  import "net-qr.typ": net-qr

  set page(margin: 0cm)
  set text(
    font: "Roboto",
    size: 8pt,
  )

  // Fill in your details below:
  let network = "Your wifi network name"
  let password = "your wifi password"

  grid(
    columns: 2,
    rows: 1fr,
    stroke: 1pt,
    inset: 5pt,
    align: center + horizon,
    ..range(2 * 5).map(n => grid(
      columns: (1fr, 1fr),
      [
        #net-qr(network, password)
      ],
      [
        #text(size: 14pt, underline[Get Online:])

        = #underline[Network]: #network

        == #underline[password]: #password
      ],
    ))
  )
}
