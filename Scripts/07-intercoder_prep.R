#### Preamble ####
# Purpose: Preps dataset for additional coders
# Author: Inessa De Angelis
# Date: 10 January 2024
# Contact: inessa.deangelis@mail.utoronto.ca 
# License: MIT
# Pre-requisites
  # All scripts to download, clean, and test raw Tweets

#### Workspace setup ####
library(tidyverse)
library(janitor)

## Read in datasets ##
# Chrystia #
final_cleaned_chrystia_tweets <- read_csv("Outputs/Data/Chrystia/final_cleaned_chrystia_tweets_update.csv")
show_col_types = FALSE

# Elizabeth #
final_cleaned_liz_tweets <- read_csv("Outputs/Data/Elizabeth/final_cleaned_liz_tweets.csv")
show_col_types = FALSE

# Laurel
final_cleaned_laurel_tweets <- read_csv("Outputs/Data/Laurel/final_cleaned_laurel_tweets.csv")
show_col_types = FALSE

#### Cleaning and prep ####
## Clean names ##
# Chrystia #
final_cleaned_chrystia_tweets =
  clean_names(final_cleaned_chrystia_tweets)

# Elizabeth #
final_cleaned_liz_tweets =
  clean_names(final_cleaned_liz_tweets)

# Laurel #
final_cleaned_laurel_tweets =
  clean_names(final_cleaned_laurel_tweets)

## Add politician name column ##
# Chrystia #
final_cleaned_chrystia_tweets1 =
  final_cleaned_chrystia_tweets |>
  mutate(name_of_politician = c("Chrystia Freeland"),
         .before = name) |>
  select(name_of_politician, name, verified, url, followers, following, bio, username, profile_picture, location, text, user_id, conversation_id)
head(final_cleaned_chrystia_tweets1)

# Elizabeth #
final_cleaned_liz_tweets1 =
  final_cleaned_liz_tweets |>
  mutate(name_of_politician = c("Elizabeth May"),
         .before = name) |>
  select(name_of_politician, name, verified, url, followers, following, bio, username, profile_picture, location, text, user_id, conversation_id)
head(final_cleaned_liz_tweets1)

# Laurel #
final_cleaned_laurel_tweets1 =
  final_cleaned_laurel_tweets |>
  mutate(name_of_politician = c("Laurel Collins"),
         .before = name) |>
  select(name_of_politician, name, verified, url, followers, following, bio, username, profile_picture, location, text, user_id, conversation_id)
head(final_cleaned_laurel_tweets1)

#### Combine all raw datasets ####
all_politician_tweets <- rbind(
  final_cleaned_chrystia_tweets1,
  final_cleaned_liz_tweets1,
  final_cleaned_laurel_tweets1
)
all_politician_tweets

#### Get sample of 10% of total Tweets ####
sample_of_tweets =
  all_politician_tweets |>
  slice_sample(n = 414)

## Save sample as CSV file ##
write_csv(x = sample_of_tweets, file = "Outputs/Data/sample_of_tweets.csv")

#### Add in columns of data I coded ####
finalized_cleaned_tweets <- read_csv("Outputs/Bell_Conference/Data/finalized_cleaned_tweets.csv")
show_col_types = FALSE

