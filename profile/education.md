# Education

**Pick from here when tailoring.** The degrees, institutions and dates are fixed and live in `cv-skeleton.typ`. The project bullets below are a pool, chosen and ordered per posting.

`projects.md` holds the deep version of several of these, for letters and interview briefs. This file holds the one-line CV form.

## M.Sc. Artificial Intelligence for Industrial Application

**OTH Amberg, March 2025 to present.** Coursework complete, thesis outstanding. The CV states `Mar. 2025 - present` and that wording does not change.

Six bullets available, and a CV should carry three to five. Lead with whichever the posting makes relevant.

| Bullet | Sells | Use when |
|---|---|---|
| `*Agentic AI :* iOS application with interacting AI agents who tell stories.` | iOS **and** AI together | Any posting naming agents, LLMs or AI features in an app. The only bullet that is both tracks at once |
| `*Embedded Intelligence :* Indoor Navigation Mobile App (BLE signal).` | mobile, sensors, on-device | Sensor work, BLE, indoor positioning, on-device inference |
| `*Deep Vision :* Image classification using CNNs and Vision transformers.` | computer vision | Vision, imaging, classification. Closest thing to medical imaging |
| `*Deep Vision :* Image classification with CNNs and Vision transformers, built in *TensorFlow* and *PyTorch*.` | frameworks, named | **Use this variant when the posting names a framework.** Puts TensorFlow and PyTorch in the main column, where they survive a parser that drops the sidebar |
| `*Scene Detection :* Deep Vision application built for smart home systems.` | applied CV, IoT | Smart home, IoT, applied vision |
| `*Agent-Based Modeling :* Multiagent system for studying emergent behaviour from the interactions between agents.` | simulation, research depth | Research-flavoured or simulation postings. Long, costs a line |
| `*Autonomous Robot :* RosBot, autonomous maze navigation using SLAM.` | robotics, SLAM, systems | Robotics, autonomy, SLAM, spatial reasoning |

### Corrections applied 2026-07-30

The master carried three defects in these bullets. Fixed here and in the skeleton.

- **`Autonomous Robot : RosBot which`** was a truncated sentence that shipped on four CVs. Now reads `RosBot, autonomous maze navigation using SLAM.`
- **`Naviagation`** was misspelled. Now `Navigation`. A misspelled word cannot be matched by an ATS at all, per the guideline in `tailor-cv`.
- **`application build for`** should be `built for`.

## BSc Software Engineering

**University of the Punjab, October 2018 to July 2022.**

Four bullets, all coursework projects, all low signal against four years of employment. **Default to showing none of them.** They exist for the rare posting that names one of these stacks, and as filler if a CV runs short.

| Bullet | Use when |
|---|---|
| `Online Hotel Reservation System : MERN stack.` | The posting names React, Node or full stack |
| `Scientific Calculator : Android Mobile application using JAVA.` | The posting names Android or Java. **The only Android evidence anywhere on the profile** |
| `Point of Sale : Developed in .NET, using WPF.` | The posting names .NET or C# |
| `Maze Runner Game : Developed in C++ using MFC.` | The posting names C++ |

The Android bullet is worth knowing about. `skills.md` marks Kotlin and Android as deliberately absent, and this is the one thing that would support a cautious mention.

## What is fixed and never changes

- Degree titles, institutions, and dates
- The M.Sc. showing `present` rather than a completion date
- Education carries no accent bar. `#main-head("Education", bar: false)`
