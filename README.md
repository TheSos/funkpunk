# funkpunk v0.0.4
#### *Flashpunk modified to use GPU rendering!*

## Current state
It *"just works"* This is the initial version that displays sutuff properly using Flash display lists. I only use a subset of FP features in my games so try and plug it in! Let me know what's there left to do!
Games of mine that currently work in FunkPunk:
- Driller Goriller - http://driller.sos.gd
- Badass vs Hipsters  - http://badass.sos.gd
- Attack of The Heavenly Bats  - You'll have to google that one :P

## TODO
- tinting - DONE!
- render() overloads - (poorly) DONE!
- layering - DONE! 
- resource management
- scaling and pixels - DONE!
- console
- pixelbuffer overlay - probably DONE!
- canvas - DONE!
- particles
- scaling
- probably heaps of stuff
 
## Usage
Substitute `net/flashpunk` directory from your project with this. Compile. Cry. *(TODO: replace 'cry' with 'rejoice')*
You might need to alter your code if it meets one of the following conditions.
* IF you overload `render()` and trigger multiple buffer updates with subsequent `graphic.render()` calls (as, in rendering one image with different tints or frames from one `render()` function), you need to set additional `clone` argument as `true` in  `graphic.render()`.  e.g. `sprite.render(FP.buffer, new Point(x,y), FP.camera,true);`