sample_of_tweets_inessa =
  finalized_cleaned_tweets |>
  filter(username == "MarkKirbyson" |
        username == "ChrisBr82782333" |
        username == "PierrePoilievre" |
        username == "TheTyronus" |
        username == "scannon_lou" |
        username == "FireVesta" |
        username == "jdscz2011" |
        username == "Narille1" |
        username == "Artur66489960" |
        username == "nairbmac" |
        username == "Justin36171950" |
        username == "FYItwentyfour7" |
        username == "MichaelTalevi" |
        username == "TurdohIsATurd" |
        username == "Cris_Paunescu" |
        username == "C_meneer" |
        username == "Badman_k20" |
        username == "JustSurfingTheX" |
        username == "AugustDeLonge" |
        username == "charlie44444" |
        username == "Fair_Sailing" |
        username == "In4medConsent" |
        username == "milosm7971" |
        username == "itsmekennyd" |
        username == "serenityonline1" |
        username == "agoristnomad" |
        username ==  "dougconroy95" |
        username == "GRothnie" |
        username == "tammy_cardinal" |
        username == "richnthin4ever" |
        username == "Tinkivinki1977" |
        username == "mccurdy62" |
        username == "YvonFaubert" |
        username == "GoosesChannel" |
        username == "Rick52893922" |
        username == "LCStephenL" |
        username == "Steele_MJ" |
        username == "william62560727" |
        username == "FreeLandofthe" |
        username == "blacklancr" |
        username == "orionsbeta" |
        username == "Mick_99_99" |
        username == "sitter_face" |
        username == "_centrists_" |
        username == "Kapz85" |
        username == "CdnModel" |
        username == "RichardPChurch" |
        username == "proudfringePam" |
        username == "Victoria59L" |
        username == "AlienatedAlber1" | 
        username == "MarkSim23101871" |
        username == "gogthedamien" |
        username == "consecon3" |
        username == "Methos2010" |
        username == "jaycola" |
        username == "kevinrns" | 
        username == "LindaJa47377725" |
        username == "Johnnybgood2212" |
        username == "kathyrowland4" |
        username == "Blackbetty1956" | 
        username == "zev_shalev" |
        username == "HowiseeitBosco" |
        username == "BentePRPhotoGal" |
        username == "gambitdude" | 
        username == "BBags9" |
        username == "prariegirl123" |
        username == "WallySa62518167" |
        username == "JasonFanjoy" | 
        username == "kenzjoans" |
        username == "muskoka99" |
        username == "DougParsons57" |
        username == " DrPeoplekind" | 
        username == "ActiveCf" |
        username == "DeMureDeb" |
        username == "rod69howard" |
        username == "liberalfoil" | 
        username == "edfred9713" |
        username == "Jason86888705" |
        username == "ErnieErnies1" |
        username == "BoomersFries" |
        username == "hutchken1" |
        username == "O_G_GT" |
        username == "Stanglife2" |
        username == "dmwalker72" |
        username == "MRwhitenorth" |
        username == " ChrisFolk5" |
        username == "FrankGrimes_Jr" |
        username == "steadfastcnd" |
        username == "DANTANMAN" |
        username == "miketmcmullen" |
        username == "MarcBurley5" |
        username == "Rebenga97" |
        username == "TycusB" |
        username == "tlar" |
        username == "LL_Cool_J11" |
        username == "JohnnySumatra" |
        username == "BernardinGlenn" |
        username == "theSonsOfIran" |
        username == "Spectator627661" |
        username == "wheatie4" |
        username == "Alexand67259586" |
        username == "Diana02355898" |
        username == "pvandutch" |
        username == "Ca13800Captain" |
        username == "Wimby80" |
        username == "RBPiecowye" |
        username == "RBPiecowye" |
        username == "AlbertaFirst19" |
        username == "Tinalee2323" |
        username == "WesternCanada3" |
        username == "AdcRussian" |
        username == "CheburekiMan" |
        username == "3dom4domfreedom" |
        username == "eye75992939" |
        username == "Euzcadi" |
        username == "NFLD01" |
        username == "krisster8" |
        username == "GRothnie" |
        username == "Whariwharangi" |
        username == "volt1977" |
        username == "TDownloaded" |
        username == "77bunker" |
        username == "ennerut" |
        username == "kdscott10" |
        username == "James999_travel" |
        username == "Terrysc93296047" |
        username == "DeceitinDrugs" |
        username == "Frank_fixguy" |
        username == "DeceitinDrugs" |
        username == "HonkHonkFYMM" |
        username == "AntonvWalraven" |
        username == "Joanna20222" |
        username == "wgamache" |
        username == "EYatscoff" |
        username == "william62560727" |
        username == "JPOilerfan" |
        username == "justacoolguy99" |
        username == "Mowgz_1" |
        username == "AlKrueger6" |
        username == "ben_clarke" |
        username == "Serpicoo3" |
        username == "stormbringer420" |
        username == "woodee4417" |
        username == "ixtarnum" |
        username == "vaibhavgp123" |
        username == "Mike05239102" |
        username == "Johnwanyz" |
        username == "bunkarama67" |
        username == "boozybottle69" |
        username == "LukeCharbonnea4" |
        username == "kamranski" |
        username == "varrick_charlie" |
        username == "Derek77600366" |
        username == "AndrewB57717003" |
        username == "OttawaGooch" |
        username == "ArashKamangira" |
        username == "richard6365887" |
        username == "FreedomFiveO" |
        username == "KAMD92" |
        username == "LoyalCanadian4u" |
        username == "JackDan110" |
        username == "MarkWanders1" |
        username == "bow_canadian" |
        username == "MayaPetr" |
        username == "RealityoftheSit" |
        username == "hn6xpwcqpf" |
        username == "scottflh" |
        username == "dgangbar" |
        username == "RonStew99065473" |
        username == "freedommoose" |
        username == "KellyWh78610223" |
        username == "DavidDo50170850" |
        username == "Pitbullatlarge" |
        username == "TradesGaber" |
        username == "Katetheskates" |
        username == "krisster8" |
        username == "bobby_biff" |
        username == "solarehse" |
        username == "groleau_matt" |
        username == "Gas1158Scott" |
        username == "HarvardRoller" |
        username == "Malibuss72Randy" |
        username == "CherieBeneteau" |
        username == "RashidHaddad1" |
        username == "chrismayne43" |
        username == "Paul_1969_W" |
        username == "FatAces" |
        username == "clangdon85" |
        username == "DS21M_BTC" |
        username == "Fletchtweety" |
        username == "Robdel584511331" |
        username == "FrankRoselli4" |
        username == "InZaneKicks" |
        username == "BlackTomThePyr8" |
        username == "alaricking" |
        username == "jonatha26052632" |
        username == "4est2J" |
        username == "NorthernTouch49" |
        username == "JimmymetricMac" |
        username == "patriotcanada1" |
        username == "GregPearcey" |
        username == "KellieJ03005616" |
        username == "Lovemyporkchops" |
        username == "MKalWW2" |
        username == "robertsondddd" |
        username == "gimmeabreak8" |
        username == "MdRgooner" |
        username == "MorisCan" |
        username == "ItCouldBeWors20" |
        username == "Hawkeye7518" |
        username == "lucas744744" |
        username == "Daryn_Kash" |
        username == "AllanJo777" |
        username == "crflames" |
        username == "Kim13420193" |
        username == "william62560727" |
        username == "donna_613" |
        username == "patti24454701" |
        username == "doconnoronca" |
        username == "TheBarrettTeam1" |
        username == "ghostmtne" |
        username == "dustinblondin" |
        username == "StrongNFree1" |
        username == "truecanadianli1" |
        username == "CdnComrade" |
        username == "1Objectivist" | 
        username == "LilyVetar" |
        username == "ChrystiaEgo" |
        username == "travelor19412" |
        username == "AgainstTrudeau" |
        username == "DANTANMAN" |
        username == "TBRO32152106" |
        username == "mattamyers" |
        username == "ottawabulldog" |
        username == "gearsofduty2" |
        username == "hopefulnotsure" |
        username == "KevinRa20212499" |
        username == "TruthIsDead22" |
        username == "yozora_yuzhou" |
        username == "kirmani_farrukh" |
        username == "PheonixMedic" |
        username == "envirosham" |
        username == "HankThomas2013" |
        username == "Susan71955832" |
        username == "chutealinge" |
        username == "Michael44700341" |
        username == "patriotquebec6" |
        username == "GeorgeHampton25" |
        username == "andrewfromvan" |
        username == "turr1959" |
        username == "_Edmontosaurus" |
        username == "HoyBoyHandyMan" |
        username == "3Dee10390029" |
        username == "lynnebourbon" |
        username == "jacobs_cda" |
        username == "millionaireplus" |
        username == "Ellie6811" |
        username == "SteveMa10361247" |
        username == "clarkstephan666" |
        username == "YvonneHooper20" |
        username == "flickrfumes" |
        username == "somecanuckguy" |
        username == "nancyvictoria" |
        username == "DaveCam84269143" |
        username == "per54007569" |
        username == "MikeLan26544235" |
        username == "Piccoq33" |
        username == "IslandFamily5" |
        username == "pds1st" |
        username == "Ticupolu" |
        username == "Tightlines38" |
        username == "RKotzma" |
        username == "poliright2" |
        username == "voteLabonte" |
        username == "JimProkj" |
        username == "Free_Alberta_" |
        username == "scannon_lou" |
        username == "LCravenmclean" |
        username == "ODSPoor" |
        username == "danimariefsp" |
        username == "cv570957" |
        username == "Ken_13_66" |
        username == "Ginge20161" |
        username == "all_peaceful" |
        username == "msjonesktown" |
        username == "MickeysSonia" |
        username == "moistbeaverr" |
        username == "Bracebridgegirl" |
        username == "KellyMalmberg" |
        username == "evilbanana5sos" |
        username == "GreenoneOld" |
        username == "kaizer_nick" |
        username == "b1ueboy6972" |
        username == "justin083" |
        username == "Yvonne43811975" |
        username == "eleventysigma" |
        username == "elonfactorio" |
        username == "StephenSwaney7" |
        username == "DoogerNorth" |
        username == "Newlem59924931" |
        username == "Rod85928236" |
        username == "PetersonMario49" |
        username == "ShelG2022" |
        username == "edwood3" |
        username == "Jewelanland" |
        username == "CharleyXRP" |
        username == "JimMurp77852985" |
        username == "purefreedom6" |
        username == "tmark9078" |
        username == "Terrence_STR" |
        username == "Know_Nothing_R" |
        username == "MalmstromEU" |
        username == "GeorgeHampton25" |
        username == "scambyarussian" |
        username == "BravoCharlie322" |
        username == "ceo_vance" |
        username == "stevethrower" |
        username == "axlefolley1" |
        username == "Baby59595" |
        username == "cedross" |
        username == "4Chriskendrick" |
        username == "BlakeburnGordon" |
        username == "ApplebyKevan" |
        username == "kennydob" |
        username == "ShannonUnger" |
        username == "Bobby_1745" |
        username == "tamlten" |
        username == "unhappy_frogg" |
        username == "RGAME2" |
        username == "DickInAboot_Eh" |
        username == "RedRed1972" |
        username == "TrENdShApeR" |
        username == "ArseholeCanuck" |
        username == "RamblingMadman3" |
        username == "gidget642" |
        username == "modermadness22" |
        username == "DrButchAtkinson" |
        username == "gd_pickles" |
        username == "Fabry_1408" |
        username == "1canadiancrypto" |
        username == "KennethALoveK2P" |
        username == "steadfastcnd" |
        username == "AnneFroment" |
        username == "RobAllan4" |
        username == "sea_is_angry" |
        username == "FringeMorticia" |
        username == "docbuffalo" |
        username == "AntiCo0kies" |
        username == "EggsyMcBennyYYC" |
        username == "PmorrisPeter" |
        username == "penpencilbrush" |
        username == "rvalm1996" |
        username == "Makoonwards" |
        username == "leftieswrong" |
        username == "rlb74" |
        username == "Michaelsign10" |
        username == "RennMoe" |
        username == "DRE_MILLY" |
        username == "laundered11" |
        username == "hd04inthewind" |
        username == "k_vanua" |
        username == "Turd_the_Ferg" |
        username == "Nick18996653" |
        username == "KieserBill" |
        username == "SBrunelle8" |
        username == "LeighPS007" |
        username == "IrwinJMainway" |
        username == "0x_RIT" |
        username == "Snapking22" |
        username == "2ManyTaxes" |
        username == "mat62434" |
        username == "maverick1979z" |
        username == "NormanSanderso4" |
        username == "canadaoldway" |
        username == "Gellersamdaisy" |
        username == "bruce_mcgonigal" |
        username == "Quozl99" |
        username == "Dee_Man_Bail_Eh" |
        username == "sighisoara1993" |
        username == "ElbowRiver28" |
        username == "MarcSeg00511027" |
        username == "Doc48944778" |
        username == "NovaMarkButler" |
        username == "MickeyJace76" |
        username == "FermiLevels" |
        username == "valleydeadpoole" |
        username == "passat2021" |
        username == "DavidCan2002" |
        username == "BradNor60401348" |
        username == "kisslady69" |
        username == "TimSippel2" |
        username == "z06zr1" |
        username == "MarkMe60" |
        username == "alyx007" |
        username == "Johnwanyz" |
        username == "RobkMacLeod" |
        username == "EricE60647080" |
        username == "ChessmanPatrick" |
        username == "T42or24T" |
        username == "useyourheadffs" |
        username == "frontporchjunky" |
        username == "Neiler1977" |
        username == "Cryptomonkey891" |
        username == "michaelbagby18" |
        username == "ColinRo98632633" |
        username == "KreminLorie" |
        username == "LewisPyer" |
        username == "richardhatch14" |
        username == "its9900" |
        username == "millerdavedude" |
        username == "colleenvoice" |
        username == "annethacker" |
        username == "cindymalone777" |
        username == "NeilGolley" 
        )
sample_of_tweets_inessa

## Save Inessa sample as CSV file ##
write_csv(x = sample_of_tweets_inessa, file = "Outputs/Data/inessa_sample_of_tweets.csv")


#### Get final 3 total Tweets ####
sample_of_tweets =
  all_politician_tweets |>
  slice_sample(n = 3)

write_csv(x = sample_of_tweets, file = "Outputs/Data/extra_sample_of_tweets.csv")

# Create second sample #
sample_of_tweets_inessa =
  finalized_cleaned_tweets |>
  filter(username == "KittyKaun" |
          username == "poorme_ca" |
          username == "Teejay84337460"
  )
sample_of_tweets_inessa

write_csv(x = sample_of_tweets_inessa, file = "Outputs/Data/extra_sample_of_tweets_inessa.csv")