---
layout: meeting-minutes.hbs
date: 10.10.2017
time: 17:00 - 18:15
minute-taker: rzimmerm
---

## Attendees

- Fabian Hauser, fhauser
- Raphael Zimmermann, rzimmerm
- Prof. Dr. Farhad Mehta, MeF

## Agenda

1. Present current Project status
2. Discuss results of language evaluation
4. Discuss revised concept and requirements
3. Date and time for next meeting


## Discussion / Decisions

1. Present current Project status
  - We are mostly on plan
  - Exception: We stopped with research and focussed on describing the requirements/
2. Discuss results of language evaluation
  - Using Rust is fine, MeF sais, that in the ind it's our decision.
  - The argumentation seems reasonable.
  - MeF thinks it is a good idea to try it out quickly to fail fast.
  - Ocaml, Java or Python might be a fallback in the worst case
3. Date and time for next meeting
  - The next Meeting takes place on 20.10.2017 at 16:00 at MeFs office.
4. Discuss revised concept and requirements
  - MeF gave general feedback of the document so far:
      - The format and layout is fine
      - The Requirements are fine, although we should clarify that requirements are vague on purpose (Wishlist)
      - A simple formal description is missing
        - Add diagrams and a more high level description (e.g. using the C4 Model)
        - What are the responsibilities of each component? How are paths/file names and versions stored?
        - This must be priority no. 1 for our next steps.
      - Discussion of n-Replication vs. m-Replication is not coherent (Storage is cheap!)
        - Discuss this as well as other possible strategies using the morphological box tequnique
      - Remove examiner from the title sheet
  - We presented the refined concept to MeF. The following points came up:
      - Discuss Hash-Collisions: Is it even possible? How to handle it? (30' research)
      - Is Git really no option as a storage / transport backend / protocol? (30' research)
      - Discuss the reason for time in the system and potential risks of it
        - What about Infinite expiration
        - Why not "mark as not so important" so we can clean things up if we come close to the storage capacity

## Open issues

_open issues must be completed before the next meeting_

- Clarify that requirements are vague on purpose ([REDPRO-68](https://project.redbackup.org/browse/REDPRO-68))
- Remove examiner from the title sheet ([REDPRO-67](https://project.redbackup.org/browse/REDPRO-67))
- Create diagrams for better understanding the concept. ([REDPRO-62](https://project.redbackup.org/browse/REDPRO-62), [REDPRO-63](https://project.redbackup.org/browse/REDPRO-63), [REDPRO-64](https://project.redbackup.org/browse/REDPRO-64))
- Describe the responsibilities of each component ([REDPRO-63](https://project.redbackup.org/browse/REDPRO-63))
- Discuss possible strategies using the morphological box tequnique ([REDPRO-69](https://project.redbackup.org/browse/REDPRO-69))
- Discuss Hash-Collisions ([REDPRO-70](https://project.redbackup.org/browse/REDPRO-70))
- Clarify if git is an possible storage backend ([REDPRO-71](https://project.redbackup.org/browse/REDPRO-71))
- Discuss the need of physical time in the system and potential risks of it ([REDPRO-72](https://project.redbackup.org/browse/REDPRO-72))

## Upcoming absences

- Raphael Zimmermann, Friday 27. October.

## Next Meeting

- [The next Meeting takes place on 20.10.2017 at 16:00 at MeFs office](../2017-10-20-weekly-meeting)
