; PureRGBnote: ADDED: text pointers for the descriptions that show up in the movedex.

_PoundDexEntry::
	text "Pounds the foe"
	next "with a leg, tail"
	next "or hand.@"
	text_jump _GenericNoEffectText

_KarateChopDexEntry::
	text "A martial arts"
	next "vertical chop"
	next "with hand or paw.@"
	; fall through
	text_jump _GenericHighCritChancesText

_DoubleslapDexEntry::
	text "Repeatedly slaps"
	next "the opponent with"
	next "two hands.@"
	; fall through
	text_jump _Generic2To5HitsText

_CometPunchDexEntry::
	text "The foe is hit"
	next "with a flurry of"
	next "of punches.@"
	; fall through
	text_jump _Generic2To5HitsText

_MegaPunchDexEntry::
	text "The foe is slugged"
	next "by a punch thrown"
	next "with muscle-"

	bage "packed power"
	dex

_PayDayDexEntry::
	text "Throws many coins"
	next "at the foe."
	next "Picking the coins"

	bage "up after battle"
	next "will earn you"
	next "some extra money."

	bage "May also be used"
	next "for slot machines"
	next ".."
	dex

_FirePunchDexEntry::
	text "Punches the foe"
	next "with a burning"
	next "fist.@"
	; fall through
	text_jump _Generic10PercentBurnText

_IcePunchDexEntry::
	text "Punches the foe"
	next "with a freezing"
	next "fist.@"
	; fall through
	text_jump _Generic10PercentFrozeText

_ThunderPunchDexEntry::
	text "Zaps the foe with"
	next "an electrically"
	next "charged fist.@"
	; fall through
	text_jump  _Generic10PercentParalysisText

_ScratchDexEntry::
	text "Scratches the foe"
	next "with sharp claws.@"
	text_jump _GenericNoEffectText

_VicegripDexEntry::
	text "Crushes the foe"
	next "between claws,"
	next "hands, or jaws.@"
	; fall through
	text_jump _Generic30PercentParalysisText

_GuillotineDexEntry::
	text "Giant claws"
	next "violently crush"
	next "the opponent.@"
	; fall through
	text_jump _GenericOHKOText

_RazorWindDexEntry::
	text "Blades of wind hit"
	next "the foe on the"
	next "second turn.@"
	; fall through
 	text_jump _GenericHighCritChancesText

_SwordsDanceDexEntry::
	text "A frenetic dance"
	next "to raise fighting"
	next "spirit.@"
	; fall through
	text_jump _GenericAddAtk2Text
	

_CutDexEntry::
	text "Slices the foe"
	next "with a claw, barb"
	next "tooth, wing, etc."

	bage "Usable outside of"
	next "battle to cut down"
	next "shrubs or clear"
	
	bage "patches of tall"
	next "grass"
	dex

_GustDexEntry::
	text "Kicks up a gust"
	next "of wind towards"
	next "the opponent"
	dex

_WingAttackDexEntry::
	text "Strikes and slaps"
	next "the foe with"
	next "large wings"
	dex

_WhirlwindDexEntry::
	text "In the wild,"
	next "ends the fight."

	bage "No effect in"
	next "trainer battles.@"
	; fall through
	text_jump _GenericImproveCatchRate

_FlyDexEntry::
	text "The #mon flies"
	next "up high and then"
	next "dive-bombs foe."

	bage "Avoids most"
	next "attacks while"
	next "flying high."

	bage "Usable outside of"
	next "battle to fly to"
	next "other places"
	dex

_BindDexEntry::
	text "Entraps the foe"
	next "in a rock-hard"
	next "grip.@"
	; fall through
	text_jump _GenericTrappingMoveText

_SlamDexEntry::
	text "Slams the foe"
	next "with a dirty tail"
	next "leg, arm, etc.@"
	; fall through
	text_jump _GenericNoEffectText

_VineWhipDexEntry::
	text "Whips the foe"
	next "with a plant"
	next "vine.@"
	; fall through
	text_jump _GenericNoEffectText

_StompDexEntry::
	text "Stomps on the foe"
	next "with a huge foot.@"
	; fall through
	text_jump _Generic30PercentFlinchText

_DoubleKickDexEntry::
	text "Delivers two"
	next "kicks in quick"
	next "succession.@"
	; fall through
	text_jump _Generic2HitsText

