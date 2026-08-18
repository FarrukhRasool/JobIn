Dear N26 team,

For the last year I have built identity verification inside AOK and BARMER, two of Germany's largest health insurance apps. Regulated German consumer software, which I expect is the part that carries over.

The SDK behind that work is integrated separately by both insurers. One API surface against two host apps whose release calendars I do not control. The eID card scanning runs through the official Ausweis SDK, once for AOK and again for the Verimi Wallet. I implemented certificate pinning on BARMER's TAK libraries.

Before Verimi I spent two and a half years at PakWheels, a car marketplace with millions of users. I built the checkout and payment screens there as shared SwiftUI components inside a module called FeaturesKit. That is the payment UI layer rather than gateway integration. Over the same period the app held a crash-free rate above 99% while launch time came down 20%.

I am in Berlin and happy to talk whenever suits.

Best regards,
Farrukh Rasool
