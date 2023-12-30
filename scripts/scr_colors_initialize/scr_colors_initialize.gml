
enum eCitColor {
	SkullWhite = #ffffff,
	PallidFlesh = #EEC8C7,
	ElfFlesh = #F7BD7B,
	DornYellow = #FFF700,
	SunburstYellow = #FFE700,
	GoldenYellow = #FFCE00,
	TallarnSand = #9C8855,
	FieryOrange = #FF8552,
	BlazingOrange = #F46C2E,
	JokaeroOrange = #EE3823,
	WildRiderRed = #e21516,
	MephistonRed = #9b0e05,
	BloodRed = #C21920,
	RedGore = #940008,
	ScabRed = #6A0002,
	WordBearersRed = #620104,
	TentaclePink = 	#EF9CB5,
	WarlockPurple = #9C004A,
	BarakNarBurgundy = #451636,
	GalVorbakRed = #4B213C,
	LichePurple = #5A005A,
	ImperialPurple = #562F7E,
	NauseatingBlue = #412A7A,
	StormBlue = #27357E,
	MidnightBlue = #000031,
	KantorBlue = #08085A,
	AltdorfGuardBlue = #29397B,
	MacraggeBlue = #2D567C,
	EnchantedBlue = #31639C,
	HoethBlue = #4C78AF,
	IceBlue = #6B9CCE,
	LightningBoltBlue = #8BB9DD,
	ThousandSonsBlue = #00506F,
	AhrimanBlue = #00708A,
	SotekGreen = #006B5A,
	VileGreen = #82C59C,
	JadeGreen = #069B7D,
	ScalyGreen = #026B67,
	CalibanGreen = #005221,
	SnotGreen = #106B21,
	WarbossGreen = #63B521,
	CamoGreen = #A5A542,
	ScorpionGreen = #A5D610,
	BiliousGreen = #A9D171,
	CatachanGreen = #455440,
	OrkhideShade = #384E49,
	KnarlocGreen = #434F38,
	GretchinGreen = #5D6732,
	StrakenGreen = #628026,
	NurglingGreen = #849B63,
	BleachedBone = #EFD9A8,
	ZandriDust = #9E915C,
	PallidWychFlesh = #CDCEBE,
	ScreamingSkull = #F0F1CE,
	BronzedFlesh = #F7944A,
	TauLightOchre = #DE9408,
	RatskinFlesh = #F78C5A,
	TannedFlesh = #A95C3E,
	LeprousBrown = #D88E2D,
	ZamesiDesert = #C68400,
	SnakebuteLeather = #9C6B08,
	TauSeptOchre = #976F3C,
	SkragBrown = #843910,
	ScorchedBrown = #390008,
	DoombullBrown = #630808,
	DryadBark = #2b2a24,
	GorthorBrown = #5f463f,
	BanebladeBrown = #705E48,
	BestialBrown = #662300,
	CalthanBrown = #6D5044,
	XV88 = #793721,
	GraveyardEarth = #655138,
	KarakStone = #9B8C7B,
	GhostlyGrey = #C3C6CD,
	FenrisianGrey = #719bb7,
	ShadowGrey = #4E5067,
	FortressGrey = #B5B5B5,
	CodexGrey = #999999,
	AdeptusBattlegrey = #7C8286,
	AstronomiconGrey = #96A5A9,
	AbaddonBlack = #010100,
	CorvusBlack = #171314,
	RunefangSteel = #B5B5BD,
	Chainmail = #7B737B,
	BoltgunMetal = #393939,
	BurnishedGold = #E7BD42,
	ShiningGold = #CCCC33,
	HashutCopper = #9C5221,
	RunelordBrass = #735A21,
	BrassScorpion = #73372D,
	WarplockBronze = #393121,
	DarkGreenInk = #108473,
	FleshWash = #CE8C42,
	MagentaInk = #DE007B,
	PurpleInk = #842994,
	EshinGrey = #484B4E,
	SkavenblightDinge = #45413B,
	StormverminFur = #4D4A4A,
	RakarthFlesh = #B9ADA1,
	HormagauntPurple = #696684,
	IyandunDarksun = #9C8A53,
	TallamFlesh = #8D736C,
	BaharrothBlueEdge = #59C1CE
}

/// @desc Function Description
/// @param {string} name Description
/// @param {constant.Color} col Description
/// @context {Id.Instance}
function gen_col_components(name, col) {
	array_push(self.col, name)
	array_push(col_r, color_get_red(col))
	array_push(col_g, color_get_green(col))
	array_push(col_b, color_get_blue(col))
	colors++
}

