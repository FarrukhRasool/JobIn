Dear dexter health team,

dexter.sis has to turn a spoken resident assessment into a structured record that holds up against the Expertenstandards, the paperwork side of the nursing shortage your site puts at roughly 500,000 by 2035. I built an MCP server for my Master's that faced the same kind of problem: an LLM decides what to do, and a deterministic fallback catches it when that decision is wrong.

That server sits behind a children's story app. It reads the child's request and decides for itself whether to generate a new story, pull a classic from Project Gutenberg, or combine both. The fallback is a fixed decision policy that takes over whenever the LLM's reasoning fails, so the app always has a story to hand back. It runs on a self-hosted Ollama instance serving Mistral, which keeps every prompt on the machine rather than sending a child's input to a third party.

At Verimi I automated spec-driven development across Claude and Codex for the iOS team, so I already do daily what your posting asks for rather than needing to pick it up. Your product also plugs into MediFox, Connext Vivendi and myneva by API instead of replacing them. The SDKs I built at Verimi solved a similar problem in a different domain: they had to work inside someone else's app rather than owning the whole stack.

Everything I have shipped to production is Swift, not Python, and the backend above is personal project work rather than paid experience.

I would like to talk about where you need that same mix of generation, validation and fallback next, whether that is in dexter.sis or dexter.qm. The story app's backend is on GitHub if it helps to see how the fallback logic is built.

Best regards,
Farrukh Rasool
