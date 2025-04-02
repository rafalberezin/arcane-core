Rebuild the animation root API for fully automatic mounting:

1. call caching function from player who's root you want to use
2. call an auto mounting function from the entity you want to mount,
   this will include internal setup for auto remounting when teleporting across dimensions

This also abstracts the low level mounting code from the developers.
