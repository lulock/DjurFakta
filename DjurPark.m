//
//  FaktaBok.m
//  DjurFakta
//
//  Created by Lulu on 2015-07-01.
//  Copyright (c) 2015 Lulu. All rights reserved.
//

#import "DjurPark.h"

NSString *const kTitle = @"title";
NSString *const kIcon = @"icon";
NSString *const kFacts = @"facts";

@implementation DjurPark

- (instancetype)init
{
    self = [super init];
    if (self) {
        _fakta = @[@{kTitle: @"Delfiner",
                     kIcon: @"dolphin.png",
                     kFacts:@[
                  @"Flasknosdelfinerna lever i flockar med 10-15 individer i olika åldrar",
                  @"Oftast stannar döttrarna kvar hela livet i den flock de föds, men det händer också att de söker sig till en annan flock. ",
                  @"Delfiner kommunicerar med hjälp ljud som för oss låter som ett klickande eller visslingar",
                  @"Delfiner är mycket sociala djur och har ett stort behov av varandra. De har en rangordning i flocken som leds av en äldre, erfaren hona.",
                  @"Delfinens ögon är placerade på var sin sida av huvudet. På så sätt får de ett mycket stort synfält.",
                  @"Delfiner kan vissla, smälla, knarra, pysa och prutta. ",
                  @"Delfiner föder en unge eller kalv efter 12 månaders dräktighet.",
                  @"De vuxna hanarna ser man oftast i par eller i trios som håller ihop hela livet. De söker sig till honorna bara när det är dags för parning, men hjälper inte alls till med ungarna.",
                  @"Flasknosdelfiner återfinns i alla världshaven; Stillahavet, Atlanten, Medelhavet, Svarta havet och Indiska oceanen.",
                  @"Delfiner saknar helt luktsinne och de har inte heller ett smaksinne som påminner om vårt."]
                     },
                   @{kTitle: @"Elifanter",
                     kIcon: @"elephant.png",
                     kFacts:@[
                             @"På eftermiddagen får elefanterna skugga under träden eller så tar de ett svalkande bad i floden.",
                             @"När de möts, hälsar de genom att snusa på varandras tinningar.",
                             @"De asiatiska elefanterna i Indien är större än de som lever längre öster ut.",
                             @"Medelvikten hos en hane (tjur) är 3600 kg men de kan väga upp till 6 ton!",
                             @"Elefanter har stort behov av att hela tiden hålla ner sin kroppstemperatur eftersom deras hud har så liten yta jämfört med kroppsvolymen.",
                             @"Elefantflocken består av elefantkor med deras kalvar. Inom flocken finns en hierarki med en elefantko som ledare.",
                             @"Honan har små betar eller inga alls.",
                             @"Under sitt liv får elefanten 24 kindtänder, men bara fyra åt gången.",
                             @"Snabeln är en kombination av näsa och överläpp.",
                             @"De kraftiga tänderna kan krossa och mala födan."
                              ]},
                   @{kTitle: @"Lejon",
                     kIcon: @"lion.png",
                     kFacts:@[
                             @"Lejonfamiljen lever på Afrikas savanner och för det mesta är det honorna som jagar.",
                             @"De tyngre och starkare hanarna försvarar ungarna, maten och jaktområdet.",
                             @"Lejonen är som alla kattdjur köttätare och fäller stora bytesdjur.",
                             @"Lejonen kan jaga ensamma, i par eller i större flockar.",
                             @"Lejonen jagar främst zebror, bufflar och olika arter av antiloper men de kan även ta kalvar av noshörning och elefant eller fåglar och reptiler.",
                             @"Det händer att lejon stjäl byten från vildhundar, hyenor och geparder.",
                             @"Olika lejonflockar har visat sig ha olika jakttekniker beroende på var de lever.",
                             @"Lejonen kan få ungar året om men ofta föder honorna i flocken ungefär samtidigt och de hjälps då åt att ta hand om dem.",
                             @"I en kull är det vanligtvis mellan 1-4 ungar och de föds väl skyddade i ett gömsle och träffar inte övriga medlemmar i flocken på flera veckor.",
                             @"Unga hanar körs bort när de är i treårsåldern för att de så småningom ska kunna bilda en egen flock.",
                             @"Lejonens rytande är mäktigt och kan höras på flera kilometers avstånd.",
                             @"En sekvens av rytande börjar lugnt för att sedan öka i frekvens, volym och längd."
                             ]},
                   @{kTitle: @"Tigrar",
                     kIcon: @"tiger.png",
                     kFacts:@[
                             @"Tigern är en mytomspunnen och mycket karaktäristisk medlem bland kattdjuren.",
                             @"Amurtigern är det största nu levande kattdjuret i världen.",
                             @"En hona väger mellan 100 till 165 kg och har en kroppslängd på mellan 240 till 275 cm.",
                             @"Revirens storlek skiftar beroende på tillgång av lämpliga habitat och föda. ",
                             @"Amurtigern lever i ett betydligt kallare klimat än andra tigrar och genom anpassning får den därför tjockare päls på vintern och den har en kraftigare svans för att klara kylan.",
                             @"Tigerns ränder fungerar som ett utmärkt kamouflage bland gräs och grenar.",
                             @"Tigerungen föds med ränder på kroppen och även med den karaktäristiska vita fläcken på baksidan av öronen.",
                             @"Amurtigern lever i lövskogsområden och jagar främst kronhjort och vildsvin men även älg och rådjur.",
                             @"Tigern är inte uthållig och kan inte springa långa sträckor.",
                             @"När bytesdjuret är fällt kan tigern äta så mycket som 20 % av sin egen kroppsvikt bara på en natt."
                             ]},
                   @{kTitle: @"Zebra",
                     kIcon: @"zebra.png",
                     kFacts:@[
                             @"Grevyzebran är det största vilda hästdjuret och därmed även den största zebran.",
                             @"Grevyzebran lever i torra områden i Etiopien och norra Kenya. De är väl anpassade till denna miljö och kan klara sig upp till fem dagar utan att dricka vatten!",
                             @"Huvudfödan till Grevyzebran är gräs men de är opportunister och kan äta upp till 30 % buskar och blad om det är ont om gräs.",
                             @"Grevyzebran går ofta medan de betar och kan på så sätt förflytta sig långa sträckor ganska snabbt.",
                             @"Till skillnad från andra zebror lever grevyzebran i öppna flockar liknande vilda åsnor.",
                             @"Unga hanar och digivande ston med föl håller till på buskstäppen där de äter kort, grönt och mer näringsrikt gräs eftersom de behöver stor mängd näring för att växa respektive ge di.",
                             @"Reproduktion kan förekomma året runt, men flest födslar inträffar i april-juni innan regnperioden.",
                             @"Vi vet inte varför zebror är randiga. Den vanligaste förklaring att har dock lagts fram är att det skyddar mot rovdjur genom att förvirra dem när flocken sätter sig i rörelse. ",
                             @"Rändernas mönster är unikt för varje individ vilket kan ha betydelse för igenkänning."
                             ]},
                   @{kTitle: @"Girafer",
                     kIcon: @"giraffe.png",
                     kFacts:@[
                             @"Den lilla giraffkalven kommer till världen med en duns. Honan står upp när kalven föds och den faller ungefär två meter ned till marken.",
                             @"Efter bara några timmar reser den lilla giraffkalven sig på vingliga ben och börjar dia.",
                             @"Giraffen lever på Afrikas savanner.",
                             @"Den långa halsen behövs för att den ska nå upp till bladen i akaciaträden.",
                             @"Tack vare de långa ögonfransarna känner också giraffen om den kommer för nära en tagg och hinner blinka i tid innan ögat skadas.",
                             @"Av alla djur har giraffen längst hals. Men ändå har den bara sju halskotor, precis som vi människor och de flesta andra däggdjur.",
                             @"Giraffens hjärta är väldigt stort och väger cirka 10 kg! ",
                             @"Blodtrycket är dubbelt så högt som för andra stora däggdjur.",
                             @"Giraffen lägger sig sällan ned för att sova eftersom det tar för lång tid att resa sig upp om det kommer ett lejon och attackerar.",
                             @"Giraffen tar sig fram i en gång där båda benen på samma sida rör sig nästan samtidigt åt samma håll, så kallad passgång. Det finns teorier att detta beror på att giraffen ska vara mer stabil med tanke på sin gängliga kropp. "
                             ]}]
                   ;
    }
    return self;
}

@end