function scr_colors_initialize() {

	col = [""]
	col_r = [0]
	col_g = [0]
	col_b = [0]
	colors = 0
	//Old colors
	gen_col_components("Skull White", eCitColor.SkullWhite)
	gen_col_components("Runefang Steel", eCitColor.RunefangSteel)
	gen_col_components("Fenrisian Grey", eCitColor.FenrisianGrey)
	gen_col_components("Codex Grey", eCitColor.CodexGrey)
	gen_col_components("Boltgun Metal", eCitColor.BoltgunMetal)
	gen_col_components("Corvus Black", eCitColor.CorvusBlack)
	gen_col_components("Blood Red", eCitColor.BloodRed)
	gen_col_components("Mephiston Red", eCitColor.MephistonRed)
	gen_col_components("Scab Red", eCitColor.ScabRed)
	gen_col_components("Blazing Orange", eCitColor.BlazingOrange)
	gen_col_components("Gorthor Brown", eCitColor.GorthorBrown)
	gen_col_components("Bleached Bone", eCitColor.BleachedBone)
	gen_col_components("Dorn Yellow", eCitColor.DornYellow)
	gen_col_components("Burnished Gold", eCitColor.BurnishedGold)
	gen_col_components("Hashut Copper", eCitColor.HashutCopper)
	gen_col_components("Scorpion Green", eCitColor.ScorpionGreen)
	gen_col_components("Snot Green", eCitColor.SnotGreen)
	gen_col_components("Caliban Green", eCitColor.CalibanGreen)
	gen_col_components("Baharroth Blue Edge", eCitColor.BaharrothBlueEdge)
	gen_col_components("Ice Blue", eCitColor.IceBlue)
	gen_col_components("Lightning Bolt Blue", eCitColor.LightningBoltBlue)
	gen_col_components("Kantor Blue", eCitColor.KantorBlue)
	gen_col_components("Enchanted Blue", eCitColor.EnchantedBlue)
	gen_col_components("Macragge Blue", eCitColor.MacraggeBlue)
	gen_col_components("Liche Purple", eCitColor.LichePurple)
	gen_col_components("Tentacle Pink", eCitColor.TentaclePink)

	//new colors
	gen_col_components("Shadow Grey", eCitColor.ShadowGrey)
	gen_col_components("Adeptus Battlegrey", eCitColor.AdeptusBattlegrey)
	gen_col_components("Abaddon Black", eCitColor.AbaddonBlack)
	gen_col_components("Camo Green", eCitColor.CamoGreen)
	gen_col_components("Altdorf Guard Blue", eCitColor.AltdorfGuardBlue)
	gen_col_components("Ahriman Blue", eCitColor.AhrimanBlue)
	gen_col_components("Bilious Green", eCitColor.BiliousGreen)
	gen_col_components("Elf Flesh", eCitColor.ElfFlesh)
	gen_col_components("Astronomicon Grey", eCitColor.AstronomiconGrey)
	gen_col_components("Baneblade Brown", eCitColor.BanebladeBrown)
	gen_col_components("Barak Nar Burgundy", eCitColor.BarakNarBurgundy)
	gen_col_components("Bestial Brown", eCitColor.BestialBrown)
	gen_col_components("Brass Scorpion", eCitColor.BrassScorpion)
	gen_col_components("Bronzed Flesh", eCitColor.BronzedFlesh)
	gen_col_components("Calthan Brown", eCitColor.CalthanBrown)
	gen_col_components("Catachan Green", eCitColor.CatachanGreen)
	gen_col_components("Chainmail", eCitColor.Chainmail)
	gen_col_components("Dark Green Ink", eCitColor.DarkGreenInk)
	gen_col_components("Doombull Brown", eCitColor.DoombullBrown)
	gen_col_components("Dryad Bark", eCitColor.DryadBark)
	gen_col_components("Sunburst Yellow", eCitColor.SunburstYellow)
	gen_col_components("Eshin Grey",eCitColor.EshinGrey)
	gen_col_components("Fiery Orange",eCitColor.FieryOrange)
	gen_col_components("Flesh Wash",eCitColor.FleshWash)
	gen_col_components("Fortress Grey",eCitColor.FortressGrey)
	gen_col_components("Gal Vorbak Red",eCitColor.GalVorbakRed)
	gen_col_components("Ghostly Grey",eCitColor.GhostlyGrey)
	gen_col_components("Golden Yellow",eCitColor.GoldenYellow)
	gen_col_components("Graveyard Earth",eCitColor.GraveyardEarth)
	gen_col_components("Gretchin Green",eCitColor.GretchinGreen)
	gen_col_components("Hoeth Blue",eCitColor.HoethBlue)
	gen_col_components("Hormagaunt Purple",eCitColor.HormagauntPurple)
	gen_col_components("Imperial Purple",eCitColor.ImperialPurple)
	gen_col_components("Iyandun Darksun",eCitColor.IyandunDarksun)
	gen_col_components("Jade Green",eCitColor.JadeGreen)
	gen_col_components("Jokaero Orange",eCitColor.JokaeroOrange)
	gen_col_components("Karak Stone",eCitColor.KarakStone)
	gen_col_components("Knarloc Green",eCitColor.KnarlocGreen)
	gen_col_components("Leprous Brown",eCitColor.LeprousBrown)
	gen_col_components("Magenta Ink",eCitColor.MagentaInk)
	gen_col_components("Midnight Blue",eCitColor.MidnightBlue)
	gen_col_components("Nauseating Blue",eCitColor.NauseatingBlue)
	gen_col_components("Nurgling Green",eCitColor.NurglingGreen)
	gen_col_components("Orkhide Shade",eCitColor.OrkhideShade)
	gen_col_components("Pallid Flesh",eCitColor.PallidFlesh)
	gen_col_components("Pallid Wych Flesh",eCitColor.PallidWychFlesh)
	gen_col_components("Purple Ink",eCitColor.PurpleInk)
	gen_col_components("Rakarth Flesh",eCitColor.RakarthFlesh)
	gen_col_components("Ratskin Flesh",eCitColor.RatskinFlesh)
	gen_col_components("Red Gore",eCitColor.RedGore)
	gen_col_components("Runelord Brass",eCitColor.RunelordBrass)
	gen_col_components("Scaly Green",eCitColor.ScalyGreen)
	gen_col_components("Scorched Brown",eCitColor.ScorchedBrown)
	gen_col_components("Screaming Skull",eCitColor.ScreamingSkull)
	gen_col_components("Shining Gold",eCitColor.ShiningGold)
	gen_col_components("Skavenblight Dinge",eCitColor.SkavenblightDinge)
	gen_col_components("Skrag Brown",eCitColor.SkragBrown)
}
