Dear hiring team,

Most iOS postings ask for Swift and SwiftUI. Yours asks for something narrower: the interaction patterns around AI features. Loading states and retries. What a user sees while a model is thinking. That is the problem I have spent my own time on.

I built Bedtime Story Teller, an AI story app for children. A SwiftUI client talks to a FastAPI backend running a local LLM through an MCP server. The backend decides for itself where each story comes from. It generates one or pulls a named classic out of Project Gutenberg. When that reasoning fails it drops to a deterministic policy, so the feature degrades rather than breaks.

The part your posting really describes is what happens next. The response carries the source the model picked and its reason. The client shows both to the reader. An AI feature that hides its reasoning feels arbitrary and people stop trusting it. That fix cost one field in a response model.

Building it is one thing. Shipping it to people who did not volunteer for an experiment is another. At Verimi I ship SwiftUI into AOK and BARMER, two of Germany's largest health insurance apps. I also automated our Spec-Driven Development loop across Claude and Codex, so the AI work is not only a side project. At PakWheels I held a crash-free score above 99% on a marketplace with millions of users while running the feature flags and A/B tests that decided what shipped.

I am finishing an M.Sc. in AI. Image classification with CNNs and vision transformers. A robot that maps a maze it has never seen. The ML is real, but it is training and comparing models rather than running them on a phone. I have TensorFlow and PyTorch rather than CoreML. Nor have I done background task work in the sense your posting means.

I would like to know which company this is for and what the AI features actually do. That would tell me whether the hard part is the model, the interaction or the scale.

Best regards,
Farrukh Rasool