_MegaKickDexEntry::
	text "A gigantic kick"
	next "usually with both"
	next "legs, and a huge"

	bage "weight behind it"
	dex

_JumpKickDexEntry::
	text "Jumps through the"
	next "air to deliver a"
	next "big kick."

	bage "Signature move of"
	next "Hitmonlee.@"
	; fall through
	text_jump _Generic30PercentFlinchText

_RollingKickDexEntry::
	text "A quick kick from"
	next "a rolling spin."

	bage "Signature move of"
	next "Hitmonlee.@"
	; fall through
	text_jump _Generic30PercentFlinchText

_SandAttackDexEntry::
	text "Blinds the foe"
	next "with a spray of"
	next "sand.@"
	; fall through
	text_jump _GenericLowPre1Text

_HeadbuttDexEntry::
	text "Rams the foe"
	next "with the user's"
	next "big head.@"
	; fall through
	text_jump _Generic30PercentFlinchText

_HornAttackDexEntry::
	text "Jabs the foe with"
	next "a sharp horn.@"
	; fall through
	text_jump _GenericNoEffectText

_FuryAttackDexEntry::
	text "Angrily jabs the"
	next "foe with beak or"
	next "horn rapidly.@"
	; fall through
	text_jump _Generic2To5HitsText

_HornDrillDexEntry::
	text "Violently drills"
	next "into foe with a"
	next "razor-sharp horn.@"	
	; fall through
	text_jump _GenericOHKOText

_TackleDexEntry::
	text "Charges the foe"
	next "with a full-body"
	next "tackle."
	dex

_BodySlamDexEntry::
	text "The user's full"
	next "body weight is"
	next "slammed on foe.@"
	; fall through
	text_jump _Generic30PercentParalysisText

_WrapDexEntry::
	text "Wraps around the"
	next "foe with a long"
	next "vine or body.@"
	; fall through
	text_jump _GenericTrappingMoveText

_TakeDownDexEntry::
	text "A reckless,"
	next "full-body charge"
	next "attack.@"
	; fall through
	text_jump _Generic25PercentRecoilText

_ThrashDexEntry::
	text "Angrily flails"
	next "around hitting"
	next "anything nearby.@"
	; fall through
	text_jump _GenericThrashEffectText

_DoubleEdgeDexEntry::
	text "A reckless,"
	next "life-risking"
	next "tackle.@"
	; fall through
	text_jump _Generic25PercentRecoilText

_TailWhipDexEntry::
	text "The user whips its"
	next "tail around cutely"
	next "to trick the foe"

	bage "into lowering its"
	next "guard.@"
	; fall through
	text_jump _GenericLowDef1Text

_PoisonStingDexEntry::
	text "Jabs the foe with"
	next "a small poison-"
	next "tipped barb.@"
	; fall through
	text_jump _Generic40PercentPoisonText

_TwineedleDexEntry::
	text "Jabs the foe with"
	next "two barbs, claws,"
	next "beaks, or spikes."

	bage "Signature move of"
	next "Beedrill.@"
	; fall through
	text_call _Generic2HitsText
	text_end
	text_jump _Generic20PercentPoisonText

_PinMissileDexEntry::
	text "A rapid barrage of"
	next "pins or needles"
	next "flurry the foe.@"
	; fall through
	text_jump _Generic2To5HitsText

_LeerDexEntry::
	text "The user glowers"
	next "at the foe to"
	next "intimidate it.@"
	; fall through
	text_jump _GenericLowDef1Text

_BiteDexEntry::
	text "Bites the foe"
	next "with sharp teeth.@"
	; fall through
	text_jump _Generic10PercentFlinchText

_GrowlDexEntry::
	text "Growls cutely,"
	next "causing the foe"
	next "to be less wary.@"
	; fall through
	text_jump _GenericLowAtk1Text

_RoarDexEntry::
	text "In the wild,"
	next "ends the fight."

	bage "No effect in"
	next "trainer battles.@"
	; fall through
	text_jump _GenericImproveCatchRate

_SingDexEntry::
	text "A soothing song"
	next "lulls the foe"
	next "into deep sleep"
	dex

