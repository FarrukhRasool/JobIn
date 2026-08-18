---
company: Code Compass
role: Machine Learning Engineer
source: linkedin
url: https://www.linkedin.com/jobs/view/4445515701/?alternateChannel=search&eBP=CwEAAAGfzlSwTnqhPeLEs3emCVHM2JI1Ob6NIqEg0FYuBzd-HJY5xVpUIlaYGc7_4HBIYl5ypmM8iOQl7SFdrg2XFTZTzTqrI7N7RSag8cgVlZyyazoET7YkRo7aU1807NOLU_mlRYsum-bFLHyXisEUsSEamWQNuS-KlXTjRDCS6qJMrnw4rOPlJ0i9mmw9xlTkOy3T-Yx_tpxGCQf7D2Dgpdi33tAb4xTrboMb21cl_LeHzwFpS0j-C2hlnQwNfTWa9Im3qTQNUeuALsIr4C5NETJSu-OkygvxDjPbE6ZzjxaV30k-0b_cKc4YflGxAAHDXl-KBTrW5fg3HoFvTpBFojEE5csabaptrD6kQldwGaxvXhmtJbpyP55MmO-BEtzuB7xlgaWPpu4-W07-yxK3tvY5Wp2sPbDm5VQ0cgYMBHm0dufsd4bnmF3haKCqRqB8MBEAxe4WcvQAz2wWUDl-HHXbH-XFsX6tinVmhiH_4cPg_2V3cpg&trackingId=74KmoqmeJEbA7Ofk92xN1Q%3D%3D
posted: 2026-07-31
imported: 2026-08-04
location: Berlin, Germany
work_model: hybrid
language: UNKNOWN
seniority: mid
---

## Requirements

"Several years of hands-on ML and computer vision experience"

"Strong Python development with PyTorch or TensorFlow frameworks"

"Practical experience with generative AI technologies including diffusion models and GANs"

"Understanding of ML deployment, scalability, performance optimization in production"

"Docker and cloud-based infrastructure experience"

"Knowledge of creative AI tools and visual content workflows"

"Image-based products or digital content platform experience"

"Strong analytical thinking with pragmatic, solution-oriented approach"

"Effective communication in international cross-functional environments"

## Responsibilities

"Develop, train, and optimize ML models for computer vision and generative AI applications"

"Build and deploy scalable ML solutions into production environments"

"Design automation solutions reducing manual effort and improving operational efficiency"

"Monitor model performance and identify enhancement opportunities"

"Collaborate with engineering, product, and operational teams on AI-driven solutions"

"Research emerging technologies and evaluate their business suitability"

"Contribute to production-grade ML infrastructure and workflow evolution"

## Tech stack

Python, PyTorch, TensorFlow, Computer Vision, Generative AI, Diffusion Models, GANs, Image Processing, Docker, Cloud Platforms

## Notes

LinkedIn's own seniority filter labelled this posting "Mid-Senior level". The requirements text itself does not give a specific years figure, only "several years of hands-on ML and computer vision experience". Per the banding rule, the floor of the stated band ("mid") is recorded, not "senior".

No explicit language requirement is stated anywhere in the posting. One requirement line asks for "effective communication in international cross-functional environments", which implies English is the working language, but this is an inference, not a stated requirement, so `language` is marked UNKNOWN rather than `english`.

The posting listed a salary range of EUR 50,000 to EUR 70,000 plus benefits. Per CLAUDE.md, salary is not a tracked field in this pipeline, so it is not carried into frontmatter. It is preserved in the Raw section below for reference only.

The WebFetch tool returned the requirements and responsibilities as a structured extraction rather than a raw HTML dump. The bullet wording above is reproduced as returned by the fetch and is believed to closely track the original posting's phrasing, but true byte-for-byte verbatim capture could not be confirmed with the single permitted fetch attempt. Treat exact keyword matching against this record with that caveat in mind.

Company name appears on LinkedIn with a compass emoji, "Code Compass 🧭". Recorded here without the emoji for the slug and frontmatter.

## Raw

<details>

**Company Name:** Code Compass

**Role Title:** Machine Learning Engineer

**Location:** Berlin, Germany

**Work Model:** Hybrid

**Language Requirements:** Not explicitly stated. Implies English proficiency for "international and cross-functional" collaboration

**Seniority Level:** Mid-Senior level

**Posted Date:** 4 days ago (relative to fetch on 2026-08-04, calculated as 2026-07-31)

**Responsibilities:**
- Develop, train, and optimize ML models for computer vision and generative AI applications
- Build and deploy scalable ML solutions into production environments
- Design automation solutions reducing manual effort and improving operational efficiency
- Monitor model performance and identify enhancement opportunities
- Collaborate with engineering, product, and operational teams on AI-driven solutions
- Research emerging technologies and evaluate their business suitability
- Contribute to production-grade ML infrastructure and workflow evolution

