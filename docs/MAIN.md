# Sparkles' Documentation
## Table of Contents
1. How to install it?
2. Getting started
	- Requirements
	- Create a "show-runner" entity
	- Load a timeline into the show-runner
	- Launching a show
	- Example
3. Component
	- Basic data values
	- How to test your component
4. Shells
	- Firework data values (type: 1)
	- Beam data values (type: 3)
	- Fountain data values (type: 4)
	- Comet data values (type: 5)
5. Library
	- Why a library?
	- Content
		- Particle IDs
		- Particle Options

## How to install it?

Download the latest version (on PMC or Github) and place it into your `datapacks` world's folder.

Then, add its library `Sparkles-library` (more on that later).

After uploading these datapacks, reload your world/server by performing the `/reload` command.

Therefore, you're all done: you can now use Sparkle for your performances!

## Getting started

### Requirements

To completely understand the ongoing, you'll have to know about:
-   [`/summon`](https://minecraft.fandom.com/wiki/Commands/summon) command,
-   [`/data`](https://minecraft.fandom.com/wiki/Commands/data) command,
-   the [NBT's format](https://minecraft.fandom.com/wiki/NBT_format).

### Create a "show-runner" entity

It stores the timeline's data and the show's origin point.

*For technical reasons, the entity type can only be a [`marker`](https://minecraft.fandom.com/wiki/Marker).*

Summons a simple marker with a [tag](https://minecraft.fandom.com/wiki/Tag):
```
/summon marker [<pos>] {Tags:[<your tag·s>]}
```

For debug purposes, as the marker is always invisible, you can mount it on an Armor Stand:
```
/summon armor_stand [<pos>] {Passengers:[{id:"minecraft:marker",Tags:[<your tag·s>]}]}
```

"tl;dr" main idea is to summon a marker that you can select later.

### Load a timeline into the show-runner

A timeline contains all your components and their place in the show.

Its placed inside `data.timeline`:
```
/data modify entity <show-runner> data.timeline set value <timeline>
```

### Launching a show

When you're all done loading the show, you can launch it.

For that, execute this command:
```
/execute as <show-runner> at @s run function #jw-s:launch
```

### Example

Here is an example to illustrate it:
```
/summon marker 0 0 0 {Tags:["show","foobar"]}
/data modify entity @e[tag=show,tag=foobar] data.timeline set value [{type:1,sound:{launch:3},shell:{Silent:1,LifeTime:20,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;14359060]}]}}}},delay:20}]
/execute as @e[tag=show,tag=foobar] at @s run function #jw-s:launch
```

(be sure to kill the marker after: `/kill @e[type=show,tag=foobar]`)

## Component

A show without its effects is nothing. Components are the main to master before creating a synchronized concert of "sounds and lights";

### Basic Data values

💠__Component Data__
-  [🔢] **type**: define the behavior of the effect. (1: firework | 3: beam | 4: fountain | 5: comet).
- [💠] **shell**: the content of the effect.
-  [💠] **sound**: sounds used over the component's life. Don't forget to `Silent:1` the fireworks, unless it will play the vanilla launching sound.
	- [🔢] **launch**: sound used when the component is summoned (1: mortar | 2: tube | 3: huge-tube).
- [📁] **childs**: all the children's components attached to it.
- [📁] **pos**: 3 TAG_Doubles describing the current X, Y, and Z component's position (according to its parent).
- [🔢] **onGround**:  1 or 0 (true/false) - if true, the component is teleported on the ground.
- [🔢] **delay**: in ticks - determine the amount of time before the component spawns itself. Note that the component's child's delay is non-relative to the sibling: when the parent explodes, all its child's delays start.

### How to test your component?

Instead of using a timeline, you can directly test your effect.
For that, load the component data into its storage slot:
```
/data modify storage jw-s:storage component set value <component>
```
Then, execute the function `#jw-s:test-component`.

## Shells
Depending on your component's type, its behavior will be different. Here are all the shells' data values.

### Firework Data Values (`type:1`)

💠 __shell__:
All the entity data of a [Firework Rocket](https://minecraft.fandom.com/wiki/Firework_Rocket#Entity_data).

### Beam Data Values (`type:3`)

💠 __shell__:
- [💠] **data**:
	- [💠] **beam**: object used to describe the default appearance of the beam.
		- [💠] **particle**: particle used.
			- [🔢] **id**: see "Particles IDs"
			- [🔢] **option**:  see "Particles Options"
	- [📁] **path**: collection of coordinates.
		- [🔢] **fuse**: in ticks - the amount of time before the next coordinate.
		- [📁] **pos**: 3 TAG_Doubles describing the current X, Y, and Z beam's block target.
		- [💠] **particle**: same as `data.beam.particle`
		- [🔢] **length**: in blocks - defines the length of the beam facing the beam's block target. Default is `60`, max is `200`.

### Fountain Data Values (`type:4`)
💠 __shell__:
- [💠] **data**:
	- [🔠] **item**: (optional) item used as a projectile. The default is "minecraft:snowball",
	- [💠] **particle**: particle used.
		- [🔢] **id**: see "Particles IDs"
		- [🔢] **option**:  see "Particles Options"
	- [📁] **motions**: collection of motions.
		- [🔢] **fuse**: in ticks - the amount of time before the next coordinate.
		- [📁] **motion**: 3 TAG_Doubles describing the projectile's motion.
		- [💠] **particle**: (optional) same as `data.particle`
		- [🔢] **life**: in ticks - how long does the projectile live. The default is `200`.

### Comet Data Values (`type:5`)

💠 __shell__:
- [🔢] **life**: in ticks - how long does the projectile live. The default is `200`.
- [💠] **particle**: particle used.
		- [🔢] **id**: see "Particles IDs"
		- [🔢] **option**:  see "Particles Options"
		- [💠] **swirl**: (optional) little effects to mimic the object's roll motion.
			- [🔢] **length**: in blocks*10 - where to display the particle according to the projectile's center of gravity. The default is `10` (= one block).
			- [🔢] **duration**: in ticks - the steps of a revolution (e.g. `2` will divide the revolution's time by half). The default is `1`.


## Library

### Why a library?

This library enhances the development by managing other parts I rely on but can't import into the `Sparkle` datapack itself.

### Content

It stores all the available particles for you to put into your effects.

##### Particle IDs

Particle IDs target a specific one according to the library's minecraft version. For example, `47` corresponds to the `happy_villager`'s particle.
To know which ID targets which particle, take a look at the table in [`docs/particle-ids.md`](./particle-ids.md)

##### Particle Options

Some particles are associated with the option to customize their appearance/behavior.
*For technical reasons, particle options are limited exclusively to the parameter.*
Below, you have a table containing the parameter affiliated with its particle. Each parameter has its table to describe its values.

block:  'blocks',
block_marker:  'blocks',
dust:  'color',
dust_color_transition:  'color',
falling_dust:  'blocks',
item:  'items'

| Particle | Parameter |
|---|---|
| block | blocks |
| block_marker | blocks |
| dust | color |
| dust_color_transition | color |
| falling_dust | blocks |
| item | items |

*Please, note that `sculk_charge`, `shriek` and `vibration` particles don't/will not have parameter. Make sure to check any update related.*

`blocks`' parameter
See [`blocks.md`](`blocks.md`).

`items`' parameter
See [`items.md`](`items.md`)

`color`'s parameter
See [`colors.md`](`colors.md`)
