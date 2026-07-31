# Project bank

Pull from here when tailoring. Each entry carries a one line hook, a technical depth paragraph, and the roles it sells.

The RosBot entry is written out fully as the reference standard. Bring the others up to this depth as you use them.

---

## Autonomous RosBot, maze navigation with SLAM

**Repo** github.com/FarrukhRasool/Autonomous-Robot
**Sells** AI Engineer, Robotics, Computer Vision, ML Engineer
**Demo** `~/Desktop/Maze3_Run1.mp4`

**Hook.** A robot explores a maze it has never seen, builds its own map, finds two coloured targets in order, and avoids forbidden ground. No access to simulator ground truth.

**Depth.** Webots controller in pure Python driving a Husarion RosBot. FastSLAM 2.0 with 30 particles, each carrying its own log odds occupancy grid and refining its pose against that grid before weighting, which is the defining difference from FastSLAM 1.0. Mapping runs on a background thread at 10 Hz while motion prediction runs on the main control loop at 32 ms, sharing the grid under a lock that is deliberately released around the heavy per-particle distance transform. Frontier based exploration with BFS clustering and utility scoring. A* planning over a morphologically cleaned and inflated grid with a clearance penalty that pushes routes to corridor centres, then B-spline smoothing. Dynamic Window Approach for local control. HSV colour segmentation for target detection. Pose graph loop closure with correlative scan matching and least squares optimisation.

**Two problems worth telling in interviews.**

*Floating walls.* Some walls sit above the lidar scan plane, so lidar sweeps underneath and reports free space. Solved by projecting the depth camera's upper band per pixel and height gating to 20 cm. The elegant part is the cross check: lidar physically cannot see a genuine floating wall, so if lidar later confirms occupancy at a cell marked as floating, it was never floating and lidar is allowed to demote it.

*Phantom frontier.* The disc of floor directly under the robot sits inside the lidar's minimum range, so it is never observed and stays permanently unknown. Its boundary satisfies the definition of a frontier, and the utility function divides by distance, so a frontier at distance zero always wins. The robot chased a gap in its own map it could never fill. Fixed with a twelve pixel self exclusion ring.

**Honest limitations, say these before you are asked.** No automated evaluation harness, so results are qualitative. Runs are not reproducible because the RNGs are unseeded. Green avoidance is map mediated rather than reactive, and the final visual servo can in principle cross a green patch. Knowing your own system's weak points reads as senior. Hiding them does not survive follow-up questions.

---

## Deep Vision, ResNet50 versus Transformer
**Repo** github.com/FarrukhRasool/Deep-Vision | **Sells** ML Engineer, Computer Vision, deep learning frameworks

**Built with TensorFlow, Keras and PyTorch.** Confirmed by Farrukh on 2026-07-30. This is the evidence behind those three entries in `skills.md`, so they are safe to put on a CV. It is also the only place on the profile where a deep learning framework is named, which makes it the anchor for any ML posting.

An image classification comparison between a ResNet50 convolutional network and a Vision Transformer. Two architecture families on the same task, which is a more interesting thing to have done than training one model, because it means making and defending a comparison.

`TODO` Which dataset, what the comparison measured, and what you concluded. Without the conclusion this is a capability claim rather than a result, and an interviewer will ask which one won and why.

## Scene Detect, surroundings detection for blind users
**Repo** github.com/FarrukhRasool/Scene-Detect | **Sells** AI Engineer, applied ML, accessibility
`TODO` Strong narrative potential. Real user need, real constraints. Worth developing.

## Indoor Navigation with Smartphone
**Repo** github.com/FarrukhRasool/Indoor-Navigation-with-Smartphone | **Sells** AI Engineer, sensor fusion, mobile
`TODO` Pairs with RosBot as a localisation theme, and bridges both tracks.

## SwiftUI component packages
**Repos** JumpLinksSwiftUI, SegmentKit, CustomToggleViewKit, GenericGridLayout, InfiniteImageCarousellView
**Sells** iOS Developer, senior signal

`TODO` These matter more than they look. Publishing reusable packages with clean APIs is a different and more senior instinct than shipping screens. Lead with this for iOS roles.

## Dolidroid, SwiftUI in-app browser framework
**Private repo** | **Sells** iOS Developer, enterprise
`TODO` Framework design for enterprise web portals. Describe the API surface and who used it.

## TodoPharma
**Repos** FarrukhRasool/todopharma and artificizen-dev/TodoPharma_IOS | **Sells** iOS Developer, commercial delivery
`TODO` Client or employer work. Confirm what you may disclose before writing this up.