**Requirements:**
- Several years of hands-on ML and computer vision experience
- Strong Python development with PyTorch or TensorFlow frameworks
- Practical experience with generative AI technologies including diffusion models and GANs
- Understanding of ML deployment, scalability, performance optimization in production
- Docker and cloud-based infrastructure experience
- Knowledge of creative AI tools and visual content workflows
- Image-based products or digital content platform experience
- Strong analytical thinking with pragmatic, solution-oriented approach
- Effective communication in international cross-functional environments

**Tech Stack:** Python, PyTorch, TensorFlow, Computer Vision, Generative AI, Diffusion Models, GANs, Image Processing, Docker, Cloud Platforms

**Compensation:** EUR 50,000 - EUR 70,000 + Benefits

</details>

## Score

**Total: 59 / 100. APPLY, long shot** *(language UNKNOWN, so the 70 cap applies but does not bind, since the raw score of 59 already sits below it)*
Track: ai-engineer

| Dimension | Score |
|---|---|
| Technical fit | 20/40 |
| Seniority fit | 15/20 |
| Track clarity | 15/15 |
| Company fit | 5/15 |
| Application quality | 4/10 |

**Why this score.** The foundational overlap is real: Python, PyTorch and TensorFlow are all `strong` (Deep Vision, the ResNet50 versus Vision Transformer comparison), and computer vision itself is evidenced twice over, once academically (Deep Vision, CNN, ViT) and once in a systems context (RosBot SLAM, OpenCV HSV segmentation). Track clarity is a clean 15, this is a pure ML/CV role with no mobile component, so ai-engineer is the only sensible choice and there is no PRIORITY-both case to make. But the requirements that actually define this specific role, generative AI with diffusion models and GANs, "creative AI tools and visual content workflows", and an "image-based product or digital content platform", have no evidence anywhere on the profile. Farrukh's ML work is classification and perception (ResNet50/ViT comparison, SLAM) and text-based LLM tooling (Bedtime Story Teller, Ollama, Mistral), not generative computer vision. That is a different specialism, not an adjacent one, which is why technical fit lands in the "needs a real leap" band rather than "strong overlap, one or two learnable gaps".

**Gaps.** Per this posting's own instructions, treat these as real rather than as questions to ask, since they are specialist generative-vision techniques outside anything plausibly inside four years of iOS production work:
- **Diffusion models and GANs**, named directly in the Requirements. No entry anywhere in `skills.md`, not even at `ask`. This is the core of "practical experience with generative AI technologies" and there is nothing to answer it with.
- **Docker**, named in the Requirements ("Docker and cloud-based infrastructure experience"). Rated `ask` in `skills.md`, sourced only from `tracks/ai-engineer.md` with no CV evidence. Per the evidence rule, `ask` scores zero and cannot reach a CV without confirming with Farrukh first.
- **Cloud-based infrastructure experience.** No entry in `skills.md` at all. Not the same category as iOS shipping, so treated as a genuine gap rather than an absence-is-not-evidence question.
- **"Creative AI tools and visual content workflows" and "image-based products or digital content platform experience".** Nothing on the profile evidences work on a content or creative-media product specifically. Deep Vision and RosBot are both perception, not content generation or a product surface.
- **"Several years of hands-on ML and CV experience"** in a production, professional sense is a stretch read charitably. His ML depth is an M.Sc., one strong coursework project (Deep Vision) and personal projects (Bedtime Story Teller, RosBot), not several years of paid, production ML work. iOS is where the several-years professional claim actually holds.

**Risks.**
- **`language: UNKNOWN`.** Neither the posting nor the research file resolves whether the actual working language is English or German. The posting's "effective communication in international cross-functional environments" line implies English but is an inference, not a stated requirement. Confirm before applying.
- **Agency listing, end client unnamed.** Code Compass is a recruitment agency (VERIFIED, `jobs/research/code-compass-machine-learning-engineer.md`), and the actual employer behind this Berlin role is not named anywhere. No stage, funding, culture or engineering-practice signal exists to tailor against, and this is the third agency-fronted posting to reach the pipeline recently. This is the main driver of the low Company fit score, not any single negative fact, there is simply nothing to weigh.
- Whether this is a permanent direct hire or a contract placement is not stated anywhere.
- The concurrent Code Compass "Software Engineer AI" posting near Frankfurt may or may not share the same end client. Unconfirmed either way.

**Lead with.** The Deep Vision project (ResNet50 versus Vision Transformer comparison, built across PyTorch, TensorFlow and Keras) is the closest technical match on file and should open the technical story. Pair it with RosBot's OpenCV-based perception work to show computer vision breadth beyond a single coursework project. The letter has to be honest that diffusion models and GANs are new ground rather than implying hands-on production experience with them, and the strongest available bridge is the M.Sc. plus the pace at which he picked up PyTorch, TensorFlow and Keras together for Deep Vision. This is not a posting where the dual iOS/AI profile helps, the role has no mobile component, so the letter should not spend space on iOS at all.
