Dear PAYBACK team,

PAYBACK opened the Berlin office in 2023 to build a product and tech team for e-commerce. The announcement named iOS and Android developers among the hires. Three years later, this posting is that same hire. The app is still shipping fast: the AI-powered search feature went live in June.

Your posting asks for someone who maintains and improves the Jenkins pipelines. At PakWheels I built one end to end. Every pull request triggered a Jenkins job that called Fastlane to build a staging IPA. The job published it over the air and posted a QR code into both the GitHub pull request and the Jira ticket, so reviewers and QA installed the branch by scanning it rather than asking me for a build. I wrote this pipeline. I did not inherit it.

Filtering and selecting across a large partner catalogue is most of what your app does. That is exactly what I built at PakWheels, using Combine to bind 18 filter dimensions to a staged filter model that derived the selected chips automatically instead of updating them by hand at each site. The other half of what you are asking for is keeping a large modular app coherent. At Verimi I own an identity SDK that AOK and BARMER each integrate on their own release cycle. Neither changes for me. Your companion Android posting mentions more than 50 modules, so I expect the iOS app leans on a similar structure.

The one gap I should name is TCA (The Composable Architecture). I have not used it, but I have shipped MVC in production for four years and expect to pick it up quickly.

I am based in Munich. I would welcome a conversation about how this role fits into PAYBACK's growing Digital Sales side.

Best regards,
Farrukh Rasool