## MyPropertyFinder
**Private repo** | **Sells** iOS Developer
`TODO`

## Bedtime Story Teller, full stack AI product

**Repos** github.com/FarrukhRasool/bedtime-story-teller (backend) and github.com/FarrukhRasool/StoryTeller (iOS client)
**Sells** AI Engineer, LLM Engineer, iOS Developer, and **PRIORITY-both** roles
**Status** Public, both halves

**This is the strongest project you own for the current market.** Lead with it for any role mentioning LLMs, agents, MCP, or AI product work.

**Hook.** An AI bedtime story app for children. A native iOS client talks to a Python backend that runs a local LLM and decides for itself whether to generate a story, pull a classic from Project Gutenberg, or combine both.

**Backend depth.** FastAPI with a clean layered architecture, routers over services over models, not a single-file script. **Model Context Protocol server** exposing tools over a standard interface, with `/mcp/query` and `/mcp/tools` endpoints plus an OpenAI-compatible `/v1/chat/completions` route. Local inference through Ollama running Mistral, so nothing leaves the machine, which for a children's product is a genuine privacy argument rather than a technical preference. JWT auth with bcrypt and 30-day tokens. SQLAlchemy persistence for users, conversations and messages, with per-user isolated history. A real test suite split across api, services, and integration.

**The agentic part, which is the bit interviewers will care about.** The system does not hard-code where a story comes from. An LLM planning step reads the user's prompt and selects the source: AI generation for custom themes, Gutenberg for named classics, hybrid otherwise. There is a deterministic decision policy behind it as a fallback when the LLM reasoning fails. When a Gutenberg result turns out to be a collection rather than a single story, a second LLM pass picks the right story from it, so "a bedtime story about a duck" resolves to The Ugly Duckling out of Hans Andersen's Fairy Tales. Gutenberg text is returned byte-exact after boilerplate cleaning, so classics are never silently rewritten by a model.

**iOS client, and be precise about what is yours.** The repo started from HeyGen's `InteractiveAvatarDemo` sample app. The avatar streaming, `WebSocketManager.swift`, `Streaming.swift` and `ApiConfig.swift` carry HeyGen's original author headers. **Do not claim that work.** An interviewer who opens the file sees a different name in the header.

What is yours, from the file headers and the code itself:

- `BedTimeAPIs.swift`, the entire integration layer against your FastAPI backend. Signup, signin, story creation, conversation list, message history, delete. Alamofire with typed `Codable` models and `Result` completion handlers.
- JWT handling through `LoggedInUser.shared`, with bearer tokens attached per request.
- The `Views/SigIn/` and `Views/Conversations/` screens.
- `StoryCreateResponse`, which decodes `story_source`, `intent_decision_source`, `decision_reason` and `useGutenbergTool`. **This is the detail worth naming in interviews.** The client surfaces the backend's agentic routing decision to the user, so the app can show which source the LLM picked and why. That is thoughtful product design on top of an agentic system, and it is entirely your work.

**The honest pitch.** You integrated a third-party avatar SDK sample with your own LLM backend, and built the auth and conversation layer joining them. That is real integration engineering. It is not "I built a streaming WebSocket client", and the difference matters in an interview.

**Why this sells better than anything else you have.** It is the rare portfolio piece that proves three things at once: you can build agentic LLM systems with real tool selection, you understand production backend structure with auth and tests, and you can ship the native client on top. Most AI candidates have notebooks. Most iOS candidates have no ML. You have a working product spanning both.

**Lead with the backend.** `bedtime-story-teller` is the repo to send. It is documented, it is entirely yours, and the MCP and agentic routing work is the part the market wants. Mention the iOS client as the front end that consumes it, and link it second.

**Known state of the iOS repo, deliberately left as is.** Empty README, Xcode project still named `InteractiveAvatarDemo`, backend URLs hardcoded to `http://localhost:8000`, and a HeyGen key in `ApiConfig.swift`. Farrukh is aware and has chosen to leave it, it is a free-tier key on a public demo. Do not raise it again, and do not edit that repo.

Practical consequence for applications: anyone who opens `StoryTeller` cold learns nothing about it. So when the iOS side matters, explain it in the letter or the CV bullet rather than relying on the repo to speak for itself.

**Honest limitations to volunteer in interviews.** Hybrid story mode falls back to plain AI generation rather than genuinely combining sources. No rate limiting. The backend README's own roadmap names these, which is good practice, so say them before you are asked.
