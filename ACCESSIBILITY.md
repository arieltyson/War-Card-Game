# Accessibility

High Card is a small iOS SwiftUI card game.

## Current implementation and limitations

The [game screen](War%20Card%20Game/ContentView.swift) displays Player and
CPU scores as text using semantic font styles.

Cards and the deal button currently use image assets without explicit
spoken card values or a descriptive accessibility label for the deal
action. Score changes are not explicitly announced. These are barriers to
review before claiming that the game can be played with VoiceOver.

Full accessibility support is not established. Validate dealing cards,
understanding both card values and the round result, and reading scores
with assistive technology. Check larger text, contrast over the background
image, Voice Control, and Switch Control on devices.

## Report an accessibility problem

[Open an issue](https://github.com/arieltyson/War-Card-Game/issues/new) describing
the affected screen, steps to reproduce, expected and actual behaviour,
and the app version or commit. Include your device, iOS version, and
relevant assistive technology or accessibility settings.