_SupersonicDexEntry::
	text "High frequency"
	next "waves are"
	next "emitted.@"
	; fall through
	text_jump _GenericConfusionText

_SonicboomDexEntry::
	text "A loud sonic bang"
	next "generates a "
	next "shockwave."

	bage "Always inflicts"
	next "20-HP damage."
	dex

_DisableDexEntry::
	text "Disables the last"
	next "move used by the"
	next "foe for 2-8 turns"	
	dex

_AcidDexEntry::
	text "A spray of acid"
	next "is unleashed on"
	next "the opponent.@"
	; fall through
	text_jump _Generic33PercentLowDef1Text

_EmberDexEntry::
	text "Sparks ignite"
	next "small flames to"
	next "scorch the foe.@"
	; fall through
	text_jump _Generic10PercentBurnText

_FlamethrowerDexEntry::
	text "A jet of searing"
	next "flame is blown"
	next "at the opponent.@"
	; fall through
	text_jump _Generic10PercentBurnText

_MistDexEntry::
	text "The user releases"
	next "a sparkling white"
	next "mist and prevents"

	bage "stat reduction"
	dex

_WaterGunDexEntry::
	text "Shoots a small"
	next "pressurized jet"
	next "of water at foe.@"
	; fall through
	text_jump _GenericNoEffectText

_HydroPumpDexEntry::
	text "A huge column of"
	next "superpressurized"
	next "water is blasted"

	bage "at the opponent.@"
	; fall through
	text_jump _GenericNoEffectText

_SurfDexEntry::
	text "The whole area"
	next "is flooded with"
	next "deep water"

	bage "Usable outside of"
	next "battle to travel"
	next "over water"
	dex

_IceBeamDexEntry::
	text "A frigid beam"
	next "of glacial ice"
	next "blasts the foe.@"
	; fall through
	text_jump _Generic10PercentFrozeText

_BlizzardDexEntry::
	text "The user whips up"
	next "a powerful winter"
	next "storm that"

	bage "batters the foe"
	next "with countless ice"
	next "shards.@"
	; fall through
	text_jump _Generic10PercentFrozeText

_PsybeamDexEntry::
	text "Psychic power"
	next "of the user is"
	next "focused into a"

	bage "strange beam.@"
	; fall through
	text_jump _Generic10PercentConfusionText

_BubblebeamDexEntry::
	text "A jet of bubbles"
	next "is fired at the"
	next "foe.@"
	; fall through
	text_jump _Generic33PercentLowSpd1Text

_AuroraBeamDexEntry::
	text "A beautiful"
	next "multicolored beam"
	next "of light is shot"

	bage "at the opponent.@"
	; fall through
	text_jump _Generic33PercentLowAtk1Text

_HyperBeamDexEntry::
	text "A powerful beam;"
	next "the pure essence"
	next "of destruction"

	bage "is fired mightily"
	next "at the foe in"
	next "exalted glory."

	bage "After usage,"
	next "the user rests"
	next "the next turn."

	bage "If the opponent"
	next "faints, no rest"
	next "is necessary"
	dex

_PeckDexEntry::
	text "The user pecks"
	next "the foe with"
	next "a beak or horn.@"
	; fall through
	text_jump _GenericNoEffectText

_DrillPeckDexEntry::
	text "A spinning drill"
	next "pecking attack "
	next "with a beak.@"
	; fall through
	text_jump _GenericNoEffectText

_SubmissionDexEntry::
	text "The user grabs"
	next "the foe and"
	next "recklessly dives"

	bage "for the ground.@"
	; fall through
	text_jump _Generic25PercentRecoilText

_LowKickDexEntry::
	text "A low-sweeping"
	next "kick that can"
	next "trip up the foe.@"
	; fall through
	text_jump _Generic30PercentFlinchText

_CounterDexEntry::
	text "A retaliation move"
	next "that counters any"
	next "physical hit with"

	bage "double the damage"
	dex

_SeismicTossDexEntry::
	text "The user suplexes"
	next "the foe in a"
	next "dramatic spinning"

	bage "air drop aided"
	next "by the power of"
	next "gravity."

	bage "Does damage equal"
	next "to the current"
	next "level of user."

	bage "Doesn't take types"
	next "into account"
	dex

