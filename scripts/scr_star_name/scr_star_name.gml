function scr_star_name() {
	var rand, ok=0,num="";
	rand=floor(random(566));
	// rand2=floor(random(100))+1;

	var planet_names=[
		"Terak", "Roma", "Noctae", "Piscium", "Illan",
		"Xi-He", "Carinae", "Skuse", "Voltantis", "Vidi",
    	"Hasta", "Dagon", "Pocki", "Resheph", "Hemera",
    	"Iman", "Chorta", "Atlanta", "Lyncis", "Modgud",
		"Oynyena", "Onian", "Helen", "Canum", "Qetesh",
		"Skonii", "Lytir", "Corvi", "Yogneek", "Delphini",
		"Freya", "Gaima", "Vespae", "Endiku", "Menthu",
		"Elyon", "Gone", "Baxu", "Maghda", "Leporis",
		"Tiamat", "Ceti", "Atep", "Amon", "Asherah",
		"Xu Xiu", "Gonj Mik", "Zentra", "Azeroth", "Morphua",
		"Muric", "Sextanis", "Betelgeuse", "Soachton", "Ao-Chin",
		"Hordi", "Crucis", "Lustania", "Albion", "Bongistan",
		"Orwell", "Dagobah", "Outer Heaven", "Sodden Hollow", "Protasia",
		"Veneria", "Iocanthus", "Quaddis", "Belahaam", "Scarric",
		"Gelmito", "Josian", "Turanshush", "Balecaster", "Belacane",
		"Avitohol", "Brassica", "Sinophia", "Skyren", "Antioch",
		"Balanor", "Cathox", "Mahr'douk", "Mordax", "Phall",
		"Vilhadran", "Chaeros", "Yaymar", "Orax", "Laurentix",
		"Belisimar", "Vigilatum", "Korolis", "Stryken", "Tephaine",
		"Chinchare", "Galathamar", "Lordran", "Thasia", "Lycosidae",
		"Purgatrex", "Sabbatorus", "Lysades", "Jerulas", "Ornsworld",
		"Treconandal", "Jubal", "Mordian", "Khardeph", "Anticanis",
		"Landersund", "Aquasulis", "Uristes", "Euphrate", "Menazoid",
		"Jaego", "Canemara", "Seadelant", "Ostrola", "Ilbira",
		"Carshim", "Addolorata", "Dolsene", "Bolanion", "Solveig",
		"Frengold", "Urdesh", "Fornax", "Cociaminus", "Verghast",
		"Ancreon", "Amedeo", "Armatura", "Nuceria", "Konor",
		"Isstvan", "Paramar", "Bucephalon", "Ghourra", "Kerondys",
		"Lyubov", "Parthenope", "Rosangela", "Sapiencia", "Summaminus",
		"Taliscant", "Stalinvast", "Denova", "Tibrias", "Polonus",
		"Petrostock", "Tunusk", "Venady", "Voltemand", "Anark Zeta",
		"Atar-Median", "Cabulis", "Enceladus", "Sarum", "Incaldion",
		"M'khand", "Sabatine", "Orestes", "Stygies", "Vasalius",
		"Vordrast", "Boonhaven", "Barbarus", "Mandragoran", "Anphelion",
		"Solstice", "Inwit", "Magdelene", "Ghorstangrad", "Kastorel",
		"Borsis", "Volistad", "Mortant", "Ogrolla", "Tallarax",
		"Viridios", "Somonor", "Urphir", "Loki", "Varsavus",
		"Vagorn", "Zeist", "Sigilare", "Aeschylrai", "Accatran",
		"Metalica", "Kolossi", "Espandor", "Voltoris", "Draconis",
		"Luxor", "Au'taal", "Badab", "Alaric", "Yithic",
		"Tolkhan", "Crematis", "Pixor", "Bellephon", "Boucherin",
		"Chemos", "Corinthe", "Corrinos", "Cytheria", "Damnos",
		"Davin", "Drisinta", "Dynathi", "Eorcshia", "Gardinaal",
		"Fergax", "Taros", "Garevo", "Blasted Heath", "Haletho",
		"Hammeront", "Honourum", "Nidus Diptera", "Optera", "Menopetra",
		"Jjojos", "Kaelas", "Ichar", "Jhanna", "Incaladion",
		"Iolac", "Krastellan", "Lunaphage", "Memlok", "Arradin",
		"M'khan", "Miral", "Neverlight", "Moloch", "Tatarstia",
		"Veracia", "New Veracia", "New Varsavus", "New Petrostock", "New Thasia",
		"Lohab", "Lalam", "Lowam", "Obsidia", "Nihilas",
		"Molech", "Olympia", "Pavonis", "Providence", "Radnar",
		"Sotha", "Sulis", "Niflheim", "Schindelgheist", "Jotunheim",
		"Tarturga", "Ursidhe-Ka", "Zathatethus", "Hynnes", "Ammonai",
		"Dirge", "Nexaris", "Circe", "Kallas", "Jursa",
		"Parmenio", "Quintarn", "Tycor", "Masali", "Mordan",
		"Frankonia", "Maesa", "Laconia", "Nicaea", "Hellsiris",
		"Apollonia", "Naogeddon", "Sarcosa", "Tanhaus", "Athelaq",
		"K'phra", "Athelaq", "Tyrannis", "Solitude", "Skgorria",
		"Atopiana", "Hataria", "Boneyard", "Hypnoth", "Hydraphur",
		"Barvaria", "Doranno", "Drathorian", "Kraeg", "Graia",
		"Minerva", "Gehenna", "Crematis", "Pixor", "Bellephon",
		"Boucherin", "Chemos", "Corinthe", "Corrinos", "Cytheria",
		"Damnos", "Davin", "Drisinta", "Dynathi", "Eorcshia",
		"Gardinaal", "Fergax", "Taros", "Garevo", "Blasted Heath",
		"Haletho", "Hammeront", "Honourum", "Nidus Diptera", "Optera",
		"Menopetra", "Jjojos", "Kaelas", "Ichar", "Jhanna",
		"Incaladion", "Iolac", "Krastellan", "Lunaphage", "Memlok",
		"Arradin", "M'khan", "Miral", "Neverlight", "Moloch",
		"Tatarstia", "Veracia", "New Veracia", "New Varsavus", "New Petrostock",
		"New Thasia", "Lohab", "Lalam", "Lowam", "Obsidia",
		"Nihilas", "Molech", "Olympia", "Pavonis", "Providence",
		"Radnar", "Sotha", "Sulis", "Niflheim", "Schindelgheist",
		"Jotunheim", "Tarturga", "Ursidhe-Ka", "Zathatethus", "Hynnes",
		"Ammonai", "Dirge", "Nexaris", "Circe", "Kallas",
		"Jursa", "Parmenio", "Quintarn", "Tycor", "Masali",
		"Mordan", "Frankonia", "Maesa", "Laconia", "Nicaea",
		"Hellsiris", "Apollonia", "Naogeddon", "Sarcosa", "Tanhaus",
		"Athelaq", "K'phra", "Athelaq", "Tyrannis", "Solitude",
		"Skgorria", "Atopiana", "Hataria", "Boneyard", "Hypnoth",
		"Hydraphur", "Barvaria", "Doranno", "Drathorian", "Kraeg",
		"Graia", "Mortarius", "Zindleschlitz", "Acteron", "Quintox",
		"Dreadhaven", "Pandorax", "Pythos", "Thandros", "Ymgarl",
		"Raeden", "Koralkal", "Zorastra", "Hagia", "Knowhere", 
		"Mattiax", "Wardian", "Airephal", "Xagem", "Cegorachi",
		"Jomungandr", "Nostramo", "Stygia", "Incanda", "Haeraphya",
		"Lycaeum", "Contqual", "Gorro", "Flint", "Deus",
		"Persya", "Heloeum", "Devilus", "Agathon", "Anvilus",
		"Vostroya", "Groznyj Grad", "Artaxerxes", "Solania", "Barathred",
		"Desperation", "Fargotia", "New Aiur", "New Stalinvast", "Beroghast",
		"Heilog's Star", "Azghrax", "Coriolanthe", "Krumpville", "Dimmamak",
		"Primordial Frost", "Mordax Prime", "Angelus", "Ephrath", "Theboze",
		"Urmox", "Felcarn", "Mathog", "Forrax", "Ganymethia",
		"Ghenna", "Bodt", "Haringvleet", "Hollonan", "Hexxo",
		"Hadriath", "Ironholm", "Hamilcar", "Kartheope", "Canis Canem",
		"Ksatella", "Magdellan", "Manticore", "Malodrax", "Castellax",
		"Thanatar", "Vraks", "Penumbra", "Siriua", "Impetus",
		"Bretonia", "Lesser Mantelius", "Botmur", "Signus Prime", "Quintaine",
		"Oranos", "Hyperion", "Leto", "Pervigilium", "Vergilian",
		"Zuerlais", "Ullanor", "Shadrac", "Sondheim", "Rostern",
		"Protheus", "Kronos", "Tartarus", "Portenus", "Borealum",
		"New Tanith", "Red Reach", "Bella", "Vaxhallia", "Varestus",
		"Gangrenous Rot", "Yaogeddon", "Ygetheddon", "Yoggoth", "Jagga",
		"Indra-sul", "Dregeddon", "Scarus", "Vieglehaven", "Callistus",
		"Majorial", "Cerastus", "Venator", "Macharia", "Loikik",
		"Erasmus", "Eskarne", "Dymphna", "Moritia Prime", "Borisia",
		"Carthage", "Suphera", "Ghourra", "Califor", "Tarant",
		"Chanicia", "Herodor", "Heskeloth", "Mehitabel", "Presarius",
		"Obermid", "New Tarant", "Pachuco", "Voltemand", "Bojana",
		"Gorgonia", "Pintax", "Xatill", "Nefalia", "Polmuss",
		"New Carthage", "Forsarr", "Capilene", "Minisotira", "Deneb",
		"Thea", "Ando", "Iapetus", "Klimt", "Astrakhan",
		"Atlas", "Veles", "Pannonia", "Murom", "Khorinis",
		"Endymion", "Vall Major", "Praste", "Korabaellan", "Korvaran",
		"Muoskaerl", "Alteraan", "Veritas", "Telenor", "Selene",
		"Climaxus", "Corkanium", "Peripheris", "Intarme", "Quintus Superior",
		"Zaporozhye", "Pontus", "Haliphax", "Perun", "Judean",
		"Felisian", "Nirn", "Biik", "Starrym", "Morrowynd",
		"Tintangiel", "Kuhrwax", "Avalon", "Vyndyalii", "Zaphonia",
		"Zinerra", "Ullatarin", "Vaelis", "Chimaera", "Arkhamis",
		"Shadow Hearth", "Naeraea", "Pandora", "Lorvarian", "Nova Terra",
		"Roserias", "Rybiern", "Fastoon", "Belden", "Velden",
		"Grenada", "Raiken", "Koros", "Toledo", "Valyria",
		"Dead Cell", "Ghis", "Canukistan", "Gyratio", "Fistiox",
		"Adolphian", "Quarth", "Dornus Noangulus", "Dornari", "Husania",
		"Urslavik", "Creedia", "Ulfa", "Amerigo", "Tilfis",
		"Rovno", "Reno", "Constantinopolis", "Istanpulia", "Inuit",
		"Grave", "Vardenfeld", "Scorched Citadel", "Hammerfront", "Huldwynia",
		"Brabastis", "Diherim", "Yhette", "Retsam Retpahc", "Black Creek",
		"Tungusta", "Pugio", "Yavin", "Kup Teraz", "Serenity",
		"Kurimizon", "Tuskus", "Whitefall", "Zalia", "Regina",
		"Kim Jong", "Vandiria", "Pearia", "Sheol", "Libertania",
		"Woden", "Guderian", "Edelweiss", "Gotenland", "Theodorichshaven",
		"Batoria", "Betechton", "Natsigan", "Haboga", "Mard"
	]

	for(var i=0; i<100; i++){
	    if (ok==0){
			num=planet_names[rand];

	        if (instance_exists(obj_controller)){
				if (obj_controller.diplomacy=6){
					return(num);
					exit;
				}
			}
        
	        if (instance_exists(obj_controller)){
				if (string_count(num,obj_controller.star_names)==0){
					obj_controller.star_names+=num;
					name=num;
					ok=1;
				}
			}
	        if (!instance_exists(obj_controller)) then return(num);
	        if (num=="") then ok=0;
	    }
	}
}
