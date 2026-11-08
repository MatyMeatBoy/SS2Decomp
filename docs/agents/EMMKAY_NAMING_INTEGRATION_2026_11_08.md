# Emmkay naming integration, 2026-11-08

This integration preserves the author commits of PR764 through PR770 and adds
32 reviewed game-function identities. All addresses were previously unidentified;
the batches are mutually disjoint and no existing catalog row is replaced.
Canonical ROM symbols, C/ASM, types and matching progress remain unchanged.

| PR | Scope | New identities |
| --- | --- | ---: |
| 764 | Klantol NPC dialogue callbacks | 9 |
| 765 | Klantol Times trade dialogue callbacks | 5 |
| 766 | Fender, Reed and Wanby dialogue callbacks | 3 |
| 767 | Jensen and Dign/Balarha/Vivi dialogue callbacks | 2 |
| 768 | Zavi trade callbacks and Captain Robert's area entry | 4 |
| 769 | Oswald, Vaitali and Boken area entry | 3 |
| 770 | Castle, temple and rest actor interactions | 6 |

Two independent reviews checked the configured entries, matched source and
callback registrations against main3e4e65f3. Private EU-ROM checks verified the
relevant dialogue identities and area-entry callback pointer words. Dialogue text
supports character identities; behavior and selection limits come from code.

Six evidence paragraphs were corrected without changing the proposed names:

- Bakatar counts/removes kind3, ID0x15; Keita uses kind2, ID0x38.
- Both Zavi variants rescan after confirmation, clear only kind/id halfwords
  of up to three then-matching records, and attempt an item addition whose
  result is ignored. Displayed offer counts do not override code behavior.
- The rest interaction starts its task only when a control is free and replaces
  an actor callback only when the actor lookup succeeds.
- Boken's link-error test ends an inner one-wait counter, not the enclosing
  enemy/barrier loop.

The final catalog passes report generation and preserves all earlier rows.
Normal EU ROM comparison, the full NONMATCHING build and repository checks are
required before integration. These are semantic-name additions, not newly
matching functions or proof of successful multiplayer delivery.