_StrengthDexEntry::
	text "Slugs the foe"
	next "with a massive"
	next "built up power."

	bage "Usable outside of"
	next "battle to push"
	next "heavy objects"
	dex

_AbsorbDexEntry::
	text "Drains nutrients"
	next "from the foe.@"
	; fall through
	text_jump _GenericAbsorbMoveText

_MegaDrainDexEntry::
	text "Rapidly drains"
	next "many nutrients"
	next "from the foe.@"
	; fall through
	text_jump _GenericAbsorbMoveText

_LeechSeedDexEntry::
	text "Drops seeds that"
	next "sprout and slowly"
	next "drain energy."

	bage "Saps health from"
	next "the opponent each"
	next "of their turns."

	bage "Restores 50% of"
	next "inflicted damage"
	next "to the user's HP."

	bage "Doesn't work on"
	next "Grass-type"
	next "#mon"
	dex

_GrowthDexEntry::
	text "The user grows"
	next "larger.@"
	; fall through
	text_jump _GenericAddSpe1Text

_RazorLeafDexEntry::
	text "A flurry of razor"
	next "sharp leaves are"
	next "hurled at foe.@"
	; fall through
	text_jump _GenericHighCritChancesText

_SolarbeamDexEntry::
	text "A 2-turn move that"
	next "blasts the foe"
	next "with absorbed"
	
	bage "energy in the"
	next "2nd turn"
	dex

_PoisonPowderDexEntry::
	text "A poisonous dust"
	next "cloud is spread"
	next "around the foe."

	bage "Doesn't work on"
	next "Poison-type"
	next "#mon.@"
	; fall through
	text_jump _GenericPoisonText

_StunSporeDexEntry::
	text "A numbing powder"
	next "cloud is spread"
	next "around the foe.@"
	; fall through
	text_jump _GenericParalizeText

_SleepPowderDexEntry::
	text "A big cloud of"
	next "sleep-inducing"
	next "dust is spread.@"
	; fall through
	text_jump _GenericSleepText

_PetalDanceDexEntry::
	text "The user attacks"
	next "by spreading"
	next "petals all over."

	bage "It then becomes"
	next "fixated on this"
	next "flowery dance."

	bage "Signature move of"
	next "Oddish, Gloom and"
	next "Vileplume.@"
	; fall through
	text_jump _GenericThrashEffectText

_StringShotDexEntry::
	text "Fires thick"
	next "sticky ropes of"
	next "silk at the foe.@"
	; fall through
	text_jump _GenericLowSpd1Text

_DragonRageDexEntry::
	text "The foe is hit"
	next "by a shockwave of"
	next "draconic rage."
	
	bage "Always inflicts"
	next "40-HP damage"
	dex

_FireSpinDexEntry::
	text "A swirling pillar"
	next "of fire surrounds"
	next "the opponent.@"
	; fall through
	text_jump _GenericTrappingMoveText

_ThundershockDexEntry::
	text "A basic electric"
	next "shock move.@"
	; fall through
	text_jump _Generic10PercentParalysisText

_ThunderboltDexEntry::
	text "Unleashes over"
	next "100,000 volts of"
	next "electricity.@"
	; fall through
	text_jump _Generic10PercentParalysisText

_ThunderWaveDexEntry::
	text "Discharges an"
	next "electromagnetic"
	next "wave.@"
	; fall through
	text_jump _GenericParalizeText

_ThunderDexEntry::
	text "A thunderstorm"
	next "is conjured up,"
	next "dropping a"

	bage "titanic lightning"
	next "bolt on the foe.@"
	; fall through
	text_jump _Generic10PercentParalysisText

_RockThrowDexEntry::
	text "Rocks are dropped"
	next "on the foe.@"
	; fall through
	text_jump _GenericNoEffectText

_EarthquakeDexEntry::
	text "The user sets"
	next "off a powerful"
	next "earthquake"
	dex

_FissureDexEntry::
	text "The user creates"
	next "a wide split in"
	next "the earth's crust"

	bage "that swallows the"
	next "foe completely.@"
	; fall through
	text_jump _GenericOHKOText

_DigDexEntry::
	text "Digs underground"
	next "for 1 turn, then"
	next "suddenly emerges"

	bage "to strike the foe"
	next "the next turn."

	bage "Usable outside of"
	next "battle to dig out"
	next "of caves"
	dex

