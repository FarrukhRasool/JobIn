# Jobgether, Mobile Engineer (iOS)

Researched: 2026-07-30

Sources:
- https://www.linkedin.com/jobs/view/4443204371/
- https://jobgether.com/about-us
- Tracxn and Dealroom company profiles

## The finding that shapes everything else

**Jobgether is not the employer.** VERIFIED from their own about page and confirmed by Tracxn: *"all listings are posted by Jobgether on behalf of partner companies, who manage all applications and next steps."*

They are an AI-driven remote job matching platform, founded 2020 in Brussels, seed-funded at $1.48M in March 2023. The actual employer behind this posting is **not named**.

Per `company-brief`, an intermediary advertising an unnamed client means there is nothing to research. No vision, no stage, no engineering culture, no codebase, no other open roles to read for stack signal. That is not a gap in the research, it is the situation.

## What can still be known, from the posting alone

VERIFIED, all from the posting text:

**The product is an AI-powered mobile app.** The responsibilities name building AI features against backend APIs, designing interaction patterns for streaming, loading states, retries and error handling, and capturing user behaviour to evaluate AI models. That is a company shipping LLM or ML features into an iOS product, not a company with AI in its marketing.

**Stack.** Swift, SwiftUI, async/await, concurrency, background tasks, RESTful APIs, SQL/NoSQL. CoreML, TensorFlow Lite or on-device ML listed as advantageous. Feature flagging, remote config and experimentation frameworks as a bonus.

**Shape.** Fully remote, Germany, mid-senior, 3+ years. No language requirement stated, and the posting is in English.

## For the cover letter

**There is no company to open on**, which removes the strongest move available. A letter here cannot pass the swap test in the usual way, because there is no name to swap.

The honest substitute is to open on **the problem** rather than the employer. The posting describes building AI features into an iOS app with interaction patterns for streaming, retries and error states, which is an unusual and specific thing to have already done. Bedtime Story Teller is a SwiftUI client against a Python backend running an LLM that selects its own source, and the client surfaces that routing decision to the user. That is the same problem, built.

VERIFIED from `profile/projects.md` and the repositories.

## Concerns

- **No named employer.** Cannot assess stage, funding, culture, team size, or whether the role survives contact with reality. Applying means accepting that unknown.
- **An intermediary adds a step.** Jobgether manages the match, the partner company manages the process. Slower, and less signal either way.
- **On-device ML is listed as advantageous and he does not have it.** TensorFlow, PyTorch and Keras are evidenced by the Deep Vision project, but that is model training and comparison, not CoreML or TensorFlow Lite running inference on a phone. Do not blur those.
- **Background tasks** are named in the requirements and nothing on the profile evidences them.
- **Streaming** appears in the responsibilities. `StoryTeller` contains `Streaming.swift`, but that file carries HeyGen's author header. **Must not be claimed**, per `profile/projects.md`.

## Open questions

- Who is the actual employer, and what is the product?
- Is the AI work LLM integration, on-device inference, or both?
- What does "background task experience" mean here specifically?
- How many rounds, and does the partner company or Jobgether run them?
