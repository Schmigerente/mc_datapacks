execute as @s[nbt={SelectedItem:{tag:{acm_skill:"teleport"}}}] run function acm:abilities/teleport/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"regenerate"}}}] run function acm:abilities/regenerate/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"lightning"}}}] run function acm:abilities/lightning/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"mine"}}}] run function acm:abilities/mine/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"heal"}}}] run function acm:abilities/heal/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"poison"}}}] run function acm:abilities/poison/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"ascend"}}}] run function acm:abilities/ascend/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"empower"}}}] run function acm:abilities/empower/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"enrage"}}}] run function acm:abilities/enrage/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"ironskin"}}}] run function acm:abilities/ironskin/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"aquatic"}}}] run function acm:abilities/aquatic/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"swiften"}}}] run function acm:abilities/swiften/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"summon_wolf"}}}] run function acm:abilities/summon_wolf/run
execute as @s[nbt={SelectedItem:{tag:{acm_skill:"overload"}}}] run function acm:abilities/overload/run

#clear single use spells
execute as @a[nbt={SelectedItem:{tag:{acm_singleuse:1b}}}] run item replace entity @s weapon.mainhand with air