_ToxicDexEntry::
	text "Excessive amounts"
	next "of poison are"
	next "sprayed all over."

	bage "The damage poison"
	next "does to the foe"
	next "grows each turn."
	dex

_ConfusionDexEntry::
	text "Uses psychic"
	next "powers to confuse"
	next "the foe's mind.@"
	; fall through
	text_jump _Generic10PercentConfusionText

_PsychicDexEntry::
	text "Telekinetic power"
	next "is unleashed,"
	next "striking the foe.@"
	; fall through
	text_jump _Generic33PercentLowSpe1Text

_HypnosisDexEntry::
	text "The foe is hypno-"
	next "tized into a deep"
	next "sleep.@"
	; fall through
	text_jump _GenericSleepText

_MeditateDexEntry::
	text "Assuming a pose"
	next "meant for deep"
	next "contemplation,"

	bage "the user relaxes,"
	next "awakening its"
	next "latent abilities.@"
	; fall through
	text_jump _GenericAddAtk1Text

_AgilityDexEntry::
	text "A burst of"
	next "adrenaline enters"
	next "the user's system"

	bage "letting it move"
	next "with a newfound"
	next "blinding speed.@"
	; fall through
	text_jump _GenericAddSpd2Text

_QuickAttackDexEntry::
	text "A super fast"
	next "lunging attack."
	
	bage "Always strikes"
	next "first"
	dex

_RageDexEntry::
	text "While this move is"
	next "in use, the power"
	next "of rage raises"

	bage "the user's Attack"
	next "each time it is"
	next "hit"
	dex

_TeleportDexEntry::
	text "Allows escape from"
	next "wild #mon."

	bage "Usable outside of"
	next "battle to travel"
	next "back to the last"

	bage "#mon Center"
	dex

_NightShadeDexEntry::
	text "A pervasive dark"
	next "engulfs the foe,"
	next "scaring them.@"
	; fall through
	text_jump _GenericLevelDamageText

_MimicDexEntry::
	text "The user mimics"
	next "the foe's last"
	next "move."

	bage "It is learned"
	next "for the rest"
	next "of the battle"
	dex

_ScreechDexEntry::
	text "A loud screeching"
	next "noise is emitted"
	next "by the user.@"
	; fall through
	text_jump _GenericLowDef2Text

_DoubleTeamDexEntry::
	text "The user creates"
	next "many afterimages"
	next "of itself to"

	bage "decrease chances"
	next "of being hit and"
	next "tricks the foe.@"
	; fall through
	text_jump _GenericAddEva1Text

_RecoverDexEntry::
	text "Regenerates"
	next "cells to heal"
	next "user's damage.@"
	; fall through
	text_jump _GenericHealsHalfText

_HardenDexEntry::
	text "The exterior of"
	next "the user gets"
	next "harder.@"
	; fall through
	text_jump _GenericAddDef1Text

_MinimizeDexEntry::
	text "The user shrinks"
	next "to a tiny size to"
	next "avoid being hit.@"
	; fall through
	text_jump _GenericAddEva1Text

_SmokescreenDexEntry::
	text "Black smoke is"
	next "shot everywhere,"
	next "blinding the foe.@"
	; fall through
	text_jump _GenericLowPre1Text

_ConfuseRayDexEntry::
	text "Strange rays of"
	next "light confuse the"
	next "opponent.@"
	; fall through
	text_jump _GenericConfusionText

_WithdrawDexEntry::
	text "The user hides in"
	next "its shell.@"
	; fall through
	text_jump _GenericAddDef1Text

_DefenseCurlDexEntry::
	text "Curls up into a"
	next "ball to hide its"
	next "weaknesses.@"
	; fall through
	text_jump _GenericAddDef1Text

_BarrierDexEntry::
	text "A sturdy energy"
	next "barrier is raised"
	next "by the user.@"
	; fall through
	text_jump _GenericAddDef2Text

_LightScreenDexEntry::
	text "A wondrous wall"
	next "of light is risen"
	next "by the user."

	bage "Reduce damage from"
	next "special attacks"
	next "for five turns.@"
	; fall through
	text_jump _GenericStopIfUserSwitchText

_HazeDexEntry::
	text "Creates a haze"
	next "that eliminates"
	next "all stat changes"

	bage "among all #mon"
	next "in battle."
	dex

