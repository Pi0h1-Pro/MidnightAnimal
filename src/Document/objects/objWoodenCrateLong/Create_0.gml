/// @description Initialise breaking.

// Inherit behaviour from objBreakableParent.
event_inherited()

// Life of the object.
life = 3 + random(2)
type = 1

// Number of fragments to spawn.
fragments = irandom_range(50, 60)

// Do not flash if hit.
flash = false
color = c_red

// Shake if hit.
shake = 1

