-- Disable trigger to prevent recursive refresh
ALTER TABLE playgrounds DISABLE TRIGGER refresh_active_playgrounds_on_playground;

-- Import playgrounds
INSERT INTO playgrounds (name, address, location, description, has_supervised_activities, city, data_source)
VALUES
    (
        'Olarin asukaspuisto',
        'Meteorinkatu 7, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485095.0, 6672856.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Hilleri',
        'Hillerikuja 6, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502459.0, 6677431.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Kivenlahden asukaspuisto',
        'Merivirta 12 A, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479780.0, 6671150.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Vähätupa',
        'Vähäntuvantie 4a, 00390 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491857.0, 6680089.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Hiirisuon asukaspuisto',
        'Pohjoisentie 1, 02970 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485540.0, 6687811.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Latokasken asukaspuisto',
        'Lehtikaskentie 7, 02340 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481253.0, 6673973.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Maasälpä',
        'Maasälväntie 3a, 00710 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500718.0, 6680513.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Perhetalo Kuutti',
        'Merikasarminkatu 8, 00160 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498536.0, 6672684.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Maatulli',
        'Maatullinkuja 8 K, 00750 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501558.0, 6684678.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kannelmäki',
        'Kanneltie 1a, 00420 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493365.0, 6680978.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Torpparinmäki',
        'Käräjätuvantie 3, 00690 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497270.0, 6682899.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Arabia',
        'Arabianpolku 1 A, 00560 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498691.0, 6676831.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Jalopeura',
        'Jalopeurantie 8, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499315.0, 6684749.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Etupelto',
        'Etupellontie 8, 00680 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497769.0, 6681140.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kesanto',
        'Kesantotie 13, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500113.0, 6684237.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Strömberg',
        'Strömberginpolku 5, 00380 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492743.0, 6678404.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leppävaaran asukaspuisto',
        'Pikkulinnunreitti 16 A, 02660 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489985.0, 6679743.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Intia',
        'Intiankatu 44, 00560 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497734.0, 6677629.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kiiltotähti',
        'Ilomäentie 8, 00840 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503242.0, 6674230.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kipinäpuisto',
        'Kivikonkaari 31, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503503.0, 6680362.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Munkki',
        'Perustie 38, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492934.0, 6676385.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Brahe',
        'Porvoonkatu 4, 00510 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497237.0, 6675118.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Trumpetti',
        'Trumpettikuja 5, 00420 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492627.0, 6680613.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Viikkari',
        'Laivuri Petterin kuja 3, 00790 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501844.0, 6679703.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Nissaksen asukaspuisto ja avoin kohtaamispaikka, Hakunila',
        'Nissaksentie 9, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506857.0, 6685675.0), 3879), 4326),
        NULL,
        true,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipuisto Myllynsiipi',
        'Yläkivenrinne 6, 00920 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503703.0, 6678648.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Tapiolan asukaspuisto',
        'Louhenkuja 4, 02130 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488846.0, 6674730.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Seppä',
        'Sepänkatu 2, 00150 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496639.0, 6671775.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Sanna',
        'Pasilan puistotie 8, 00240 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495813.0, 6676284.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kimmo',
        'Turjantie 3, 00610 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496755.0, 6677443.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kiikku',
        'Kiikku 6, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504171.0, 6680342.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Mäkitorppa',
        'Mäkitorpantie 42, 00640 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497758.0, 6679541.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Vihertien asukaspuisto ja avoin kohtaamispaikka, Martinlaakso',
        'Vihertie 56 e, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491610.0, 6684518.0), 3879), 4326),
        NULL,
        true,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipuisto Taivallahti',
        'Pohjoinen Hesperiankatu 22, 00260 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495521.0, 6673758.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Kylätalo Palttinan asukaspuisto',
        'Tegelhagen 4, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477726.0, 6675669.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Unikko',
        'Unikkotie 8, 00720 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499470.0, 6681396.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Vallila',
        'Kangasalantie 11, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497633.0, 6676041.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Tullinpuomi',
        'Mannerheimintie 81a, 00270 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494920.0, 6675680.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Linnunrata',
        'Linnunradantie 8, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500376.0, 6685355.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Nurkka',
        'Nurkkatie 2, 00760 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503253.0, 6684313.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Nuoli',
        'Nuolitie 5, 00370 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492377.0, 6679599.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Piika',
        'Arentikuja 5, 00410 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492056.0, 6681289.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Maunula',
        'Kuusikkotie 2a, 00630 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496046.0, 6679820.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Perhetalo Naapuri / Asukastila Kivenkolo',
        'Kivikonkaari 11, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503772.0, 6680848.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kotinummi',
        'Uudenpellonkuja 5, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500868.0, 6682771.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Karakallion asukaspuisto',
        'Kotkatie 10, 02620 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486942.0, 6679708.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Kurranummi',
        'Kotinummentie 51, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500908.0, 6683903.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Rudolf',
        'Rudolfintie 8, 00870 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502194.0, 6673177.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Mustakivi',
        'Vedenottamontie 6, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507800.0, 6676869.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Tuorinniemi',
        'Agnetankuja 4, 00810 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502089.0, 6674898.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Suvelan asukaspuisto',
        'Kirstintie 24, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481846.0, 6676874.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Ruoholahti',
        'Laivapojankatu 8, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495504.0, 6671997.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Pisan asukaspuisto',
        'Vanha Pisantie 16, 02280 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482278.0, 6673575.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Ida',
        'Ida Aalbergin tie 8, 00400 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494257.0, 6679596.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Laurinniitty',
        'Laurinniityntie 14 P, 00440 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493147.0, 6679956.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Perhetalo Sahrami',
        'Kangasalantie 11, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497633.0, 6676041.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Orava',
        'Karhutie 11, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501798.0, 6676153.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Isoneva',
        'Isonnevantie 16a, 00320 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494016.0, 6677861.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Matinkylän asukaspuisto',
        'Matinraitti 12, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485922.0, 6671652.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Ulvila',
        'Ulvilantie 17b, 00350 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492543.0, 6677136.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Haruspuisto',
        'Meri-Rastilan tori 7, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506792.0, 6676652.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Mellunmäki',
        'Pyhätunturintie 2, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506820.0, 6680438.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Santahamina',
        'Kadettikouluntie 5, 00860 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502697.0, 6671046.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Linja',
        'Toinen linja 6, 00530 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496892.0, 6674464.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Perkkaan asukaspuisto',
        'Majurinpolku 3, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490177.0, 6677949.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Soukan asukaspuisto',
        'Soukankaari 10, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481601.0, 6669683.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Iso-Antti',
        'Valkovuokonpolku 20, 00930 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504688.0, 6677046.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Filpus',
        'Ampujantie 3, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500995.0, 6681863.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Lohikäärmepuisto',
        'Lohikäärmeenpolku 3, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507734.0, 6677661.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Lehdokki',
        'Kasöörinkatu 3, 00520 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496815.0, 6676200.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kankarepuisto',
        'Jakomäenpolku 6, 00770 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504440.0, 6683110.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Lampi',
        'Sakara 3, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504255.0, 6681109.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Salpausselkä',
        'Salpausseläntie 1 A, 00710 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500266.0, 6679899.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Järvenperän asukaspuisto',
        'Kulloonmäentie 20, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484019.0, 6681395.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Viiri',
        'Herukkakuja 3, 00300 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493891.0, 6676804.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Soihtu',
        'Ylipalontie 1, 00670 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496166.0, 6682426.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Puuskakulma',
        'Jollaksentie 67, 00850 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504153.0, 6672440.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Viherkallion asukaspuisto',
        'Kievarinpolku 8, 02710 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485858.0, 6679487.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Mankkaan asukaspuisto',
        'Vanhan-Mankkaan kuja 2 A, 02180 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487174.0, 6675558.0), 3879), 4326),
        NULL,
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Traktori',
        'Tyynelänkuja 7, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499809.0, 6682093.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Perhetalo Kajuutta',
        'Kaivonkatsojanpolku 4, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507620.0, 6676577.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Lahnalahti',
        'Lauttasaarentie 40a, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493132.0, 6671932.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Loru',
        'Töölönlahdenkatu 4, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496566.0, 6673500.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Roihuvuori',
        'Prinssintie 1, 00820 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503413.0, 6676695.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Rusthollari',
        'Rusthollarintie 15, 00910 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505534.0, 6677861.0), 3879), 4326),
        NULL,
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Lukupuronpuiston leikkipaikka',
        'Lukupurontie 1, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486845.0, 6674469.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Sampotorin leikkipaikka',
        'Kauppamiehentie 3 A, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489061.0, 6673760.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Vesalanpuisto',
        'Kiiliänkuja 2, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505419.0, 6680839.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kirjastopuisto',
        'Ratakuja 7, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502308.0, 6686865.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Apollonpuistikko',
        'Apollonkatu 13, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495848.0, 6673702.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Hopealehdon leikkipaikka',
        'Mielikinviita 12, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489271.0, 6674511.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ratsumiehenpuisto II',
        'Ratsumiehenpolku 4, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505817.0, 6685244.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Koivikkopuisto',
        'Koivikkorinne 3, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492219.0, 6685683.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Helsinginniemenpuisto',
        'Merikatu 29, 00150 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496510.0, 6671395.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Krapupuisto',
        'Krapukuja 2, 00890 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25509623.0, 6681931.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Suutarilanpuisto',
        'Kiertotähdentie 12, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500011.0, 6685060.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ullanpuistikko',
        'Tähtitorninkatu 8, 00140 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497369.0, 6672001.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Elopelto II',
        'Oljenkorsi 6, 01370 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503451.0, 6687351.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Nestorinpolun leikkipaikka',
        'Matinraitti 2, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486063.0, 6671721.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Metsäruusunpuisto',
        'Raatetie 24, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501579.0, 6688092.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kolmperän leikkipaikka',
        'Kolmperäntie 24, 02820 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25473787.0, 6681789.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Risto Rytin puisto',
        'Risto Rytin tie 24, 00570 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500823.0, 6674919.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Lehtovuori',
        'Lehtovuorenkatu 7, 00390 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490852.0, 6681624.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Muukalaispuiston leikkipaikka',
        'Lintuvaarantie 11, 02650 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489572.0, 6679022.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kulomäenkenttä',
        'Maauunintie 17, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503197.0, 6692476.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Juvanpuiston leikkipaikka',
        'Juvanpuistonkuja 1, 02920 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486329.0, 6684892.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Westendinpuiston leikkipaikka',
        'Hiiralantie 4, 02160 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488753.0, 6672290.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Violanpuisto',
        'Violankuja 2, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498140.0, 6676018.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Krenaatöörinpuiston leikkipaikka',
        'Vanha Hämeenkyläntie 44, 02680 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490781.0, 6680710.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Aimo Tukiaisen puisto',
        'Aimo Tukiaisen puisto, 00210 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493861.0, 6671039.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Päivölänpuisto',
        'Päivölänkuja 5, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501406.0, 6683395.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ensipuistikko',
        'Laivurinkatu 7, 00150 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496772.0, 6671434.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Lehtipuiston leikkipaikka',
        'Lehtitie 5 C, 02730 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486537.0, 6681991.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kahluuniitty',
        'Kahluuniityntie 7b, 01610 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493726.0, 6683825.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Ullaksenpuisto',
        'Kalkkihiekankuja 4, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507757.0, 6676509.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Matinmetsän leikkipaikka',
        'Mirjankuja 5, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485614.0, 6671448.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Rautkallio',
        'Vanha Rekolantie 12, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503819.0, 6689952.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kattilapohjan leikkipaikka',
        'Uunimestarintie 2, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480299.0, 6672009.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kalasatamanpuisto',
        'Parrulaituri 2, 00540 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498647.0, 6674591.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Väylänrinteen puisto',
        'Tammisalontie 6, 00830 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503373.0, 6675401.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Ulappatorin leikkipaikka',
        'Espoonlahdenkatu 9, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480876.0, 6670860.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kaisaniemi',
        'Kaisaniemen puistokuja 0, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497056.0, 6673499.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Eugen Schaumanin puisto',
        'Vanha Kelkkamäki 19, 00570 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500521.0, 6674462.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ojalehto',
        'Niinikuja 4, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503120.0, 6690009.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Hiihtomäentien puistikko',
        'Hiihtomäentie 26, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501754.0, 6676399.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kulloonmäenpuiston leikkipaikka',
        'Isännänpiha 9 B, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484317.0, 6681666.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Finnoonniityn puiston leikkipaikka',
        'Finnoonniitty 6, 02270 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483500.0, 6672775.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kivivuori',
        'Metsikköpolku 3, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492172.0, 6685255.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Toppelundinreunan leikkipaikka',
        'Toppelundinportti 1 A, 02170 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488068.0, 6672168.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Männikkö',
        'Männiköntie 20, 01760 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491747.0, 6695245.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kuopuksenpuisto',
        'Kuopuksentie 3, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494207.0, 6682431.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kirjanpuisto',
        'Kirjatyöntekijänkatu 12, 00170 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497556.0, 6673713.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Tervahaudanmetsä',
        'Ajomiehenkuja 23, 01400 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504954.0, 6692104.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Atlaspuisto',
        'Atlastie 12, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500567.0, 6690521.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kottaraispuisto',
        'Kottaraistie 10, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500250.0, 6683596.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Temppeliaukio',
        'Lutherinkatu 2, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495905.0, 6673397.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Simo Klemetinpojan puisto',
        'Simo Klemetinpojan tie 3, 00790 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501526.0, 6679877.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Laajametsä',
        'Raappavuorenreuna 2b, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490993.0, 6684706.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Sammalkallionkentän leikkipaikka',
        'Ruomelanraitti 5, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485374.0, 6673715.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Perhon kenttä',
        'Perhonkatu 8, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495679.0, 6673098.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Lohiapajanlahti',
        'Pajalahdentie 8, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493816.0, 6671752.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Tikanpuiston leikkipaikka',
        'Lintukorpi 14, 02650 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489235.0, 6679751.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kulkuspuisto',
        'Linnaistentie 4, 01640 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487929.0, 6681752.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kangaspelto',
        'Kangaspellontie 6, 00350 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493509.0, 6677331.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ojanvarsipuisto',
        'Virnapolku 2, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501637.0, 6682831.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Luuvaniemen korttelipuisto',
        'Luuvaniementie 3, 00350 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493542.0, 6676868.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Ahertajantien leikkipaikka',
        'Ahertajantie 8, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488534.0, 6673859.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Saarenpellon leikkipaikka',
        'Kurtinniityntie 16, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477542.0, 6673334.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ulvilanpuisto',
        'Raumantie 3, 00350 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493055.0, 6676939.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ehrnroothinpuisto',
        'Oolannintie 21, 01520 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497479.0, 6685552.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kannistonpuisto',
        'Kannistontie 34, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491820.0, 6690784.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kummelipuiston leikkipaikka',
        'Kummelipuisto 3, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478778.0, 6671979.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Odilammen leikkipaikka',
        'Elisantie 17, 02970 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486937.0, 6688011.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kulosaaren rantapuisto',
        'Kulosaaren puistotie 44, 00570 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500366.0, 6675262.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Punakivenpuisto',
        'Punakiventie 5, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491563.0, 6689679.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Töyrylaakson leikkipaikka',
        'Alamäentie 5, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482387.0, 6675787.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Lillhemtinpuisto',
        'Maakirjantie 21, 02250 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485230.0, 6674858.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kartanopuiston leikkipaikka',
        'Alberganesplanadi 12, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489594.0, 6678013.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Someronpuistikko',
        'Somerontie 3, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497661.0, 6675858.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Katajaharjuntie',
        'Katajaharjuntie 16, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492049.0, 6672830.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Landbackanpuiston Angry Birds -leikkipaikka',
        'Henttaan puistokatu 10, 02250 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485583.0, 6675027.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Klaukkalanpuisto',
        'Klaukkalantie 10, 00680 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497997.0, 6681555.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Metsänhenki',
        'Puunhaltijankuja 4, 01340 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502450.0, 6690185.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Aitanurmen leikkipaikka',
        'Aitovieri 3, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484777.0, 6681900.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kapteeninpuistikko',
        'Kapteeninkatu 20, 00140 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496953.0, 6671647.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hallainvuori',
        'Myllärintie 6, 00920 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502741.0, 6678620.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Säterinkentän leikkipaikka',
        'Säterinpuistontie, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488929.0, 6678129.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Alakartanonkujan leikkipaikka',
        'Alakartanonkuja 4, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481563.0, 6669330.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ruoholahdenpuisto',
        'Santakuja 3, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495459.0, 6672147.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kirjailijanpuisto',
        'Tavaststjernankatu 9, 00250 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495166.0, 6674820.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hepopuisto',
        'Heporinne 3, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505690.0, 6684595.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pakarituvanpuisto',
        'Pakarituvantie 4, 00410 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492457.0, 6681276.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kirkkojärvenrannan leikkipaikka',
        'Kylätorintie 7, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481605.0, 6677491.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Everstinpuiston leikkipaikka',
        'Everstinkatu 3, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490237.0, 6677725.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Vanhanväylän puisto',
        'Väylänrinne 3, 00830 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503383.0, 6675521.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Lastenlehto',
        'Ruoholahdenkatu 4, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496044.0, 6672604.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Artturi Kanniston puisto',
        'Artturi Kanniston tie 2, 00320 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494368.0, 6678365.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kotkavuori',
        'Koillisväylä 12, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493603.0, 6672214.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Suomensuonpuisto',
        'Suomensuonpolku 8, 00870 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502355.0, 6672318.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Tankovainio',
        'Fallpakankuja 15, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507017.0, 6679531.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Paasipuisto',
        'Marmorikuja 1, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491114.0, 6689673.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Karhuneva',
        'Karhunevantie 2, 00890 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25510567.0, 6684146.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Tuhkimo',
        'Tuhkimontie 10, 00820 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502868.0, 6676240.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Iivisniemenpuiston leikkipaikka 1 ja 2',
        'Iivisniemenaukio 2 A, 02260 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483020.0, 6670648.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Harjupuisto',
        'Harjutie 19, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500247.0, 6689477.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Hietakannas',
        'Väinämöisenkatu 25, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495382.0, 6673464.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kilterinmäki',
        'Kilterinrinne 9, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491954.0, 6682599.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kenraalinpuisto',
        'Huovintie 21, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492096.0, 6690311.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Hösmärinniityn leikkipaikka',
        'Hösmärinahde 3, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482120.0, 6676119.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Myllynsiipi kirkkopuisto',
        'Orpaanporras 12, 00920 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503679.0, 6679022.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kivitorpan puisto',
        'Kivitorpantie 5, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493370.0, 6676422.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Takomopuisto',
        'Kornetintie 18, 00380 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492914.0, 6678331.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kontiopuisto',
        'Kontiotie 17, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505076.0, 6694263.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Tähtitornin Vuori',
        'Tähtitorninkatu 1, 00130 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497241.0, 6672017.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kokkokallio',
        'Konalantie 5, 00370 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491853.0, 6679537.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Varhelanpuisto',
        'Varhelantie 2, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505739.0, 6680883.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Oskarinpuisto',
        'Oskarintie 12, 00930 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504295.0, 6676472.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kuloniityn leikkipaikka',
        'Kulomäenraitti 1, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482418.0, 6677204.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Poikkilaakso',
        'Puuskaniementie 21, 00850 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504602.0, 6672541.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Nuottamiehenpuiston leikkipaikka',
        'Tiinanpolku 2, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485745.0, 6670946.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Åvik/Tikkurilanranta',
        'Tikkurilantie 40, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502194.0, 6686336.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Väinön lehto',
        'Hiihtomäentie 36, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501773.0, 6676759.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Töölönlahden puisto',
        'Töölönlahden puisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496405.0, 6673774.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kaarlenpuisto',
        'Kaarlenkatu 17, 00510 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497280.0, 6674939.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Rikun puisto',
        'Yrttimaantie 50, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500235.0, 6684107.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Pattistenpellon leikkipaikka',
        'Haukilahdenkatu 4, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487661.0, 6672102.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Patterimäki',
        'Pajamäentie 1, 00360 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492210.0, 6678573.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Härkävaljakon puisto',
        'Härkävaljakontie 16, 00750 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501973.0, 6685700.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Lillhemtinpuiston leikkipaikka',
        'Vanha Lillhemtintie 6, 02250 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485230.0, 6674858.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Palokaivonkentän leikkipaikka',
        'Friisinniityntie 25, 02240 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484083.0, 6672768.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Nummisuutarinpuisto',
        'Nikonkuja 1, 00760 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503299.0, 6684502.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Rakettipuisto',
        'Ilotulitustie 12, 00930 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504060.0, 6676915.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Johanneksen puisto',
        'Johanneksentie 4, 00120 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496907.0, 6672078.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kontulan asukaspuisto',
        'Naapurintie 14, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504749.0, 6680241.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Satumaanpuisto',
        'Keijukaistenpolku 12, 00820 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503211.0, 6675959.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Viputien leikkipaikka',
        'Viputie 6, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484432.0, 6679934.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Talkookenttä',
        'Harjunreuna 16, 01230 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505070.0, 6683689.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Serkustenpuisto',
        'Sisarustentie 2, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494419.0, 6682383.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Oulunkylän siirtolapuutarha / Leikkipaikka',
        'Myllypellontie 6, 00650 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499106.0, 6680106.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Marielundinpuisto',
        'Marielundin puistotie 2, 00960 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508333.0, 6678502.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Viikinojanpuisto',
        'Mahlakuja 8, 00790 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501574.0, 6679155.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Pikku-Huopalahden puisto',
        'Taavetinkuja 11, 00300 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494161.0, 6676332.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Heittopaikka',
        'Keihäspolku 4, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505994.0, 6681226.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Nissbackanpuisto',
        'Nissaksentie 11, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506917.0, 6685607.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Nuottaniemen leikkipaikka',
        'Nuottatie 17, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485369.0, 6670240.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Pasuunapuisto',
        'Trumpettitie 1, 00420 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492806.0, 6680807.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Martinniitynpuiston leikkipaikka',
        'Martinniitty 10,, 02270 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482976.0, 6672183.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Tynnyripuiston leikkipaikka',
        'Puntaritie 6, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485231.0, 6672060.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Lokkalanlehto',
        'Perustie 7, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493472.0, 6676203.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Sannanpuisto',
        'Susannanpenger 1, 00240 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495674.0, 6676031.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Puotilan korttelipuisto',
        'Rusthollarintie 11, 00910 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505496.0, 6677700.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Poutamäki',
        'Pajamäentie 5, 00360 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492001.0, 6678386.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Sammonpuistikko',
        'Ilmarinkatu 8, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495650.0, 6673324.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kuusikallionkentän leikkipaikka',
        'Kuusikallionkuja 5, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485118.0, 6673684.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kaivomestarinaukion leikkipaikka',
        'Vieraskuja 6, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481289.0, 6677319.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kalliolaakson leikkipaikka',
        'Taimikuja 2, 02920 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485643.0, 6685937.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kurkijoentien leikkipaikka',
        'Kurkijoentie 24, 02140 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489237.0, 6676812.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Porslahden puisto',
        'Lintu sininen 3, 00960 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508471.0, 6678409.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kaupungintalon leikkipuisto',
        'Kauniaistentie 10, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485011.0, 6677392.0), 3879), 4326),
        NULL,
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Hiiriharjunpuisto',
        'Leinikkitie 48, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501496.0, 6689094.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Lindmaninkorpi',
        'Keidaskuja 8, 01380 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503892.0, 6685484.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kallioruohonpuisto',
        'Kallioruohonpolku 9, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501150.0, 6688169.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Amiraalinpuiston leikkipaikka',
        'Amiraalinpolku 4, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481262.0, 6670985.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Pihlajamäenpuiston leikkipaikka',
        'Pihlajamarjantie, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478797.0, 6671965.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Klaukkalanpuiston ryhmäpuutarha',
        'Pakilan Rantatie 1, 00680 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498082.0, 6681446.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Laajaniitty',
        'Kivimäentie 24, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491980.0, 6685337.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Etanapuisto',
        'Kiiltomadontie 26, 01480 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506507.0, 6692118.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Rantapuisto',
        'Pikku Huopalahden puisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493997.0, 6675981.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Siimapuisto',
        'Salakkakuja 12, 01490 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507402.0, 6693695.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Topeliuksen puisto',
        'Välskärinkatu 14, 00260 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495561.0, 6674232.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Korpimaan leikkipaikka',
        'Ikimetsä 4, 02300 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481623.0, 6671966.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Esikoisenpuisto',
        'Esikoisentie 5, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494227.0, 6682288.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kuhankeittäjänpuisto',
        'Kuhankeittäjäntie 5, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500129.0, 6682817.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Siltalanpuisto',
        'Pertunpellontie 5, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499311.0, 6683853.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Koukkuniemenpuiston leikkipaikka',
        'Koukkupolku 4, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486767.0, 6671332.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kellosaarenpuisto',
        'Kellosaarenranta 1, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495024.0, 6672135.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Mielikinpuisto',
        'Tuovintie 14, 01420 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505328.0, 6690134.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kaskenkaatajanpuiston leikkipaikka',
        'Kaskenkaatajantie 11, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488446.0, 6674367.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Huvilinnanaukion leikkipaikka',
        'Huvilinnanaukio 1 A, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489346.0, 6678119.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kerttulinpuisto',
        'Rouvienpolku 3, 00810 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502148.0, 6675129.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Maauuninpuisto',
        'Maauuninkuja 3, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503485.0, 6692528.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Velodrominrinne',
        'Topparikuja 10, 00520 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496721.0, 6676570.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kuohupuisto',
        'Uomarinne 5, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491625.0, 6684000.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Taikapuisto',
        'Kivikkotie 63, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501205.0, 6691441.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Spelttipuisto',
        'Vilkmanintie 7, 00680 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497390.0, 6682103.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Haarssinpuiston leikkipaikka',
        'Haarssintie 3, 02970 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484209.0, 6690103.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Pisanpuiston leikkipaikka',
        'Kukkumäenkuja 17, 02280 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481907.0, 6673767.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Otto-Iivari Meurmanin puiston leikkipaikka',
        'Menninkäisentie 7 B, 02110 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489559.0, 6674387.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Pirttipuisto',
        'Pirttipolku 3, 01680 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487718.0, 6685141.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Naalipuisto',
        'Naalipuistontie 4, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505093.0, 6693116.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Mikkelänpellon leikkipaikka',
        'Iso maantie 14, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479951.0, 6676745.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Laajavuori I',
        'Raiviosuonrinne 4, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491660.0, 6685297.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Sikurimyllyn puiston leikkipaikka',
        'Vermonkuja 6, 00370 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491218.0, 6678590.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Itäviitanpuiston leikkipaikka',
        'Itäviitta 4, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478586.0, 6672672.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Hylkeenpyytäjän kenttä',
        'Hylkeenpyytäjänkatu 1b, 00150 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496205.0, 6671394.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vetokannas',
        'Vantaanlaaksontie 1, 01610 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493370.0, 6684074.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kalapuiston leikkipaikka',
        'Kala-Maija 7, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485508.0, 6671783.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Tillinmäenkentän leikkipaikka',
        'Tillintie 5, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479229.0, 6672966.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Peltoniemenpuisto',
        'Peltoniemenkatu 5, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503522.0, 6689730.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Lumikintien leikkikenttä',
        'Lumikintie 7, 00820 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503000.0, 6676717.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Korppitie',
        'Korppitie 22, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502700.0, 6693629.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Näsinojanpuisto',
        'Näsinojantie 6, 00690 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496708.0, 6682937.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Poppelipuisto',
        'Pyökkikuja 13, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502328.0, 6689672.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Pakilan siirtolapuutarha / Leikkipaikka',
        'Pakilan rantatie 2, 00680 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498265.0, 6681768.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Toivo J. Särkän puisto',
        'Marjaniementie 1, 00930 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505274.0, 6676749.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Thurmaninpuiston lähiliikuntapaikka',
        'Kauniaistentie 11, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484664.0, 6677577.0), 3879), 4326),
        NULL,
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Haka',
        'Hakapolku 8, 01690 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494626.0, 6685546.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Estepuisto',
        'Estepolku 5, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505780.0, 6681438.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Valkamanpuiston leikkipaikka',
        'Lindankuja 5, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477043.0, 6675428.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Käräjäpuisto',
        'Käräjäkuja 4, 01510 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497154.0, 6686101.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Talin siirtolapuutarha / Leikkipaikka',
        'Pitäjänmäentie 32, 00360 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492251.0, 6678301.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Nöykkiönpuiston leikkipaikka',
        'Oxfotintie 8 B, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481514.0, 6672546.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kurkijoenpuiston leikkipaikka',
        'Kirvuntie 45 A, 02140 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489282.0, 6677027.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Lähdepuisto',
        'Lähdepuistonkäytävä 6, 01230 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505859.0, 6683564.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Auringonkehrän leikkipaikka',
        'Maapallonkuja 4, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484807.0, 6673243.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Ankkuripuiston leikkipaikka',
        'Kipparinkatu 5 A, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480514.0, 6670673.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Alppikylänpuisto',
        'Alppikylänkatu 1, 00770 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503733.0, 6683041.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Päivättärenpuisto',
        'Päivättärentie 5, 01420 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505732.0, 6689503.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Pitkänotkon leikkipaikka',
        'Pitkänotko, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482562.0, 6676369.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Runoilijanpuistikko',
        'Runoilijanpolku 2, 00650 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498571.0, 6679433.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Torkkelinpuistikko',
        'Torkkelinkuja 3, 00500 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497510.0, 6674732.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Iivisniemenpellon leikkipaikka',
        'Iivisniemenaukio 2 B, 02260 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483054.0, 6670520.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Niittysillanpuiston leikkipaikka',
        'Niittyportti 5, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487231.0, 6673028.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Otto-Iivari Meurmannin puisto',
        'Pohjolankatu 45, 00600 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497576.0, 6678251.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Ankkuripohjanpuisto',
        'Kourakuja 2, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480174.0, 6670449.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Krankanpuisto',
        'Krankantie 1, 00400 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494653.0, 6679080.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kirjastonpuisto',
        'Thurmaninaukio 4, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484770.0, 6677571.0), 3879), 4326),
        NULL,
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Autioniitty',
        'Lammasrinne 1, 01710 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489346.0, 6683275.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Westendin uimarannan leikkipaikka',
        'Kuninkaansatama, 02160 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489477.0, 6672890.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Tiilimäenlehto',
        'Laajalahdentie 6, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493009.0, 6676010.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hevosenkenkäpuisto',
        'Haahkakuja 7, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493041.0, 6671648.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Holmankorven leikkipaikka',
        'Holmankuja 2, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483806.0, 6673501.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ruutanapuisto',
        'Torivoudintie 3, 00640 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498233.0, 6679762.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Maarianmaanpuisto',
        'Harjannetie 36, 00710 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499453.0, 6679268.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Porttipuiston leikkipaikka',
        'Porttikuja 18, 02180 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487313.0, 6676358.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Matinkylän urheilupuiston leikkipaikka',
        'Matinkartanontie 1, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486258.0, 6671564.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Sateentien leikkipaikka',
        'Sateentie 3, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489571.0, 6673417.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ratsumiehenpuisto I',
        'Satulakuja 3, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506013.0, 6685351.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Tervasaari',
        'Tervasaarenkannas 3, 00170 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498296.0, 6673464.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Museon puisto',
        'Museokatu 5, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496052.0, 6673515.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Stenbergin puisto',
        'Urheilutie 17 A, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483748.0, 6677982.0), 3879), 4326),
        NULL,
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Tokoinranta',
        'Eläintarhantie 1, 00530 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497092.0, 6674126.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Solnan puisto',
        'Solnantie 25, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493269.0, 6675930.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Miilukorven kentän leikkipaikka',
        'Sysimaa 14, 02740 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480794.0, 6679289.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Lainekallion leikkipaikka',
        'Marinsatamanpolku 2 B, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479393.0, 6671275.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Asolanpuisto',
        'Kuusitie 3, 01400 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503160.0, 6690692.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Karviaismäki',
        'Karviaisrinne 2, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500402.0, 6681196.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Linnanpellonpuisto',
        'Viitankruununtie 11, 00950 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505902.0, 6679686.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vanhapuisto',
        'Klemetintie 17b, 01690 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495449.0, 6685499.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Keuruunpuisto',
        'Keuruuntie 11, 00510 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497637.0, 6675518.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Niittykummunpuiston leikkipaikka',
        'Niittykummuntie 3 B, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486493.0, 6672966.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ilkantien puisto',
        'Ilkantie 7, 00400 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494677.0, 6678897.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kukkakimpunpuisto',
        'Hiekkaharjuntie 19, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502264.0, 6687670.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Ymmerstanmäen leikkipaikka',
        'Ymmerstanmäki 15, 02750 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483795.0, 6676850.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Painiityn puiston leikkipaikka',
        'Painiityntie 23, 02680 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490772.0, 6680264.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Vallilan siirtolapuutarha / Leikkipaikka',
        'Elisabeth Kochin tie 1, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497662.0, 6676371.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Selkämerenpuisto',
        'Messitytönkatu 9, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495199.0, 6671898.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leppävaaran urheiluaukion Angry Birds- leikkipaikka',
        'Veräjäpellonkatu 17, 02650 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489120.0, 6679155.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Linnankoskenpuisto',
        'Linnankoskenkatu 8, 00250 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495474.0, 6674774.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hevoshaka I',
        'Hevoshaantie 8, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505935.0, 6684608.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Numeropuisto',
        'Tammistontie 14, 01520 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498056.0, 6684533.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Linnaistenmetsä',
        'Silakuja 14, 01640 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488041.0, 6682305.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Aittarivi',
        'Aittarivi 4, 01660 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490165.0, 6684085.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Reittipuisto',
        'Vantaanreitti 12, 01730 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491808.0, 6687591.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Sibeliuksen puisto',
        'Rajasaarentie 7, 00250 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495203.0, 6674449.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Varsasaaren kesämaja-alue / Leikkipaikka',
        'Varsasaari,  Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488899.0, 6670938.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Lammaspuisto I',
        'Lammastie 20, 01710 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489077.0, 6683125.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Siikajärven leikkipaikka',
        'Kotimäentie 2b, 02860 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25473632.0, 6683746.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Heinäpellonpuisto',
        'Heinäpellonpolku 4, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500513.0, 6682802.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Juoksuhaudanpuisto',
        'Vartiokuja 10, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506477.0, 6681903.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Lähetinpuiston leikkipaikka',
        'Lähetinpolku, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490295.0, 6678179.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kippotien leikkipaikka',
        'Kippotie 7, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480355.0, 6676330.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kelokallio',
        'Koivumäenkuja 10, 01230 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505560.0, 6683222.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pikku-Huopalahden puisto',
        'Tilkankuja 13, 00300 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494149.0, 6676080.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Veneentekijänpuisto',
        'Veneentekijäntie 20, 00210 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493724.0, 6671063.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hiidenkiukaanpuisto',
        'Lehdesniityntie 2, 00340 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491522.0, 6674092.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vallilanlaakso',
        'Elisabeth Kochin tie 3, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497462.0, 6676272.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Yläkartanonpolun leikkipaikka',
        'Yläkartanontie 33, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481353.0, 6669967.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Mellsteninniemen leikkipaikka',
        'Mellstenintie 6,, 02170 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487582.0, 6671353.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Jupperin rantapuiston leikkipaikka',
        'Rantatie 15, 02730 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486822.0, 6682727.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Mikkelänpuiston leikkipaikka',
        'Taalaritie 4, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479437.0, 6677066.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Ankkuripohjanpuiston leikkipaikka',
        'Kourakuja 2, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480174.0, 6670449.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Minkkipuisto',
        'Minkkitie 20, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504642.0, 6693105.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Haukiverkon leikkipaikka',
        'Haukiverkko 13 D, 02170 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487048.0, 6671815.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kuitinkallion leikkipaikka',
        'Täysikuu 5 B, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484654.0, 6673644.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Haarikkopuisto',
        'Haarikkotie 3, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502588.0, 6687901.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Paalupuisto',
        'Pohjolantie 6, 01260 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505958.0, 6687279.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Loviisanpuisto',
        'Porvoonkatu 26, 00510 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496739.0, 6675488.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Palttinapuiston leikkipaikka',
        'Tegelhagen 6, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477706.0, 6675621.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Bielken leikkipaikka',
        'Iso Mustasaari, rakennus C58 länsipuoli, 00190 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499416.0, 6670426.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Maitorpanpuisto',
        'Maitorpantie 6, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491167.0, 6690575.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Annala',
        'Hämeentie 154, 00560 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498741.0, 6677696.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Nihtimäen puiston leikkipaikka',
        'Nihtimäenkuja 5, 02630 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486487.0, 6677627.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Hans Floorin puiston leikkipaikka',
        'Anna Bildstenin polku 1, 02250 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485677.0, 6674838.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Rakuunapuisto',
        'Rakuunantie 1, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493722.0, 6676230.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Jokiuomanpuisto',
        'Eräkuja 7, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492090.0, 6684571.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Rastasniityn leikkipaikka',
        'Rastaanpesä 5, 02620 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486700.0, 6680404.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Vennynpuisto',
        'Venny Soldanin polku,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494132.0, 6683211.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kongsberginpuiston leikkipaikka',
        'Lokirinne 2 B, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481021.0, 6670736.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Lähdesilmän leikkipaikka',
        'Lähderanta 9, 02720 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485459.0, 6681156.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Isonneva',
        'Isonnevantie 16, 00320 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493992.0, 6677853.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kannupuisto',
        'Sorsavuorenrinne 1, 00810 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501924.0, 6675207.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Nurkka',
        'Kiviahontie 12, 00760 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503115.0, 6684198.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ohjaajanpuisto',
        'Ohjaajantie 9, 00400 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493856.0, 6679424.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Solvikinpuisto',
        'Aurinkotuulenkatu 11, 00990 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508682.0, 6676793.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Jakomäenkallio',
        'Louhikkotie 15, 00770 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504153.0, 6682676.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Johtokivenpuisto',
        'Lepokivenpolku 4, 00710 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500874.0, 6679959.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Saarnimäen leikkipaikka',
        'Saarnimäenkuja, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481437.0, 6676130.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Jokiniemenpuisto',
        'Jokiniementie 34, 00650 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498510.0, 6679639.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Myllykallio',
        'Vuorenpeikontie 7, 00820 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492771.0, 6671702.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Bockin puisto',
        'Johan Bockin kuja 8, 00720 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499226.0, 6680719.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Pallopuisto',
        'Maratontie 28b, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504963.0, 6681824.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Bäckbynpuisto',
        'Kuriirikuja 12, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500537.0, 6686244.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Tuohisniityn leikkipaikka',
        'Tuohistanhua 2, 02710 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485728.0, 6679970.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Trillapuiston leikkipaikka',
        'Kilonpuistonkatu 4, 02610 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488138.0, 6678157.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kotiportinpuiston leikkipaikka',
        'Kurkihirrentie 6, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480950.0, 6672872.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Viiripuiston länsiosan leikkipaikka',
        'Viirikuja 2, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480998.0, 6676381.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Liljapuisto',
        'Koiruohontie 5, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501346.0, 6686551.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kestinmäki',
        'Onkikuja 13, 01480 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506476.0, 6692749.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Tornitason leikkipaikka',
        'Tornitaso 4, 02120 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488758.0, 6673628.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Telakanpuistikko',
        'Perämiehenkatu 13, 00150 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496301.0, 6671862.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Naapurinmäen leikkipaikka',
        'Kylävainionkuja, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481854.0, 6677473.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Vilpunpolun leikkipaikka',
        'Vilpunpolku, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485917.0, 6671525.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Soihtupuiston leikkipaikka',
        'Soihtukaari, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484084.0, 6681049.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Sudenkuoppa',
        'Niinisaarentie 7, 00960 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507992.0, 6678989.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Korennonpuisto',
        'Korennontie 34, 01490 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507654.0, 6691971.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Juhannustien korttelipuisto',
        'Juhannustie 9, 00750 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501325.0, 6685919.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Askistonpuisto',
        'Askistonraitti 2, 01680 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487751.0, 6685437.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Jokiniemen puutarha',
        'Metsänhoitajankuja 3, 01370 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503240.0, 6686817.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Itärannan leikkipaikka',
        'Itäranta 20, 02110 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490209.0, 6673586.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Hakunilanraitti',
        'Hakunilanraitti 3, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505690.0, 6684472.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kirsikkapuro',
        'Pirkkolantie 9, 00630 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495707.0, 6679999.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Työmiehenpuistikko',
        'Lastenkodinkatu 9, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495744.0, 6672506.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ilolanpuisto',
        'Soittajankuja 2, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501390.0, 6690661.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pietaryrtinpuisto',
        'Pietaryrtintie 12, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501271.0, 6688611.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Uusmäen leikkipaikka',
        'Sotilastorpantie 5, 02680 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490557.0, 6680885.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ester Koskelaisen puisto',
        'Tuulikintie 33, 01420 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505742.0, 6690199.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kirvelipuisto',
        'Peltolantie 12b, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501221.0, 6686794.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Nurmilinnunpuiston leikkipaikka',
        'Rastaspuistontie 10, 02620 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487993.0, 6679949.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kolkkapojanpuisto',
        'Viinenkuja 8, 00370 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492119.0, 6679275.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Pikkukosken puistometsä',
        'Juhana-herttuan tie 13, 00600 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498274.0, 6678667.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Uudenrajanpuisto',
        'Uusiraja 7, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502174.0, 6689058.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Entressen leikkipaikka',
        'Kiltaraitti 2, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481107.0, 6676774.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leppälinnunkujan leikkipaikka',
        'Leppälinnunpolku 13, 02620 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488096.0, 6679740.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kaivopuisto',
        'Puistokatu 4, 00140 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497466.0, 6671462.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vuorimiehenpuistikko',
        'Vuorimiehenkatu 23a, 00140 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497118.0, 6671809.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Nuotiopuiston leikkipaikka',
        'Nuotiotie 6, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489232.0, 6677636.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kuttulammen leikkipaikka',
        'Laaksolahdentie 9 F, 02730 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486537.0, 6681318.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kesanto',
        'Kesantokuja 16, 01630 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488590.0, 6683779.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Otsolahdenpuiston leikkipaikka',
        'Itäranta 32, 02110 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490090.0, 6673761.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Simonkallionpuisto',
        'Simonkalliontie 14, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501115.0, 6688381.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kilonkallion leikkipaikka',
        'Kuninkaistenportti 22, 02610 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487590.0, 6678820.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Juliuksenpuisto',
        'Marsalkantie 1, 00570 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500001.0, 6674704.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Aitapuisto',
        'Ainontie 21b, 01630 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488311.0, 6683806.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Von Glanin puisto',
        'Kartanonkaari 24, 00410 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492629.0, 6681612.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Paukkulanpuisto',
        'Nallitie 6, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503287.0, 6680133.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Koivikkopuisto',
        'Koivikkotie 10, 00630 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495986.0, 6679085.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Noropuiston leikkipaikka',
        'Lugnetintie 11, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481098.0, 6675675.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kasavuoren leikkipuisto',
        'Mäntymäentie 37 A, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483600.0, 6677562.0), 3879), 4326),
        NULL,
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Joukinahon leikkipaikka',
        'Tillinmäentie 18, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480219.0, 6672938.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Strenginkulma',
        'Tähtimöntie 24, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502112.0, 6688219.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pyhän Laurin puisto',
        'Papinpöydänkuja 7, 00340 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491909.0, 6674274.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Laajasalon urheilupuisto',
        'Reposalmentie, 00840 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503349.0, 6673862.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Jengipolun leikkipaikka',
        'Savelanpuisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499817.0, 6680423.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kirjokivenpuisto',
        'Kirjokiventie 14, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494489.0, 6680838.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Varistonniitty',
        'Varistontie 7, 01660 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489752.0, 6684288.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Rajatorpanpuisto',
        'Piikkirinne 1b, 01650 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490669.0, 6682747.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Herttoniemen aluepuisto',
        'Siilitie 11, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502199.0, 6677645.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kiillepuisto',
        'Kiilletie 6, 00710 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500260.0, 6680176.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Porthaninpuistikko',
        'Porthaninkatu 8, 00530 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497332.0, 6674457.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kettupuisto',
        'Karhutie 44, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502058.0, 6676971.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Rukkilan puisto',
        'Värttinäkuja 1, 00410 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492360.0, 6682261.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vanha Kirkkopuisto',
        'Lönnrotinkatu 6, 00120 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496626.0, 6672585.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Repovuorenpuisto',
        'Repovuorentie 16, 00670 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495647.0, 6681962.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Vantinpuiston leikkipaikka',
        'Vantinpuisto 7, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479096.0, 6674728.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Aallonharjan leikkipaikka',
        'Tyrskykuja 5, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479981.0, 6670735.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kairakenttä',
        'Jänkäpolku 1, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506064.0, 6680854.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Laamanninpuisto',
        'Asessorintie 35, 00690 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497892.0, 6683211.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Pöllökallio',
        'Veitsitie 18, 01640 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489225.0, 6682280.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Herttoniemen siirtolapuutarha / Leikkipaikka',
        'Kipparlahdensilmukka 3, 00810 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501026.0, 6675571.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kulopuisto',
        'Kulorinne 4, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503784.0, 6692618.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Hakopuisto',
        'Hakokuja 3, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503467.0, 6690267.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Urheilukadun puistikko',
        'Urheilukatu 18, 00250 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495680.0, 6674848.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vaunukallio',
        'Hakunilantie 66, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506244.0, 6685554.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Laajavuori II',
        'Raappavuorenpolku 5, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491345.0, 6684983.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Laivatorin leikkipaikka',
        'Espoonlahdenranta 6, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480586.0, 6670958.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Savela',
        'Eteläniitynpolku 11, 00720 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499455.0, 6680620.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Ratsaspuisto / Esteetön leikkipaikka',
        'Ratsastie , 00280 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494809.0, 6676125.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Suinonpuiston leikkipaikka',
        'Suvisaarentie 27 B, 02380 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483810.0, 6668256.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Hesperianpuisto',
        'Mannerheimintie 15, 00260 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496118.0, 6674085.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Punakiventien puistometsä',
        'Vuosaarentie 10, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508099.0, 6677611.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Suuntimopuisto',
        'Suuntimotie 31, 00750 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502109.0, 6684859.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Reuna',
        'Reunakuja 1a, 01760 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491212.0, 6697047.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Koivuviidankentän leikkipaikka',
        'Koivukeppi 4, 02130 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488031.0, 6674630.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ojahaka',
        'Hakamaankuja 4, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492338.0, 6683588.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Oulunkyläntienkenttä',
        'Oulunkyläntie 29, 00600 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498162.0, 6678863.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Iltaruskonpuiston leikkipaikka',
        'Iltaruskontie 5, 02120 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488398.0, 6673793.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Haasia',
        'Suovatie 11, 01660 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489581.0, 6684051.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Tilkan mäki',
        'Koroistentie 8, 00280 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494487.0, 6676582.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vapaalan aukee',
        'Kierretie 50, 01650 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490117.0, 6683530.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Estetie',
        'Estetie 13, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494213.0, 6681731.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Tasakallion leikkipaikka',
        'Tahkokuja 22, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483022.0, 6676768.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Sahapuisto',
        'Sahatie 18, 01650 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490449.0, 6683071.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Mätäspolun puistikko',
        'Kalteentie 3, 00770 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504591.0, 6683607.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ylästön Mustikkasuo',
        'Peltovuorenkuja 6, 01690 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495330.0, 6685876.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Keulapuisto',
        'Keulatie 4, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507229.0, 6677338.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Sinirikonpuisto',
        'Peltolantie 7, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501636.0, 6686865.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Metsolansuo',
        'Peuratie 4b, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505484.0, 6693981.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Krämertinpuisto',
        'Krämertintie 6, 00620 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496472.0, 6678871.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Köydenpunojanpuisto',
        'Kalevankatu 59, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495859.0, 6672272.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Hummapuisto',
        'Hakunilanraitti 12, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505669.0, 6684849.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Onnenpuisto',
        'Onnentie 20, 00600 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497639.0, 6678595.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Myllymäki',
        'Tykkikuja 2, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506402.0, 6681073.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Ruutipuisto',
        'Linnoittajantie 4, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504115.0, 6681249.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Vanhan-Mankkaan puiston leikkipaikka',
        'Kokinkyläntie 8 A, 02180 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487139.0, 6675438.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Keskuspuisto',
        'Lepolantie 126, 00660 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495248.0, 6680494.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kuitinmäenkentän leikkipaikka',
        'Meteorinkatu 7, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485181.0, 6672891.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Saksanmäki',
        'Intiankatu 25, 00560 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498100.0, 6677379.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kärppäpuisto',
        'Jänötie 7, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504762.0, 6694321.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Lampi',
        'Lampipolku 12, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504536.0, 6680965.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hiidenkivenpuisto',
        'Hiidenkiventie 32, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500983.0, 6683593.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Viertolanranta',
        'Kaislatie 22d, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501298.0, 6686300.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Mustapuro',
        'Mustapuronpolku 4, 00900 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504484.0, 6678336.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kivinokan kesämaja-alue / Leikkipaikka',
        'Kivinokan uimaranta,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500314.0, 6675807.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Maistraatinpuisto',
        'Maistraatinkatu 3, 00240 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495762.0, 6676171.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Saunalahdenpuiston leikkipaikka',
        'Meriviitantie 18, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478280.0, 6672541.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Hurtigin puisto',
        'Kauppalantie 28, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484734.0, 6677309.0), 3879), 4326),
        NULL,
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Kuulapuisto',
        'Keihäspolku 11, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506106.0, 6681480.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kielipolun korttelipuisto',
        'Kielipolku 32, 00420 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493224.0, 6681445.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Akseli Toivosen kenttä',
        'Pellervontie 14, 00610 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497216.0, 6677923.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Tuuliniityn leikkipaikka',
        'Tuulikuja 3, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488758.0, 6673234.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Tapaninvainio',
        'Tapaninvainiontie 33, 00780 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499379.0, 6682826.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kuismapuisto',
        'Kuismatie 104a, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500458.0, 6688938.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Pihlajarinteen leikkipaikka',
        'Pajuviita 2-6, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483312.0, 6680256.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Vallilantien puisto',
        'Vallilantie 3, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497887.0, 6675541.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ojapuisto',
        'Ojahaanpolku 10a, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492043.0, 6683770.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Åbergin lastentalo',
        'Ajurinkuja 4, 02650 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489642.0, 6679225.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Tarha',
        'Havukoskenkatu 5, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504233.0, 6689809.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Seponkentän leikkipaikka',
        'Louhentie 10a, 02130 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488509.0, 6674831.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Lansapuronpuiston leikkipaikka',
        'Kilonpurontie 3, 02610 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487923.0, 6677903.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kallion kirkon tontti',
        'Castreninkatu 15, 00530 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497199.0, 6674688.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Niipperin leikkipaikka',
        'Isonpuronkuja 5, 02920 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486083.0, 6685573.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Ryytimaan leikkipaikka',
        'Salviapolku, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484096.0, 6680763.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Raudikkopuisto',
        'Raudikkokuja 5b, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505888.0, 6684841.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pakilanpuisto',
        'Palosuontie 2, 00660 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496562.0, 6681229.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Aittalehto',
        'Sotilaspellontie 7, 00390 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491315.0, 6680321.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Nurmikuukusen leikkipaikka',
        'Veininkatu 10, 02730 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487012.0, 6681178.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Marsinpuisto',
        'Marsinkuja 4b, 01480 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505536.0, 6692218.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Katajanokan puisto',
        'Kanavakatu 2, 00160 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497807.0, 6672785.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Puotilan leikkiniitty',
        'Rusthollarintie 7, 00910 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505234.0, 6677513.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Krattivuoren leikkipaikka',
        'Krattivuorentie 3, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480369.0, 6670098.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Käpypuisto',
        'Koivukylän puistotie 29, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502684.0, 6690408.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Neilikkapuisto',
        'Neilikkatie 2, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502153.0, 6686375.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Isonmännynpuisto',
        'Isonmännyntie 14, 01690 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495577.0, 6685176.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kuitinmäenpuiston leikkipaikka',
        'Meteorinkatu 7, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485132.0, 6672892.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Savikkapuisto',
        'Savikkatie 22, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501371.0, 6687118.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Thurmaninpuiston leikkipuisto',
        'Kauniaistentie 12, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484559.0, 6677441.0), 3879), 4326),
        NULL,
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Leppäkorvenmäki',
        'Leppäkorventie 35, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505033.0, 6693899.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Veijarivuoren puisto',
        'Itälahdenkatu 1, 00210 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493609.0, 6670302.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Tuurholmanpuisto',
        'Henrik Borgströmin tie 13, 00590 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501607.0, 6673880.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Aapraminpuisto',
        'Aapramintie 3, 01610 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492663.0, 6682684.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kuutamopuiston leikkipaikka',
        'Täysikuu 7, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484802.0, 6673479.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Rinkelipuiston leikkipaikka',
        'Timpurinkuja 4, 02650 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489618.0, 6678862.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Jukolan leikkipaikka',
        'Venlanpolku 1, 02180 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486444.0, 6675460.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Sinisiimeksen leikkipaikka',
        'Kimalaisenpolku 27, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483551.0, 6674088.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Antaksenpuisto',
        'Antaksenpolku 7b, 01510 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497140.0, 6686667.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Meripuisto',
        'Merikatu 7, 00140 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497066.0, 6671402.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Seitsenmerenpuiston leikkipaikka',
        'Merivirta 4, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479932.0, 6671285.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kumpulan siirtolapuutarha / Leikkipaikka',
        'Kalervonkatu 1a, 00610 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497583.0, 6677510.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Järvikorpi, leikkipaikka',
        'Järvikorpi 7, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481862.0, 6670587.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Nuorapuisto',
        'Solkikuja 7, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492183.0, 6682774.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Notkopuisto',
        'Kivikkotie 47, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500885.0, 6691366.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Viiripuiston leikkipaikka',
        'Viirikuja 4, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481082.0, 6676257.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Linnalahdenpuisto',
        'Linnalahdentie 1, 00950 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506387.0, 6678624.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Jalavapuiston leikkipaikka',
        'Heisipuunkuja 2 B, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481330.0, 6676029.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Maapallopuiston leikkipaikka',
        'Ellipsipolku 2 B, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484871.0, 6673123.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Itä-Hakkilanpuisto',
        'Kankurintie 34, 01260 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506406.0, 6687028.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Hyväntoivonpuisto',
        'Hyväntoivonpuisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495446.0, 6671579.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Niittypuiston leikkipaikka',
        'Niittykuja, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486757.0, 6672956.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Eestinaukion leikkipaikka',
        'Eestinahde 1 B, 02280 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482066.0, 6672961.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Laakavuori',
        'Saariselänkuja 8, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506594.0, 6680788.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Suursuonpuisto',
        'Suursuonpuisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496782.0, 6680092.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Ylämäenlaidan leikkipaikka',
        'Ylämäentie, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482380.0, 6676499.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kuusijärven leikkipaikka',
        'Kuusijärventie 3, 01260 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506194.0, 6689008.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kastellinpuisto',
        'Kastellinpolku 5, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507285.0, 6679801.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Leirimäki',
        'Kilterinkuja 3, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491630.0, 6682778.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Lammaspuisto II',
        'Mantelilastu 6, 01710 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489110.0, 6682902.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Matinkallionpuiston leikkipaikka',
        'Nelikkotie 6, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485763.0, 6672241.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Tonttumaan leikkipaikka',
        'Kotitontuntie 10, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487045.0, 6673522.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Hermanninpuisto',
        'Eläinlääkärinkatu 7, 00580 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498320.0, 6675470.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Renginmäki',
        'Puustellinpolku 19, 00410 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492329.0, 6681260.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Säätytalon puisto',
        'Ritarikatu 9, 00170 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497505.0, 6673167.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kiskonpuisto',
        'Kiskontie 4, 00280 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494662.0, 6676320.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kartanonkulma',
        'Yläkartanontie 33, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481353.0, 6669967.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Rastilankallio',
        'Rastilanpolku 1, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506887.0, 6677083.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Pikku-Keimolan puisto',
        'Keimolankaarre 6b, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490607.0, 6689412.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kvartsijuonenpuisto',
        'Kvartsijuonenkuja 4, 01730 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492164.0, 6689936.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Sinebrychoffin puisto',
        'Uudenmaankatu 46, 00120 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496368.0, 6672080.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Lystimäenpuiston leikkipaikka',
        'Syyskuja 9, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486135.0, 6673655.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Askistonmetsä',
        'Hakkuutie 28b, 01680 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487792.0, 6686425.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Osmonlehto',
        'Osmontie 10, 00610 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497184.0, 6677568.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kivikaudenpuisto',
        'Kivikirveenkuja 6, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491404.0, 6683306.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Mäenlaskijanpuisto "suopuisto"',
        'Mäenlaskijantie 2, 00810 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501693.0, 6675995.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Makasiinipuisto',
        'Makasiinipuisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496508.0, 6673478.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Sahrapuisto',
        'Kuokkapolku 6, 01630 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488942.0, 6683980.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Liisanpuistikko',
        'Liisankatu 1, 00170 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497825.0, 6673440.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Louhijanpuisto',
        'Louhijantie 4, 01610 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492888.0, 6683553.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Vallilanlaakso',
        'Kumpulanportti 1, 00520 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497267.0, 6676514.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Liinamäki',
        'Kaskikalliontie 6 B, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505923.0, 6686065.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Matinkylän uimarannan leikkipaikka',
        'Matinlahdenranta 3, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486459.0, 6670941.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Väinämöisenpuistikko',
        'Arkadiankatu 36, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495445.0, 6673140.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Delfiiniaukio',
        'Myyrmäenraitti 4, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491821.0, 6683638.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Valimomestarinpuisto',
        'Valimomestarinpolku 6, 00380 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492923.0, 6678500.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Valpurinpuisto',
        'Valpurintie 6, 00270 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494519.0, 6675588.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Helene Schjerfbeckin puisto',
        'Helene Schjerfbeckin polku,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493873.0, 6682790.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Marjaniemen siirtolapuutarha / Leikkipaikka',
        'Virvakuja 6, 00930 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503813.0, 6676906.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kuntopuisto',
        'Sivupolku 2, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506336.0, 6681423.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Myllykallio',
        'Isokaari 3, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492571.0, 6671680.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Haltialan kartano',
        'Kuninkaantammentie, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497443.0, 6684749.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Purotanhuan leikkipaikka',
        'Lehmustie 24, 02300 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482431.0, 6672182.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Koukkuniitty',
        'Koukkuniitynpolku 6, 01670 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492720.0, 6685595.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Saudarkrokurinpuiston leikkipaikka',
        'Ruskatie 5, 02970 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485501.0, 6688104.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Nupurinkartanonpuiston leikkipaikka',
        'Nupurinkartanontie 1, 02820 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477446.0, 6680611.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Koivupäänpuisto',
        'Koivupään puistopolku 6, 01730 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493589.0, 6689702.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Tähtimöpuiston leikkipaikka',
        'Rastaspuistontie 4 B, 02620 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487716.0, 6679936.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Rekolankenttä',
        'Eevantie 17, 01400 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504494.0, 6691110.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Riskupuisto',
        'Riskutie 22, 00950 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505750.0, 6678933.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Aamukasteenkujan puistikko',
        'Aamukasteenkuja 3, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500529.0, 6685857.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kuurinkentän leikkipaikka',
        'Hopeatie 4, 02750 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483958.0, 6675873.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kurkimäki',
        'Karpalokuja 7, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503898.0, 6679915.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Vuoritontunpuiston leikkipaikka',
        'Vuoritontuntie, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486870.0, 6673511.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Tapuli',
        'Kimnaasipolku 7, 00750 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501492.0, 6684508.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Planeetan päiväkodin leikkipaikka',
        'Ellipsikuja 11, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485056.0, 6672897.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Syvänsalmenpuiston leikkipaikka',
        'Syvänsalmenkatu 11, 02260 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483593.0, 6671003.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Talinlehto',
        'Talin puistotie 9, 00380 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492431.0, 6678099.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Frans Emil Sillanpään puisto',
        'Peuratie 14, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502142.0, 6676658.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Jyrkinkallio',
        'Henrikintie 11, 00370 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491511.0, 6679179.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ilveskorvenpuisto',
        'Mustalahdentie 4, 00960 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507624.0, 6678772.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Soukanahteen leikkipaikka',
        'Soukankaari 2 A, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481878.0, 6669805.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Matinniityn leikkipaikka',
        'Matinniitty 3, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485879.0, 6672000.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Virmajuurenpuisto',
        'Kurjenpolventie 13, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500953.0, 6686995.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Katri Valan puisto',
        'Käenkuja 8, 00500 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498029.0, 6674763.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Räckhalsinpuisto',
        'Andersinkatu 4, 01400 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502993.0, 6691279.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pilvipuisto',
        'Viherkummuntie 5b, 01670 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493210.0, 6684862.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Keinukenttä',
        'Iso Mustasaari, rakennus C54 itäpuoli, 00190 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499351.0, 6670395.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Keijuniityntien leikkipaikka',
        'Keijuniityntie 1, 02130 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489066.0, 6674925.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Rusakkopuiston leikkipaikka',
        'Kappalaisenkuja 5, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483390.0, 6679164.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Laivastopuisto',
        'Laivastokatu 1, 00160 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498243.0, 6672870.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hämeenlinnanväylän lähivirkistysalue',
        'Laitilantie 1, 00420 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493162.0, 6682378.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Puuhkalakinpuiston leikkipaikka',
        'Puuhkalakintie 15, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477635.0, 6675886.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Mäkitorpanpuisto',
        'Teinintie 11, 00640 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497702.0, 6679675.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Löydöspuisto',
        'Löydöstie 6, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492193.0, 6683336.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Sähköttäjänpuisto',
        'Vislauskuja 9, 00520 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496674.0, 6676026.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Pitkänkorvenpuiston leikkipaikka',
        'Sunantie 10, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481403.0, 6676414.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Iltapäivänsillan leikkipaikka',
        'Meteorinrata, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485243.0, 6672856.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Sipulipuisto',
        'Tarhurintie 13, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502663.0, 6688628.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Paloheinän leikkikenttä',
        'Kytöniityntie 2, 00670 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496466.0, 6681779.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Aino Ackten puisto',
        'Aino Acktén tie 16, 00400 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493903.0, 6679052.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Mikkelänrinteen leikkipaikka',
        'Iso maantie 19, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479840.0, 6676930.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Illenpuisto',
        'Hagelstamintie 12, 01520 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497887.0, 6685697.0), 3879), 4326),
        NULL,
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kaadepolku',
        'Kaadepolku 14a, 00770 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503923.0, 6682395.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Latokaskenpuiston leikkipaikka',
        'Latokaski 8, 02340 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480986.0, 6673799.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kuuttipuiston leikkipaikka',
        'Arttelikuja 7, 02260 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483444.0, 6670500.0), 3879), 4326),
        NULL,
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ryytimaan korttelipuisto',
        'Ryytimaantie 11, 00320 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494618.0, 6678239.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Anianpellonpuisto',
        'Anianpellontie 5, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500138.0, 6682180.0), 3879), 4326),
        NULL,
        false,
        'Helsinki',
        'municipality'
    );

-- Enable trigger to allow recursive refresh
ALTER TABLE playgrounds ENABLE TRIGGER refresh_active_playgrounds_on_playground;

REFRESH MATERIALIZED VIEW v_active_playgrounds;