_ReflectDexEntry::
	text "A reflective wall"
	next "of light is risen"
	next "by the user."

	bage "Reduce damage from"
	next "physical attacks"
	next "for five turns.@"
	; fall through
	text_jump _GenericStopIfUserSwitchText

_FocusEnergyDexEntry::
	text "The user takes a"
	next "deep breath and"
	next "focuses.@"
	; fall through
	text_jump _GenericAddCrit4Text

_BideDexEntry::
	text "The user endures"
	next "attacks for two"
	next "turns, then"

	bage "strikes back"
	next "double"
	dex

_MetronomeDexEntry::
	text "The user waves"
	next "a finger, and"
	next "otherworldly"

	bage "magic causes a"
	next "random attack to"
	next "suddenly occur"
	dex

_MirrorMoveDexEntry::
	text "The user copies"
	next "the move last"
	next "used by the foe.@"
	dex

_SelfdestructDexEntry::
	text "The user explodes"
	next "in a giant fiery"
	next "fulmination.@"
	; fall through
	text_jump _GenericExplodeText

_EggBombDexEntry::
	text "An egg is hurled"
	next "at the opponent,"
	next "causing an"
	
	bage "explosion"
	dex

_LickDexEntry::
	text "The user licks"
	next "the opponent with"
	next "a long tongue.@"
	; fall through
	text_jump _Generic10PercentParalysisText

_SmogDexEntry::
	text "A puff of thick"
	next "toxic smog wafts"
	next "toward the foe.@"
	; fall through
	text_jump _Generic40PercentPoisonText

_SludgeDexEntry::
	text "Corrosive toxic"
	next "sludge covers the"
	next "foe's body.@"
	; fall through
	text_jump _Generic40PercentPoisonText

_BoneClubDexEntry::
	text "A bone is used"
	next "to club the"
	next "opponent."

	bage "Signature move of"
	next "Cubone and"
	next "Marowak.@"
	; fall through
	text_jump _Generic10PercentFlinchText

_FireBlastDexEntry::
	text "An intense blast"
	next "of all-consuming"
	next "fire engulfs the"

	bage "opponent.@"
	; fall through
	text_jump _Generic30PercentBurnText

_WaterfallDexEntry::
	text "A charge powered"
	next "up by rushing"
	next "water."
	
	bage "Signature move of"
	next "Goldeen and"
	next "Seaking.@"
	; fall through
	text_jump _Generic30PercentFlinchText

_ClampDexEntry::
	text "Clamps the foe"
	next "with a hard"
	next "shell."

	bage "Signature move of"
	next "Shellder and"
	next "Cloyster.@"
	; fall through
	text_jump _GenericTrappingMoveText

_SwiftDexEntry::
	text "Star shaped rays"
	next "of light are shot"
	next "at the foe.@"
	; fall through
	text_jump _GenericNeverMissText

_SkullBashDexEntry::
	text "The user tucks in"
	next "its head to raise"
	next "its Defense in"

	bage "the first turn,"
	next "then rams the foe"
	next "on the next turn.@"
	; fall through
	text_jump _GenericAddDef1Text

_SpikeCannonDexEntry::
	text "Rock-hard spikes"
	next "are fired at a"
	next "high velocity.@"
	; fall through
	text_jump _Generic2To5HitsText

_ConstrictDexEntry::
	text "The opponent is"
	next "snared with a"
	next "vine or tentacle.@"
	; fall through
	text_jump _Generic33PercentLowSpd1Text

_AmnesiaDexEntry::
	text "The user empties"
	next "its mind to"
	next "forget concerns.@"
	; fall through
	text_jump _GenericAddSpe2Text

_KinesisDexEntry::
	text "The user distracts"
	next "the opponent by"
	next "bending a spoon."

	bage "Signature move of"
	next "Kadabra and"
	next "Alakazam.@"
	; fall through
	text_jump _GenericLowPre1Text

_SoftboiledDexEntry::
	text "The user rest to"
	next "heal.@"
	; fall through
	text_call _GenericHealsHalfText
	; fall through
	bage "Usable outside"
	next "battle to heal"
	next "other #mon"
	dex

