# WIFI QR codes in typst


Create a nice, printable, frameable QR code for your network

We need a package for rendering QR codes. Thank you to [cades](https://typst.app/universe/package/cades/) for that.

I also use [Roboto](https://fonts.google.com/specimen/Roboto) for this template, because I like the way it looks.


### Some background

WIFI QR codes have been around for a while now. Your operating system can probably generate them for you - the feature is builtin for windows and several linux distros. I haven't checked for mac, but there's a good chance they do too.

I think it's nice to have a printed copy of this kind of thing to put out for visitors. It just feels a bit posher - like you've thought about your guests. So I needed an image I could print.

There are sites that will generate the codes for you, like this one:

https://www.qr-code-generator.com/solutions/wifi-qr-code/

But they hide what they are doing, and might even charge you for a 'print quality' version - which is a total scam!

WIFI QR codes are very simple. So simple in fact that you can implement them in typst, assuming you have access to a QR code generator. I reverse engineered the function that generates these.

Feel free to steal the code for this and to modify it however you like. You shouldn't have to pay for something as easy as this. If you customise it to get some totally rad version that looks 10x better, drop me a line - I'd love to see it (and maybe steal it for myself).