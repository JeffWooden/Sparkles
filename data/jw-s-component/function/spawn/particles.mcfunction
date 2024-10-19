## TODO : let the frame one being executed once summoned !
# Check number of particles
execute store result score l jws-calc run data get storage jw-s:component data.particles
execute if score l jws-calc matches ..0 run return fail

# Summon the particles
function jw-s-component:spawn/particles/summon

return -1