_HiJumpKickDexEntry::
	text "The user jumps"
	next "high in the air"
	next "to deliver a"

	bage "world-shattering"
	next "hyper-kick."

	bage "Signature move of"
	next "Hitmonlee.@"
	; fall through
	text_jump _GenericMissRecoilText

_GlareDexEntry::
	text "The opponent is"
	next "transfixed by"
	next "terrifying eyes,"

	bage "scaring it into"
	next "being unable"
	next "to move."

	bage "Signature move of"
	next "Ekans and Arbok.@"
	; fall through
	text_call _GenericParalizeText
	text_end
	text_jump _GenericImproveCatchRate

_DreamEaterDexEntry::
	text "Eats a sleeping"
	next "foe's dreams to"
	next "regain HP.@"
	; fall through
	text_jump _GenericAbsorbMoveText

_PoisonGasDexEntry::
	text "Releases a cloud"
	next "of corrosive"
	next "choking gas.@"
	; fall through
	text_jump _Generic20PercentPoisonText

_BarrageDexEntry::
	text "Round objects are"
	next "hurled at the"
	next "foe."

	bage "Signature move of"
	next "Exeggcute and"
	next "Exeggutor.@"
	; fall through
	text_jump _Generic2To5HitsText

_LeechLifeDexEntry::
	text "Bites and sucks"
	next "energy from the"
	next "foe's life force.@"
	; fall through
	text_jump _GenericAbsorbMoveText

_LovelyKissDexEntry::
	text "A magic kiss is"
	next "bestowed on the"
	next "foe."
	
	bage "Signature move of"
	next "Jynx.@"
	; fall through
	text_jump _GenericSleepText

_SkyAttackDexEntry::
	text "A supersonic"
	next "speed attack in"
	next "two turns.@"
	; fall through
	text_jump _Generic30PercentFlinchText

_TransformDexEntry::
	text "Transforms into"
	next "the opponent"
	next "#mon and"

	bage "copies its moves"
	dex

_BubbleDexEntry::
	text "Blows a bubble"
	next "that bursts in"
	next "the foe's face.@"
	; fall through
	text_jump _Generic33PercentLowSpd1Text

_DizzyPunchDexEntry::
	text "A rhythmic punch"
	next "that leaves the"
	next "foe reeling."

	bage "Signature move of"
	next "Kangaskhan.@"
	; fall through
	text_jump _Generic30PercentConfusionText

_SporeDexEntry::
	text "Potent mushroom"
	next "spores densely"
	next "fill the air."

	bage "Signature move of"
	next "Paras and"
	next "Parasect.@"
	; fall through
	text_call _GenericSleepText
	text_end
	text_jump _GenericImproveCatchRate

_FlashDexEntry::
	text "An instantaneous"
	next "flash blinds the"
	next "foe.@"
	; fall through
	text_call _GenericLowPre1Text
	; fall through
	bage "Usable outside of"
	next "battle to"
	next "illuminate caves."
	dex

_PsywaveDexEntry::
	text "A small psychic"
	next "wave hits the"
	next "opponent.@"
	; fall through
	text_jump _GenericLevelDamageText

_SplashDexEntry::
	text "The user flops"
	next "around"
	next "pointlessly."

	bage "Signature move of"
	next "Magikarp.@"
	; fall through
	text_jump _GenericNoEffectText

_AcidArmorDexEntry::
	text "The user alters"
	next "its cellular"
	next "structure.@"
	; fall through
	text_jump _GenericAddDef2Text
	
_CrabhammerDexEntry::
	text "The user hammers"
	next "down on the foe"
	next "with a pincer."

	bage "Signature move of"
	next "Krabby and"
	next "Kingler.@"
	; fall through
	text_jump _GenericHighCritChancesText

_ExplosionDexEntry::
	text "The user explodes"
	next "to inflict"
	next "terrible damage.@"
	; fall through
	text_jump _GenericExplodeText

_FurySwipesDexEntry::
	text "The foe is raked"
	next "with sharp claws"
	next "or scythes.@"
	; fall through
	text_jump _Generic2To5HitsText

_BonemerangDexEntry::
	text "Throws a bone like"
	next "a boomerang to"
	next "strike the foe."

	bage "Signature move of"
	next "Cubone and"
	next "Marowak.@"
	; fall through
	text_jump _Generic2HitsText

