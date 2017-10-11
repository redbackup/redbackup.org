---
layout: meeting-minutes.hbs
date: 29.09.2017
time: 16:15 - 17:15
minute-taker: rzimmerm
---

## Attendees

- Fabian Hauser, fhauser
- Raphael Zimmermann, rzimmerm
- Prof. Dr. Farhad Mehta, MeF

## Agenda

- Updates concerning the revised project plan
- What kind of JIRA-Reports (Timerecords) must we provide?
- Date and time for next meeting
- Presentation of the first implementation drafts

## Discussions / Decisions
- Updates concerning the revised project plan
  - The plan looks good
  - Not everything is expected in the described quality.
  - MeF noted the following issues: 
    - MeF is not superior in the project but an advisor
    - The budget for supervision meetings is too high (we might switch to bi-weekly meetings in the second half of the semester)
    - Risk Management is fine with one exception: The risk concerning the technical concept is incorrect or incomplete (similar to "Missing Architecture Aspects")
    - Use `\LaTex` instead of `LaTex`
    - Include a graphic describing the mentioned GitHub-Flow (e.g. a State Diagram)
- What kind of JIRA-Reports (Timerecords) must we provide?
  - We created a guest account (as described in the wiki)
  - We also added links to personal time logs on the [overview site](https://www.redbackup.org/overview/)
  - This is sufficient for MeF.
- Date and time for next meeting
  - 10.10.2017, 17:00-17:40, Room 1.167.
- Presentation of the first implementation drafts
  - Despite the problem statement, we had a different views on how the data is distributed and replicated.
  - The described concept is too complex for a reliable backup system and too ambitious for a study project.
  - In order to find a simpler architecture, the assumptions and requirements must be stated more explicitly (e.g. "Node A must be able to ...", "The client is responsible for ...")
    - Sketches and bullet points are sufficient for now 
  - The high-level architecture is fine, but the distribution component must be simplified

## Open issues

_open issues must be completed before the next meeting_

- revise project plan ([REDPRO-27](https://project.redbackup.org/browse/REDPRO-27))
- describe the requirements and assumptions for the architecture 

## Upcoming absences

_no upcoming absences_

## Next Meeting

- [Weekly Meeting with MeF at 10.10 17:00 at his office](../2017-10-10-weekly-meeting)