_RestDexEntry::
	text "The user falls"
	next "asleep for two"
	next "turn."

	bage "Heals to full"
	next "HP and heals all"
	next "status ailments."
	dex

_RockSlideDexEntry::
	text "An avalanche of"
	next "rocks rain on"
	next "top of the foe.@"
	; fall through
	text_jump _Generic30PercentFlinchText

_HyperFangDexEntry::
	text "Giant teeth gnash"
	next "the opponent."

	bage "Signature move of"
	next "Rattata and"
	next "Raticate.@"
	; fall through
	text_jump _Generic10PercentFlinchText

_SharpenDexEntry::
	text "The user reduces"
	next "its number of"
	next "polygons to"

	bage "accentuate its"
	next "angles."

	bage "Signature move of"
	next "Porygon.@"
	; fall through
	text_jump _GenericAddAtkPre1Text

_ConversionDexEntry::
	text "The user analyzes"
	next "the opponent and"
	next "copies its type."

	bage "Signature move of"
	next "Porygon"
	dex

_TriAttackDexEntry::
	text "Shoots energy orbs"
	next "with properties"
	next "of 3 elements:"

	bage "Fire, ice, and"
	next "electricity."

	bage "30% chance each"
	next "of burn, freeze"
	next "or paralysis"
	dex

_SuperFangDexEntry::
	text "The user chomps"
	next "hard on the"
	next "foe."

	bage "Signature move of"
	next "Rattata and"
	next "Raticate."

	bage "Always does half"
	next "of the opponent's"
	next "current HP"
	dex

_SlashDexEntry::
	text "The user slashes"
	next "the foe with"
	next "claws or scythes.@"
	; fall through"
	text_jump _GenericHighCritChancesText

_SubstituteDexEntry::
	text "Sacrifices 25%"
	next "of user's HP to"
	next "make a decoy doll"

	bage "that takes damage"
	next "instead of the"
	next "user"
	dex

_SludgeBombDexEntry::
	text "Toxic sludge is"
	next "hurled at the"
	next "opponent.@"
	; fall through
	text_jump _Generic20PercentPoisonText

_PursuitDexEntry::
	text "Inflicts severe"
	next "damage to the"
	next "opponent.@"
	; fall through
	text_jump _Generic33PercentLowDef1Text

_CrunchDexEntry::
	text "The foe is"
	next "crunched with"
	next "sharp fangs.@"
	; fall through
	text_jump _Generic33PercentLowDef1Text

_MetalClawDexEntry::
	text "The foe is raked"
	next "with steel claws.@"
	; fall through
	text_jump _GenericNoEffectText

_IronTailDexEntry::
	text "The foe is slammed"
	next "with a steel-hard"
	next "tail.@"
	; fall through
	text_jump _Generic33PercentLowDef1Text

_XScissorDexEntry::
	text "The user slashes"
	next "at the foe by"
	next "crossing its"
	
	bage "scythes or claws"
	next "like a pair of"
	next "scissors"
	dex

_GigaDrainDexEntry::
	text "Harshly drains"
	next "many nutrients"
	next "from the foe.@"
	; fall through
	text_jump _GenericAbsorbMoveText

_DarkPulseDexEntry::
	text "The user releases"
	next "a horrible aura"
	next "imbued with dark"

	bage "thoughts.@"
	; fall through
	text_jump _Generic10PercentFlinchText

_ShadowBallDexEntry::
	text "A shadowy blob is"
	next "hurled at the"
	next "foe.@"
	; fall through
	text_jump _Generic33PercentLowSpe1Text

_DragonRushDexEntry::
	text "The user tackles"
	next "the foe while"
	next "exhibiting over-"

	bage "whelming menace.@"
	; fall through
	text_jump _Generic10PercentFlinchText

_FlashCannonDexEntry::
	text "The user gathers"
	next "all its light"
	next "energy and"
	
	bage "releases it at"
	next "once.@"
	; fall through
	text_jump _Generic33PercentLowSpe1Text
	
_StruggleDexEntry::
	text "An attack that is"
	next "used when there"
	next "is no PP left."

	bage "The user is hit"
	next "with half the"
	next "damage inflicted"
	dex

INCLUDE "data/moves/movedex_text_generics.asm"