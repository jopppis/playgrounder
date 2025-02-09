-- Create extension if not exists
CREATE EXTENSION IF NOT EXISTS postgis;

-- Clear existing data
TRUNCATE TABLE playgrounds CASCADE;

-- Import playgrounds
INSERT INTO playgrounds (name, address, location, description, service_level)
VALUES
    (
        'Olarin asukaspuisto',
        'Meteorinkatu 7, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485095, 6672856), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/olarin-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/olarin-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Hilleri',
        'Hillerikuja 6, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502459, 6677431), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-hilleri\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-hilleri',
        1
    ),
    (
        'Kivenlahden asukaspuisto',
        'Merivirta 12 A, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479780, 6671150), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/kasvatus-ja-opetus/varhaiskasvatus/kivenlahden-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/kasvatus-ja-opetus/varhaiskasvatus/kivenlahden-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Vähätupa',
        'Vähäntuvantie 4a, 00390 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491857, 6680089), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-vahatupa\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-vahatupa',
        1
    ),
    (
        'Hiirisuon asukaspuisto',
        'Pohjoisentie 1, 02970 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485540, 6687811), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/kasvatus-ja-opetus/varhaiskasvatus/hiirisuon-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/kasvatus-ja-opetus/varhaiskasvatus/hiirisuon-asukaspuisto',
        2
    ),
    (
        'Latokasken asukaspuisto',
        'Lehtikaskentie 7, 02340 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481253, 6673973), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/latokasken-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/latokasken-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Maasälpä',
        'Maasälväntie 3a, 00710 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500718, 6680513), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-maasalpa\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-maasalpa',
        1
    ),
    (
        'Perhetalo Kuutti',
        'Merikasarminkatu 8, 00160 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498536, 6672684), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/perhetalo-kuutti\\nSupervised playground activities\\nhttps://www.hel.fi/en/childhood-and-education/family-house-kuutti',
        2
    ),
    (
        'Leikkipuisto Maatulli',
        'Maatullinkuja 8 K, 00750 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501558, 6684678), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-maatulli\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-maatulli',
        1
    ),
    (
        'Leikkipuisto Kannelmäki',
        'Kanneltie 1a, 00420 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493365, 6680978), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kannelmaki\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kannelmaki',
        1
    ),
    (
        'Leikkipuisto Torpparinmäki',
        'Käräjätuvantie 3, 00690 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497270, 6682899), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-ja-perhetalo-torpparinmaki\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-ja-perhetalo-torpparinmaki',
        1
    ),
    (
        'Leikkipuisto Arabia',
        'Arabianpolku 1 A, 00560 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498691, 6676831), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-arabia\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-arabia',
        1
    ),
    (
        'Leikkipuisto Jalopeura',
        'Jalopeurantie 8, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499315, 6684749), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-jalopeura\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-jalopeura',
        1
    ),
    (
        'Leikkipuisto Etupelto',
        'Etupellontie 8, 00680 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497769, 6681140), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-etupelto\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-etupelto',
        1
    ),
    (
        'Leikkipuisto Kesanto',
        'Kesantotie 13, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500113, 6684237), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kesanto\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kesanto',
        1
    ),
    (
        'Leikkipuisto Strömberg',
        'Strömberginpolku 5, 00380 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492743, 6678404), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-stromberg\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-stromberg',
        1
    ),
    (
        'Leppävaaran asukaspuisto',
        'Pikkulinnunreitti 16 A, 02660 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489985, 6679743), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/leppavaaran-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/leppavaaran-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Intia',
        'Intiankatu 44, 00560 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497734, 6677629), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-intia\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-intia',
        1
    ),
    (
        'Leikkipuisto Kiiltotähti',
        'Ilomäentie 8, 00840 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503242, 6674230), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kiiltotahti\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kiiltotahti',
        1
    ),
    (
        'Leikkipuisto Kipinäpuisto',
        'Kivikonkaari 31, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503503, 6680362), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kipinapuisto\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kipinapuisto',
        1
    ),
    (
        'Leikkipuisto Munkki',
        'Perustie 38, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492934, 6676385), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-munkki\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-munkki',
        1
    ),
    (
        'Leikkipuisto Brahe',
        'Porvoonkatu 4, 00510 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497237, 6675118), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-brahe\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-brahe',
        1
    ),
    (
        'Leikkipuisto Trumpetti',
        'Trumpettikuja 5, 00420 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492627, 6680613), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-trumpetti\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-trumpetti',
        1
    ),
    (
        'Leikkipuisto Viikkari',
        'Laivuri Petterin kuja 3, 00790 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501844, 6679703), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-viikkari\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-viikkari',
        1
    ),
    (
        'Nissaksen asukaspuisto ja avoin kohtaamispaikka, Hakunila',
        'Nissaksentie 9, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506857, 6685675), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.vantaa.fi/varhaiskasvatus_ja_koulutus/varhaiskasvatus/palvelut/asukaspuistot_ja_avoimet_paivakodit/hakunila\\nSupervised playground activities\\nhttps://www.vantaa.fi/varhaiskasvatus_ja_koulutus/varhaiskasvatus/palvelut/asukaspuistot_ja_avoimet_paivakodit/hakunila',
        2
    ),
    (
        'Leikkipuisto Myllynsiipi',
        'Yläkivenrinne 6, 00920 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503703, 6678648), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-myllynsiipi\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-myllynsiipi',
        1
    ),
    (
        'Tapiolan asukaspuisto',
        'Louhenkuja 4, 02130 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488846, 6674730), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/tapiolan-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/tapiolan-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Seppä',
        'Sepänkatu 2, 00150 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496639, 6671775), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-seppa\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-seppa',
        1
    ),
    (
        'Leikkipuisto Sanna',
        'Pasilan puistotie 8, 00240 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495813, 6676284), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-sanna\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-sanna',
        1
    ),
    (
        'Leikkipuisto Kimmo',
        'Turjantie 3, 00610 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496755, 6677443), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kimmo\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kimmo',
        1
    ),
    (
        'Leikkipuisto Kiikku',
        'Kiikku 6, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504171, 6680342), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kiikku\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kiikku',
        1
    ),
    (
        'Leikkipuisto Mäkitorppa',
        'Mäkitorpantie 42, 00640 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497758, 6679541), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-makitorppa\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-makitorppa',
        1
    ),
    (
        'Vihertien asukaspuisto ja avoin kohtaamispaikka, Martinlaakso',
        'Vihertie 56 e, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491610, 6684518), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.vantaa.fi/varhaiskasvatus_ja_koulutus/varhaiskasvatus/palvelut/asukaspuistot_ja_avoimet_paivakodit/myyrmaki\\nSupervised playground activities\\nhttps://www.vantaa.fi/day_care_and_education/early_childhood_education/early_childhood_education_options/residential_parks_and_open_day_care_centers',
        2
    ),
    (
        'Leikkipuisto Taivallahti',
        'Pohjoinen Hesperiankatu 22, 00260 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495521, 6673758), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-taivallahti\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-taivallahti',
        1
    ),
    (
        'Kylätalo Palttinan asukaspuisto',
        'Tegelhagen 4, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477726, 6675669), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/kasvatus-ja-opetus/varhaiskasvatus/kylatalo-palttinan-asukaspuisto#section-20137\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/kasvatus-ja-opetus/varhaiskasvatus/kylatalo-palttinan-asukaspuisto#section-20137',
        2
    ),
    (
        'Leikkipuisto Unikko',
        'Unikkotie 8, 00720 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499470, 6681396), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nSupervised playground activities',
        1
    ),
    (
        'Leikkipuisto Vallila',
        'Kangasalantie 11, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497633, 6676041), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-vallila\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-vallila',
        1
    ),
    (
        'Leikkipuisto Tullinpuomi',
        'Mannerheimintie 81a, 00270 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494920, 6675680), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-tullinpuomi\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-tullinpuomi',
        1
    ),
    (
        'Leikkipuisto Linnunrata',
        'Linnunradantie 8, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500376, 6685355), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-linnunrata\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-linnunrata',
        1
    ),
    (
        'Leikkipuisto Nurkka',
        'Nurkkatie 2, 00760 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503253, 6684313), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-nurkka\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-nurkka',
        1
    ),
    (
        'Leikkipuisto Nuoli',
        'Nuolitie 5, 00370 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492377, 6679599), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-nuoli\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-nuoli',
        1
    ),
    (
        'Leikkipuisto Piika',
        'Arentikuja 5, 00410 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492056, 6681289), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-piika\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-piika',
        1
    ),
    (
        'Leikkipuisto Maunula',
        'Kuusikkotie 2a, 00630 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496046, 6679820), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-maunula\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-maunula',
        1
    ),
    (
        'Perhetalo Naapuri / Asukastila Kivenkolo',
        'Kivikonkaari 11, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503772, 6680848), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/perhetalo-naapuri\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/perhetalo-naapuri',
        2
    ),
    (
        'Leikkipuisto Kotinummi',
        'Uudenpellonkuja 5, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500868, 6682771), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kotinummi\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kotinummi',
        1
    ),
    (
        'Karakallion asukaspuisto',
        'Kotkatie 10, 02620 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486942, 6679708), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/karakallion-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/karakallion-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Kurranummi',
        'Kotinummentie 51, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500908, 6683903), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kurranummi\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kurranummi',
        1
    ),
    (
        'Leikkipuisto Rudolf',
        'Rudolfintie 8, 00870 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502194, 6673177), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-rudolf\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-rudolf',
        1
    ),
    (
        'Leikkipuisto Mustakivi',
        'Vedenottamontie 6, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507800, 6676869), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-mustakivi\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-mustakivi',
        1
    ),
    (
        'Leikkipuisto Tuorinniemi',
        'Agnetankuja 4, 00810 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502089, 6674898), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-tuorinniemi\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-tuorinniemi',
        1
    ),
    (
        'Suvelan asukaspuisto',
        'Kirstintie 24, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481846, 6676874), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/suvelan-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/suvelan-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Ruoholahti',
        'Laivapojankatu 8, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495504, 6671997), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-ruoholahti\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-ruoholahti',
        1
    ),
    (
        'Pisan asukaspuisto',
        'Vanha Pisantie 16, 02280 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482278, 6673575), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/pisan-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/pisan-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Ida',
        'Ida Aalbergin tie 8, 00400 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494257, 6679596), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-ida\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-ida',
        1
    ),
    (
        'Leikkipuisto Laurinniitty',
        'Laurinniityntie 14 P, 00440 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493147, 6679956), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-laurinniitty\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-laurinniitty',
        1
    ),
    (
        'Perhetalo Sahrami',
        'Kangasalantie 11, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497633, 6676041), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/perhetalo-sahrami\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/perhetalo-sahrami',
        2
    ),
    (
        'Leikkipuisto Orava',
        'Karhutie 11, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501798, 6676153), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-orava\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-orava',
        1
    ),
    (
        'Leikkipuisto Isoneva',
        'Isonnevantie 16a, 00320 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494016, 6677861), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-isonneva\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-isonneva',
        1
    ),
    (
        'Matinkylän asukaspuisto',
        'Matinraitti 12, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485922, 6671652), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nSupervised playground activities',
        2
    ),
    (
        'Leikkipuisto Ulvila',
        'Ulvilantie 17b, 00350 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492543, 6677136), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-ulvila\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-ulvila',
        1
    ),
    (
        'Leikkipuisto Haruspuisto',
        'Meri-Rastilan tori 7, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506792, 6676652), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-haruspuisto\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-haruspuisto',
        1
    ),
    (
        'Leikkipuisto Mellunmäki',
        'Pyhätunturintie 2, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506820, 6680438), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-mellunmaki\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-mellunmaki',
        1
    ),
    (
        'Leikkipuisto Santahamina',
        'Kadettikouluntie 5, 00860 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502697, 6671046), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-santahamina\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-santahamina',
        1
    ),
    (
        'Leikkipuisto Linja',
        'Toinen linja 6, 00530 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496892, 6674464), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-linja\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-linja',
        1
    ),
    (
        'Perkkaan asukaspuisto',
        'Majurinpolku 3, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490177, 6677949), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/perkkaan-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/perkkaan-asukaspuisto',
        2
    ),
    (
        'Soukan asukaspuisto',
        'Soukankaari 10, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481601, 6669683), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/kasvatus-ja-opetus/varhaiskasvatus/soukan-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/kasvatus-ja-opetus/varhaiskasvatus/soukan-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Iso-Antti',
        'Valkovuokonpolku 20, 00930 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504688, 6677046), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-iso-antti\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-iso-antti',
        1
    ),
    (
        'Leikkipuisto Filpus',
        'Ampujantie 3, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500995, 6681863), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-filpus\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-filpus',
        1
    ),
    (
        'Leikkipuisto Lohikäärmepuisto',
        'Lohikäärmeenpolku 3, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507734, 6677661), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-lohikaarmepuisto\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-lohikaarmepuisto',
        1
    ),
    (
        'Leikkipuisto Lehdokki',
        'Kasöörinkatu 3, 00520 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496815, 6676200), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-lehdokki\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-lehdokki',
        1
    ),
    (
        'Leikkipuisto Kankarepuisto',
        'Jakomäenpolku 6, 00770 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504440, 6683110), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kankarepuisto\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-kankarepuisto',
        1
    ),
    (
        'Leikkipuisto Lampi',
        'Sakara 3, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504255, 6681109), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-lampi\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-lampi',
        1
    ),
    (
        'Leikkipuisto Salpausselkä',
        'Salpausseläntie 1 A, 00710 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500266, 6679899), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-salpausselka\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-salpausselka',
        1
    ),
    (
        'Järvenperän asukaspuisto',
        'Kulloonmäentie 20, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484019, 6681395), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/jarvenperan-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/jarvenperan-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Viiri',
        'Herukkakuja 3, 00300 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493891, 6676804), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-viiri\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-viiri',
        1
    ),
    (
        'Leikkipuisto Soihtu',
        'Ylipalontie 1, 00670 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496166, 6682426), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-soihtu\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-soihtu',
        1
    ),
    (
        'Leikkipuisto Puuskakulma',
        'Jollaksentie 67, 00850 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504153, 6672440), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-puuskakulma\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-puuskakulma',
        1
    ),
    (
        'Viherkallion asukaspuisto',
        'Kievarinpolku 8, 02710 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485858, 6679487), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.espoo.fi/fi/viherkallion-asukaspuisto\\nSupervised playground activities\\nhttps://www.espoo.fi/fi/viherkallion-asukaspuisto',
        2
    ),
    (
        'Mankkaan asukaspuisto',
        'Vanhan-Mankkaan kuja 2 A, 02180 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487174, 6675558), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://beta.espoo.fi/fi/kasvatus-ja-opetus/varhaiskasvatus/mankkaan-asukaspuisto\\nSupervised playground activities\\nhttps://beta.espoo.fi/fi/kasvatus-ja-opetus/varhaiskasvatus/mankkaan-asukaspuisto',
        2
    ),
    (
        'Leikkipuisto Traktori',
        'Tyynelänkuja 7, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499809, 6682093), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-traktori\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-traktori',
        1
    ),
    (
        'Perhetalo Kajuutta',
        'Kaivonkatsojanpolku 4, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507620, 6676577), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/perhetalo-kajuutta\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/perhetalo-kajuutta',
        2
    ),
    (
        'Leikkipuisto Lahnalahti',
        'Lauttasaarentie 40a, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493132, 6671932), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-lahnalahti\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-lahnalahti',
        1
    ),
    (
        'Leikkipuisto Loru',
        'Töölönlahdenkatu 4, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496566, 6673500), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-loru\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-loru',
        1
    ),
    (
        'Leikkipuisto Roihuvuori',
        'Prinssintie 1, 00820 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503413, 6676695), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-roihuvuori\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-roihuvuori',
        1
    ),
    (
        'Leikkipuisto Rusthollari',
        'Rusthollarintie 15, 00910 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505534, 6677861), 3879), 4326),
        E'Ohjattu leikkipuistotoiminta\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-rusthollari\\nSupervised playground activities\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuisto-rusthollari',
        1
    ),
    (
        'Lukupuronpuiston leikkipaikka',
        'Lukupurontie 1, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486845, 6674469), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/lukupuronpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/lukupuronpuisto-playground',
        2
    ),
    (
        'Sampotorin leikkipaikka',
        'Kauppamiehentie 3 A, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489061, 6673760), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/sampotorin-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/sampotori-playground',
        2
    ),
    (
        'Leikkipaikka Vesalanpuisto',
        'Kiiliänkuja 2, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505419, 6680839), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kirjastopuisto',
        'Ratakuja 7, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502308, 6686865), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Apollonpuistikko',
        'Apollonkatu 13, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495848, 6673702), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Hopealehdon leikkipaikka',
        'Mielikinviita 12, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489271, 6674511), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/hopealehdon-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/hopealehto-playground',
        2
    ),
    (
        'Leikkipaikka Ratsumiehenpuisto II',
        'Ratsumiehenpolku 4, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505817, 6685244), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Koivikkopuisto',
        'Koivikkorinne 3, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492219, 6685683), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Helsinginniemenpuisto',
        'Merikatu 29, 00150 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496510, 6671395), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Krapupuisto',
        'Krapukuja 2, 00890 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25509623, 6681931), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Suutarilanpuisto',
        'Kiertotähdentie 12, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500011, 6685060), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Ullanpuistikko',
        'Tähtitorninkatu 8, 00140 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497369, 6672001), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Elopelto II',
        'Oljenkorsi 6, 01370 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503451, 6687351), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Nestorinpolun leikkipaikka',
        'Matinraitti 2, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486063, 6671721), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/nestorinpolun-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/nestorinpolku-playground',
        2
    ),
    (
        'Leikkipaikka Metsäruusunpuisto',
        'Raatetie 24, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501579, 6688092), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Kolmperän leikkipaikka',
        'Kolmperäntie 24, 02820 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25473787, 6681789), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kolmperan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kolmpera-playground',
        2
    ),
    (
        'Leikkipaikka Risto Rytin puisto',
        'Risto Rytin tie 24, 00570 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500823, 6674919), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Lehtovuori',
        'Lehtovuorenkatu 7, 00390 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490852, 6681624), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Muukalaispuiston leikkipaikka',
        'Lintuvaarantie 11, 02650 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489572, 6679022), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/muukalaispuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/muukalaispuisto-playground',
        2
    ),
    (
        'Leikkipaikka Kulomäenkenttä',
        'Maauunintie 17, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503197, 6692476), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Juvanpuiston leikkipaikka',
        'Juvanpuistonkuja 1, 02920 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486329, 6684892), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/juvanpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/juvanpuisto-playground',
        2
    ),
    (
        'Westendinpuiston leikkipaikka',
        'Hiiralantie 4, 02160 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488753, 6672290), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/westendinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/westendinpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Violanpuisto',
        'Violankuja 2, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498140, 6676018), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Krenaatöörinpuiston leikkipaikka',
        'Vanha Hämeenkyläntie 44, 02680 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490781, 6680710), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/krenaatoorinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/krenatoorinpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Aimo Tukiaisen puisto',
        'Aimo Tukiaisen puisto, 00210 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493861, 6671039), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Päivölänpuisto',
        'Päivölänkuja 5, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501406, 6683395), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Ensipuistikko',
        'Laivurinkatu 7, 00150 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496772, 6671434), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Lehtipuiston leikkipaikka',
        'Lehtitie 5 C, 02730 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486537, 6681991), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/lehtipuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/lehtipuisto-playground',
        2
    ),
    (
        'Leikkipaikka Kahluuniitty',
        'Kahluuniityntie 7b, 01610 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493726, 6683825), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Ullaksenpuisto',
        'Kalkkihiekankuja 4, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507757, 6676509), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Matinmetsän leikkipaikka',
        'Mirjankuja 5, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485614, 6671448), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/matinmetsan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/matinmetsa-playground',
        2
    ),
    (
        'Leikkipaikka Rautkallio',
        'Vanha Rekolantie 12, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503819, 6689952), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Kattilapohjan leikkipaikka',
        'Uunimestarintie 2, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480299, 6672009), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kattilapohjan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kattilanpohja-playground',
        2
    ),
    (
        'Leikkipaikka Kalasatamanpuisto',
        'Parrulaituri 2, 00540 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498647, 6674591), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Väylänrinteen puisto',
        'Tammisalontie 6, 00830 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503373, 6675401), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Ulappatorin leikkipaikka',
        'Espoonlahdenkatu 9, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480876, 6670860), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/ulappatorin-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/ulappatori-playground',
        2
    ),
    (
        'Leikkipaikka Kaisaniemi',
        'Kaisaniemen puistokuja 0, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497056, 6673499), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Eugen Schaumanin puisto',
        'Vanha Kelkkamäki 19, 00570 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500521, 6674462), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Ojalehto',
        'Niinikuja 4, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503120, 6690009), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Hiihtomäentien puistikko',
        'Hiihtomäentie 26, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501754, 6676399), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kulloonmäenpuiston leikkipaikka',
        'Isännänpiha 9 B, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484317, 6681666), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kulloonmaenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kulloonmaenpuisto-playground',
        2
    ),
    (
        'Finnoonniityn puiston leikkipaikka',
        'Finnoonniitty 6, 02270 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483500, 6672775), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/finnoonniityn-puiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/finnoonniitty-playground',
        2
    ),
    (
        'Leikkipaikka Kivivuori',
        'Metsikköpolku 3, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492172, 6685255), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Toppelundinreunan leikkipaikka',
        'Toppelundinportti 1 A, 02170 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488068, 6672168), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/toppelundinreunan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/toppelundinportti-playground',
        2
    ),
    (
        'Leikkipaikka Männikkö',
        'Männiköntie 20, 01760 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491747, 6695245), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kuopuksenpuisto',
        'Kuopuksentie 3, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494207, 6682431), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kirjanpuisto',
        'Kirjatyöntekijänkatu 12, 00170 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497556, 6673713), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Tervahaudanmetsä',
        'Ajomiehenkuja 23, 01400 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504954, 6692104), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Atlaspuisto',
        'Atlastie 12, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500567, 6690521), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kottaraispuisto',
        'Kottaraistie 10, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500250, 6683596), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Temppeliaukio',
        'Lutherinkatu 2, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495905, 6673397), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Simo Klemetinpojan puisto',
        'Simo Klemetinpojan tie 3, 00790 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501526, 6679877), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Laajametsä',
        'Raappavuorenreuna 2b, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490993, 6684706), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Sammalkallionkentän leikkipaikka',
        'Ruomelanraitti 5, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485374, 6673715), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/sammalkallionkentan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/sammalkallionkentta-playground',
        2
    ),
    (
        'Leikkipaikka Perhon kenttä',
        'Perhonkatu 8, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495679, 6673098), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Lohiapajanlahti',
        'Pajalahdentie 8, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493816, 6671752), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Tikanpuiston leikkipaikka',
        'Lintukorpi 14, 02650 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489235, 6679751), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/tikanpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/tikanpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Kulkuspuisto',
        'Linnaistentie 4, 01640 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487929, 6681752), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kangaspelto',
        'Kangaspellontie 6, 00350 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493509, 6677331), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Ojanvarsipuisto',
        'Virnapolku 2, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501637, 6682831), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Luuvaniemen korttelipuisto',
        'Luuvaniementie 3, 00350 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493542, 6676868), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Ahertajantien leikkipaikka',
        'Ahertajantie 8, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488534, 6673859), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/ahertajantien-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/ahertajantie-playground',
        2
    ),
    (
        'Saarenpellon leikkipaikka',
        'Kurtinniityntie 16, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477542, 6673334), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/saarenpellon-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/saarenpelto-playground',
        2
    ),
    (
        'Leikkipaikka Ulvilanpuisto',
        'Raumantie 3, 00350 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493055, 6676939), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Ehrnroothinpuisto',
        'Oolannintie 21, 01520 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497479, 6685552), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kannistonpuisto',
        'Kannistontie 34, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491820, 6690784), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Kummelipuiston leikkipaikka',
        'Kummelipuisto 3, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478778, 6671979), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kummelipuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kummelipuisto-playground',
        2
    ),
    (
        'Odilammen leikkipaikka',
        'Elisantie 17, 02970 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486937, 6688011), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/odilammen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/odilampi-playground',
        2
    ),
    (
        'Leikkipaikka Kulosaaren rantapuisto',
        'Kulosaaren puistotie 44, 00570 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500366, 6675262), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Punakivenpuisto',
        'Punakiventie 5, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491563, 6689679), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Töyrylaakson leikkipaikka',
        'Alamäentie 5, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482387, 6675787), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/toyrylaakson-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/toyrylaakso-playground',
        2
    ),
    (
        'Lillhemtinpuisto',
        'Maakirjantie 21, 02250 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485230, 6674858), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nPlay areas (no supervised activities)',
        2
    ),
    (
        'Kartanopuiston leikkipaikka',
        'Alberganesplanadi 12, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489594, 6678013), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kartanopuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kartanopuisto-playground',
        2
    ),
    (
        'Leikkipaikka Someronpuistikko',
        'Somerontie 3, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497661, 6675858), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Katajaharjuntie',
        'Katajaharjuntie 16, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492049, 6672830), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Landbackanpuiston Angry Birds -leikkipaikka',
        'Henttaan puistokatu 10, 02250 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485583, 6675027), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/landbackanpuiston-angry-birds-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/landbacka-angry-birds-playground',
        2
    ),
    (
        'Leikkipaikka Klaukkalanpuisto',
        'Klaukkalantie 10, 00680 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497997, 6681555), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Metsänhenki',
        'Puunhaltijankuja 4, 01340 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502450, 6690185), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Aitanurmen leikkipaikka',
        'Aitovieri 3, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484777, 6681900), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/aitanurmen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/aitanurmi-playground',
        2
    ),
    (
        'Leikkipaikka Kapteeninpuistikko',
        'Kapteeninkatu 20, 00140 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496953, 6671647), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Hallainvuori',
        'Myllärintie 6, 00920 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502741, 6678620), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Säterinkentän leikkipaikka',
        'Säterinpuistontie, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488929, 6678129), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/saterinkentan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/saterinkentta-playground',
        2
    ),
    (
        'Alakartanonkujan leikkipaikka',
        'Alakartanonkuja 4, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481563, 6669330), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/alakartanonkujan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/alakartanonkuja-playground',
        2
    ),
    (
        'Leikkipaikka Ruoholahdenpuisto',
        'Santakuja 3, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495459, 6672147), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kirjailijanpuisto',
        'Tavaststjernankatu 9, 00250 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495166, 6674820), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Hepopuisto',
        'Heporinne 3, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505690, 6684595), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Pakarituvanpuisto',
        'Pakarituvantie 4, 00410 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492457, 6681276), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kirkkojärvenrannan leikkipaikka',
        'Kylätorintie 7, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481605, 6677491), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kirkkojarvenrannan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kirkkojarvenranta-playground',
        2
    ),
    (
        'Everstinpuiston leikkipaikka',
        'Everstinkatu 3, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490237, 6677725), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/everstinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/everstinpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Vanhanväylän puisto',
        'Väylänrinne 3, 00830 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503383, 6675521), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Lastenlehto',
        'Ruoholahdenkatu 4, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496044, 6672604), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Artturi Kanniston puisto',
        'Artturi Kanniston tie 2, 00320 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494368, 6678365), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kotkavuori',
        'Koillisväylä 12, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493603, 6672214), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Suomensuonpuisto',
        'Suomensuonpolku 8, 00870 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502355, 6672318), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Tankovainio',
        'Fallpakankuja 15, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507017, 6679531), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Paasipuisto',
        'Marmorikuja 1, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491114, 6689673), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Karhuneva',
        'Karhunevantie 2, 00890 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25510567, 6684146), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Tuhkimo',
        'Tuhkimontie 10, 00820 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502868, 6676240), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Iivisniemenpuiston leikkipaikka 1 ja 2',
        'Iivisniemenaukio 2 A, 02260 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483020, 6670648), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/iivisniemenpuiston-leikkipaikka-1-ja-2\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/iivisniemenpuisto-playground-1-and-2',
        2
    ),
    (
        'Leikkipaikka Harjupuisto',
        'Harjutie 19, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500247, 6689477), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Hietakannas',
        'Väinämöisenkatu 25, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495382, 6673464), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kilterinmäki',
        'Kilterinrinne 9, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491954, 6682599), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kenraalinpuisto',
        'Huovintie 21, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492096, 6690311), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Hösmärinniityn leikkipaikka',
        'Hösmärinahde 3, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482120, 6676119), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/hosmarinniityn-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/hosmarinniitty-playground',
        2
    ),
    (
        'Leikkipaikka Myllynsiipi kirkkopuisto',
        'Orpaanporras 12, 00920 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503679, 6679022), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kivitorpan puisto',
        'Kivitorpantie 5, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493370, 6676422), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Takomopuisto',
        'Kornetintie 18, 00380 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492914, 6678331), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kontiopuisto',
        'Kontiotie 17, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505076, 6694263), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Tähtitornin Vuori',
        'Tähtitorninkatu 1, 00130 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497241, 6672017), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kokkokallio',
        'Konalantie 5, 00370 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491853, 6679537), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Varhelanpuisto',
        'Varhelantie 2, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505739, 6680883), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Oskarinpuisto',
        'Oskarintie 12, 00930 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504295, 6676472), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kuloniityn leikkipaikka',
        'Kulomäenraitti 1, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482418, 6677204), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kuloniityn-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kuloniitty-playground',
        2
    ),
    (
        'Leikkipaikka Poikkilaakso',
        'Puuskaniementie 21, 00850 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504602, 6672541), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Nuottamiehenpuiston leikkipaikka',
        'Tiinanpolku 2, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485745, 6670946), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/nuottamiehenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/nuottamiehenpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Åvik/Tikkurilanranta',
        'Tikkurilantie 40, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502194, 6686336), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Väinön lehto',
        'Hiihtomäentie 36, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501773, 6676759), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Töölönlahden puisto',
        'Töölönlahden puisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496405, 6673774), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kaarlenpuisto',
        'Kaarlenkatu 17, 00510 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497280, 6674939), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Rikun puisto',
        'Yrttimaantie 50, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500235, 6684107), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Pattistenpellon leikkipaikka',
        'Haukilahdenkatu 4, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487661, 6672102), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/pattistenpellon-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/pattistenpelto-playground',
        2
    ),
    (
        'Leikkipaikka Patterimäki',
        'Pajamäentie 1, 00360 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492210, 6678573), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Härkävaljakon puisto',
        'Härkävaljakontie 16, 00750 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501973, 6685700), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Lillhemtinpuiston leikkipaikka',
        'Vanha Lillhemtintie 6, 02250 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485230, 6674858), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/lillhemtinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/lillhemtinpuisto-playground-0',
        2
    ),
    (
        'Palokaivonkentän leikkipaikka',
        'Friisinniityntie 25, 02240 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484083, 6672768), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/palokaivonkentan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/palokaivonkentta-playground',
        2
    ),
    (
        'Leikkipaikka Nummisuutarinpuisto',
        'Nikonkuja 1, 00760 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503299, 6684502), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Rakettipuisto',
        'Ilotulitustie 12, 00930 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504060, 6676915), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Johanneksen puisto',
        'Johanneksentie 4, 00120 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496907, 6672078), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kontulan asukaspuisto',
        'Naapurintie 14, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504749, 6680241), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Satumaanpuisto',
        'Keijukaistenpolku 12, 00820 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503211, 6675959), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Viputien leikkipaikka',
        'Viputie 6, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484432, 6679934), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/viputien-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/viputie-playground',
        2
    ),
    (
        'Leikkipaikka Talkookenttä',
        'Harjunreuna 16, 01230 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505070, 6683689), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Serkustenpuisto',
        'Sisarustentie 2, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494419, 6682383), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Oulunkylän siirtolapuutarha / Leikkipaikka',
        'Myllypellontie 6, 00650 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499106, 6680106), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Marielundinpuisto',
        'Marielundin puistotie 2, 00960 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508333, 6678502), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Viikinojanpuisto',
        'Mahlakuja 8, 00790 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501574, 6679155), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Pikku-Huopalahden puisto',
        'Taavetinkuja 11, 00300 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494161, 6676332), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Heittopaikka',
        'Keihäspolku 4, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505994, 6681226), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Nissbackanpuisto',
        'Nissaksentie 11, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506917, 6685607), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Nuottaniemen leikkipaikka',
        'Nuottatie 17, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485369, 6670240), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/nuottaniemen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/nuottaniemi-playground',
        2
    ),
    (
        'Leikkipaikka Pasuunapuisto',
        'Trumpettitie 1, 00420 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492806, 6680807), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Martinniitynpuiston leikkipaikka',
        'Martinniitty 10,, 02270 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482976, 6672183), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/martinniitynpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/martinniitty-playground',
        2
    ),
    (
        'Tynnyripuiston leikkipaikka',
        'Puntaritie 6, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485231, 6672060), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/tynnyripuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/tynnyripuisto-playground',
        2
    ),
    (
        'Leikkipaikka Lokkalanlehto',
        'Perustie 7, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493472, 6676203), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Sannanpuisto',
        'Susannanpenger 1, 00240 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495674, 6676031), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Puotilan korttelipuisto',
        'Rusthollarintie 11, 00910 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505496, 6677700), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Poutamäki',
        'Pajamäentie 5, 00360 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492001, 6678386), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Sammonpuistikko',
        'Ilmarinkatu 8, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495650, 6673324), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kuusikallionkentän leikkipaikka',
        'Kuusikallionkuja 5, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485118, 6673684), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kuusikallionkentan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kuusikallionkentta-playground',
        2
    ),
    (
        'Kaivomestarinaukion leikkipaikka',
        'Vieraskuja 6, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481289, 6677319), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kaivomestarinaukion-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kaivomestarinaukio-playground',
        2
    ),
    (
        'Kalliolaakson leikkipaikka',
        'Taimikuja 2, 02920 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485643, 6685937), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kalliolaakson-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kallionlaakso-playground',
        2
    ),
    (
        'Kurkijoentien leikkipaikka',
        'Kurkijoentie 24, 02140 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489237, 6676812), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kurkijoentien-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kurkijoentie-playground',
        2
    ),
    (
        'Leikkipaikka Porslahden puisto',
        'Lintu sininen 3, 00960 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508471, 6678409), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kaupungintalon leikkipuisto',
        'Kauniaistentie 10, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485011, 6677392), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/kaupungintalon-leikkipuisto/\\nPlay areas (no supervised activities)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/kaupungintalon-leikkipuisto/',
        2
    ),
    (
        'Leikkipaikka Hiiriharjunpuisto',
        'Leinikkitie 48, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501496, 6689094), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Lindmaninkorpi',
        'Keidaskuja 8, 01380 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503892, 6685484), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kallioruohonpuisto',
        'Kallioruohonpolku 9, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501150, 6688169), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Amiraalinpuiston leikkipaikka',
        'Amiraalinpolku 4, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481262, 6670985), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/amiraalinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/amiraalin-puisto-playground',
        2
    ),
    (
        'Pihlajamäenpuiston leikkipaikka',
        'Pihlajamarjantie, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478797, 6671965), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/pihlajamaenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/pihlajamaenpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Klaukkalanpuiston ryhmäpuutarha',
        'Pakilan Rantatie 1, 00680 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498082, 6681446), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Laajaniitty',
        'Kivimäentie 24, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491980, 6685337), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Etanapuisto',
        'Kiiltomadontie 26, 01480 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506507, 6692118), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Rantapuisto',
        'Pikku Huopalahden puisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493997, 6675981), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Siimapuisto',
        'Salakkakuja 12, 01490 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507402, 6693695), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Topeliuksen puisto',
        'Välskärinkatu 14, 00260 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495561, 6674232), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Korpimaan leikkipaikka',
        'Ikimetsä 4, 02300 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481623, 6671966), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/korpimaan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/korpimaa-playground',
        2
    ),
    (
        'Leikkipaikka Esikoisenpuisto',
        'Esikoisentie 5, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494227, 6682288), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kuhankeittäjänpuisto',
        'Kuhankeittäjäntie 5, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500129, 6682817), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Siltalanpuisto',
        'Pertunpellontie 5, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499311, 6683853), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Koukkuniemenpuiston leikkipaikka',
        'Koukkupolku 4, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486767, 6671332), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/koukkuniemenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/koukkuniemenpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Kellosaarenpuisto',
        'Kellosaarenranta 1, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495024, 6672135), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Mielikinpuisto',
        'Tuovintie 14, 01420 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505328, 6690134), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Kaskenkaatajanpuiston leikkipaikka',
        'Kaskenkaatajantie 11, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488446, 6674367), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kaskenkaatajanpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kaskenkaatajanpuisto-playground',
        2
    ),
    (
        'Huvilinnanaukion leikkipaikka',
        'Huvilinnanaukio 1 A, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489346, 6678119), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/huvilinnanaukion-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/huvilinnanaukio-playground',
        2
    ),
    (
        'Leikkipaikka Kerttulinpuisto',
        'Rouvienpolku 3, 00810 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502148, 6675129), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Maauuninpuisto',
        'Maauuninkuja 3, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503485, 6692528), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Velodrominrinne',
        'Topparikuja 10, 00520 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496721, 6676570), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kuohupuisto',
        'Uomarinne 5, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491625, 6684000), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Taikapuisto',
        'Kivikkotie 63, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501205, 6691441), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Spelttipuisto',
        'Vilkmanintie 7, 00680 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497390, 6682103), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Haarssinpuiston leikkipaikka',
        'Haarssintie 3, 02970 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484209, 6690103), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/haarssinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/haarssinpuisto-playground',
        2
    ),
    (
        'Pisanpuiston leikkipaikka',
        'Kukkumäenkuja 17, 02280 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481907, 6673767), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/pisanpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/pisanpuisto-playground',
        2
    ),
    (
        'Otto-Iivari Meurmanin puiston leikkipaikka',
        'Menninkäisentie 7 B, 02110 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489559, 6674387), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/otto-iivari-meurmanin-puiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/otto-iivari-meurman-puisto-playground',
        2
    ),
    (
        'Leikkipaikka Pirttipuisto',
        'Pirttipolku 3, 01680 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487718, 6685141), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Naalipuisto',
        'Naalipuistontie 4, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505093, 6693116), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Mikkelänpellon leikkipaikka',
        'Iso maantie 14, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479951, 6676745), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/mikkelanpellon-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/mikkelanpelto-playground',
        2
    ),
    (
        'Leikkipaikka Laajavuori I',
        'Raiviosuonrinne 4, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491660, 6685297), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Sikurimyllyn puiston leikkipaikka',
        'Vermonkuja 6, 00370 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491218, 6678590), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/sikurimyllyn-puiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/sikurimylly-park-playground',
        2
    ),
    (
        'Itäviitanpuiston leikkipaikka',
        'Itäviitta 4, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478586, 6672672), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/itaviitanpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/fi/toimipisteet/itaviitanpuiston-leikkipaikka',
        2
    ),
    (
        'Leikkipaikka Hylkeenpyytäjän kenttä',
        'Hylkeenpyytäjänkatu 1b, 00150 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496205, 6671394), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Vetokannas',
        'Vantaanlaaksontie 1, 01610 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493370, 6684074), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Kalapuiston leikkipaikka',
        'Kala-Maija 7, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485508, 6671783), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kalapuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kalapuisto-playground',
        2
    ),
    (
        'Tillinmäenkentän leikkipaikka',
        'Tillintie 5, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479229, 6672966), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/tillinmaenkentan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/tillinmaenkentta-playground',
        2
    ),
    (
        'Leikkipaikka Peltoniemenpuisto',
        'Peltoniemenkatu 5, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503522, 6689730), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Lumikintien leikkikenttä',
        'Lumikintie 7, 00820 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503000, 6676717), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Korppitie',
        'Korppitie 22, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502700, 6693629), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Näsinojanpuisto',
        'Näsinojantie 6, 00690 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496708, 6682937), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Poppelipuisto',
        'Pyökkikuja 13, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502328, 6689672), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Pakilan siirtolapuutarha / Leikkipaikka',
        'Pakilan rantatie 2, 00680 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498265, 6681768), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Toivo J. Särkän puisto',
        'Marjaniementie 1, 00930 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505274, 6676749), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Thurmaninpuiston lähiliikuntapaikka',
        'Kauniaistentie 11, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484664, 6677577), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nPlay areas (no supervised activities)',
        2
    ),
    (
        'Leikkipaikka Haka',
        'Hakapolku 8, 01690 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494626, 6685546), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Estepuisto',
        'Estepolku 5, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505780, 6681438), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Valkamanpuiston leikkipaikka',
        'Lindankuja 5, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477043, 6675428), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/valkamanpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/valkamanpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Käräjäpuisto',
        'Käräjäkuja 4, 01510 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497154, 6686101), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Talin siirtolapuutarha / Leikkipaikka',
        'Pitäjänmäentie 32, 00360 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492251, 6678301), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Nöykkiönpuiston leikkipaikka',
        'Oxfotintie 8 B, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481514, 6672546), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/noykkionpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/noykkionpuisto-playground',
        2
    ),
    (
        'Kurkijoenpuiston leikkipaikka',
        'Kirvuntie 45 A, 02140 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489282, 6677027), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kurkijoenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kurkijoenpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Lähdepuisto',
        'Lähdepuistonkäytävä 6, 01230 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505859, 6683564), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Auringonkehrän leikkipaikka',
        'Maapallonkuja 4, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484807, 6673243), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/auringonkehran-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/auringonkehra-playground',
        2
    ),
    (
        'Ankkuripuiston leikkipaikka',
        'Kipparinkatu 5 A, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480514, 6670673), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/ankkuripuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/ankkuripuisto-playground',
        2
    ),
    (
        'Leikkipaikka Alppikylänpuisto',
        'Alppikylänkatu 1, 00770 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503733, 6683041), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Päivättärenpuisto',
        'Päivättärentie 5, 01420 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505732, 6689503), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Pitkänotkon leikkipaikka',
        'Pitkänotko, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482562, 6676369), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/pitkanotkon-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/pitkannotko-playground',
        2
    ),
    (
        'Leikkipaikka Runoilijanpuistikko',
        'Runoilijanpolku 2, 00650 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498571, 6679433), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Torkkelinpuistikko',
        'Torkkelinkuja 3, 00500 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497510, 6674732), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Iivisniemenpellon leikkipaikka',
        'Iivisniemenaukio 2 B, 02260 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483054, 6670520), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/iivisniemenpellon-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/iivisniemenpelto-playground',
        2
    ),
    (
        'Niittysillanpuiston leikkipaikka',
        'Niittyportti 5, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487231, 6673028), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/niittysillanpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/niittysillanpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Otto-Iivari Meurmannin puisto',
        'Pohjolankatu 45, 00600 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497576, 6678251), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Ankkuripohjanpuisto',
        'Kourakuja 2, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480174, 6670449), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nPlay areas (no supervised activities)',
        2
    ),
    (
        'Leikkipaikka Krankanpuisto',
        'Krankantie 1, 00400 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494653, 6679080), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kirjastonpuisto',
        'Thurmaninaukio 4, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484770, 6677571), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/kirjastonpuisto/\\nPlay areas (no supervised activities)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/kirjastonpuisto/',
        2
    ),
    (
        'Leikkipaikka Autioniitty',
        'Lammasrinne 1, 01710 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489346, 6683275), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Westendin uimarannan leikkipaikka',
        'Kuninkaansatama, 02160 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489477, 6672890), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/westendin-uimarannan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/westend-beach-playground',
        2
    ),
    (
        'Leikkipaikka Tiilimäenlehto',
        'Laajalahdentie 6, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493009, 6676010), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Hevosenkenkäpuisto',
        'Haahkakuja 7, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493041, 6671648), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Holmankorven leikkipaikka',
        'Holmankuja 2, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483806, 6673501), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/holmankorven-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/holmankorpi-playground',
        2
    ),
    (
        'Leikkipaikka Ruutanapuisto',
        'Torivoudintie 3, 00640 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498233, 6679762), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Maarianmaanpuisto',
        'Harjannetie 36, 00710 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499453, 6679268), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Porttipuiston leikkipaikka',
        'Porttikuja 18, 02180 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487313, 6676358), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/porttipuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/porttipuisto-playground',
        2
    ),
    (
        'Matinkylän urheilupuiston leikkipaikka',
        'Matinkartanontie 1, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486258, 6671564), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/matinkylan-urheilupuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/fi/toimipisteet/matinkylan-urheilupuiston-leikkipaikka',
        2
    ),
    (
        'Sateentien leikkipaikka',
        'Sateentie 3, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489571, 6673417), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/sateentien-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/sateentie-playground',
        2
    ),
    (
        'Leikkipaikka Ratsumiehenpuisto I',
        'Satulakuja 3, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506013, 6685351), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Tervasaari',
        'Tervasaarenkannas 3, 00170 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498296, 6673464), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Museon puisto',
        'Museokatu 5, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496052, 6673515), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Stenbergin puisto',
        'Urheilutie 17 A, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483748, 6677982), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/stenbergin-puisto/\\nPlay areas (no supervised activities)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/stenbergin-puisto/',
        2
    ),
    (
        'Leikkipaikka Tokoinranta',
        'Eläintarhantie 1, 00530 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497092, 6674126), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Solnan puisto',
        'Solnantie 25, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493269, 6675930), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Miilukorven kentän leikkipaikka',
        'Sysimaa 14, 02740 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480794, 6679289), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/miilukorven-kentan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/miilunkorven-kentta-playground',
        2
    ),
    (
        'Lainekallion leikkipaikka',
        'Marinsatamanpolku 2 B, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479393, 6671275), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/lainekallion-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/lainekallio-playground',
        2
    ),
    (
        'Leikkipaikka Asolanpuisto',
        'Kuusitie 3, 01400 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503160, 6690692), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Karviaismäki',
        'Karviaisrinne 2, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500402, 6681196), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Linnanpellonpuisto',
        'Viitankruununtie 11, 00950 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505902, 6679686), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Vanhapuisto',
        'Klemetintie 17b, 01690 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495449, 6685499), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Keuruunpuisto',
        'Keuruuntie 11, 00510 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497637, 6675518), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Niittykummunpuiston leikkipaikka',
        'Niittykummuntie 3 B, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486493, 6672966), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/niittykummunpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/niittykummunpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Ilkantien puisto',
        'Ilkantie 7, 00400 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494677, 6678897), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kukkakimpunpuisto',
        'Hiekkaharjuntie 19, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502264, 6687670), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Ymmerstanmäen leikkipaikka',
        'Ymmerstanmäki 15, 02750 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483795, 6676850), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/ymmerstanmaen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/ymmerstanmaki-playground',
        2
    ),
    (
        'Painiityn puiston leikkipaikka',
        'Painiityntie 23, 02680 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490772, 6680264), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/painiityn-puiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/painiitty-park-playground',
        2
    ),
    (
        'Vallilan siirtolapuutarha / Leikkipaikka',
        'Elisabeth Kochin tie 1, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497662, 6676371), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Selkämerenpuisto',
        'Messitytönkatu 9, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495199, 6671898), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leppävaaran urheiluaukion Angry Birds- leikkipaikka',
        'Veräjäpellonkatu 17, 02650 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489120, 6679155), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/leppavaaran-urheiluaukion-angry-birds-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/angry-birds-playground-leppavaara',
        2
    ),
    (
        'Leikkipaikka Linnankoskenpuisto',
        'Linnankoskenkatu 8, 00250 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495474, 6674774), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Hevoshaka I',
        'Hevoshaantie 8, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505935, 6684608), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Numeropuisto',
        'Tammistontie 14, 01520 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498056, 6684533), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Linnaistenmetsä',
        'Silakuja 14, 01640 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488041, 6682305), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Aittarivi',
        'Aittarivi 4, 01660 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490165, 6684085), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Reittipuisto',
        'Vantaanreitti 12, 01730 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491808, 6687591), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Sibeliuksen puisto',
        'Rajasaarentie 7, 00250 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495203, 6674449), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Varsasaaren kesämaja-alue / Leikkipaikka',
        'Varsasaari,  Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488899, 6670938), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Lammaspuisto I',
        'Lammastie 20, 01710 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489077, 6683125), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Siikajärven leikkipaikka',
        'Kotimäentie 2b, 02860 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25473632, 6683746), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/siikajarven-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/siikajarvi-playground',
        2
    ),
    (
        'Leikkipaikka Heinäpellonpuisto',
        'Heinäpellonpolku 4, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500513, 6682802), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Juoksuhaudanpuisto',
        'Vartiokuja 10, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506477, 6681903), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Lähetinpuiston leikkipaikka',
        'Lähetinpolku, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490295, 6678179), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/lahetinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/lahetinpuisto-playground',
        2
    ),
    (
        'Kippotien leikkipaikka',
        'Kippotie 7, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480355, 6676330), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kippotien-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kippotie-playground',
        2
    ),
    (
        'Leikkipaikka Kelokallio',
        'Koivumäenkuja 10, 01230 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505560, 6683222), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Pikku-Huopalahden puisto',
        'Tilkankuja 13, 00300 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494149, 6676080), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Veneentekijänpuisto',
        'Veneentekijäntie 20, 00210 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493724, 6671063), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Hiidenkiukaanpuisto',
        'Lehdesniityntie 2, 00340 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491522, 6674092), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Vallilanlaakso',
        'Elisabeth Kochin tie 3, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497462, 6676272), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Yläkartanonpolun leikkipaikka',
        'Yläkartanontie 33, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481353, 6669967), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/ylakartanonpolun-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kartanonpuisto-playground',
        2
    ),
    (
        'Mellsteninniemen leikkipaikka',
        'Mellstenintie 6,, 02170 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487582, 6671353), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/mellsteninniemen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/mellsteninniemi-playground',
        2
    ),
    (
        'Jupperin rantapuiston leikkipaikka',
        'Rantatie 15, 02730 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486822, 6682727), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/jupperin-rantapuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/jupperi-playground',
        2
    ),
    (
        'Mikkelänpuiston leikkipaikka',
        'Taalaritie 4, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479437, 6677066), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/mikkelanpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/mikkelapuisto-playground',
        2
    ),
    (
        'Ankkuripohjanpuiston leikkipaikka',
        'Kourakuja 2, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480174, 6670449), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/ankkuripohjanpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/ankkurinpohjanpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Minkkipuisto',
        'Minkkitie 20, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504642, 6693105), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Haukiverkon leikkipaikka',
        'Haukiverkko 13 D, 02170 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487048, 6671815), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/haukiverkon-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/haukilahdenranta-playground',
        2
    ),
    (
        'Kuitinkallion leikkipaikka',
        'Täysikuu 5 B, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484654, 6673644), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kuitinkallion-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kuitinkallio-playground',
        2
    ),
    (
        'Leikkipaikka Haarikkopuisto',
        'Haarikkotie 3, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502588, 6687901), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Paalupuisto',
        'Pohjolantie 6, 01260 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505958, 6687279), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Loviisanpuisto',
        'Porvoonkatu 26, 00510 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496739, 6675488), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Palttinapuiston leikkipaikka',
        'Tegelhagen 6, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477706, 6675621), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/palttinapuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/palttinapuisto-playground',
        2
    ),
    (
        'Bielken leikkipaikka',
        'Iso Mustasaari, rakennus C58 länsipuoli, 00190 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499416, 6670426), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Maitorpanpuisto',
        'Maitorpantie 6, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491167, 6690575), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Annala',
        'Hämeentie 154, 00560 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498741, 6677696), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Nihtimäen puiston leikkipaikka',
        'Nihtimäenkuja 5, 02630 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486487, 6677627), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/nihtimaen-puiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/nihtimaen-puisto-playground',
        2
    ),
    (
        'Hans Floorin puiston leikkipaikka',
        'Anna Bildstenin polku 1, 02250 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485677, 6674838), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/hans-floorin-puiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/hans-floor-park-playground',
        2
    ),
    (
        'Leikkipaikka Rakuunapuisto',
        'Rakuunantie 1, 00330 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493722, 6676230), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Jokiuomanpuisto',
        'Eräkuja 7, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492090, 6684571), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Rastasniityn leikkipaikka',
        'Rastaanpesä 5, 02620 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486700, 6680404), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/rastasniityn-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/rastasniitty-playground',
        2
    ),
    (
        'Leikkipaikka Vennynpuisto',
        'Venny Soldanin polku,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494132, 6683211), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kongsberginpuiston leikkipaikka',
        'Lokirinne 2 B, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481021, 6670736), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kongsberginpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kongsberginpuisto-playground',
        2
    ),
    (
        'Lähdesilmän leikkipaikka',
        'Lähderanta 9, 02720 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485459, 6681156), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/lahdesilman-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/lahdesilma-playground',
        2
    ),
    (
        'Leikkipaikka Isonneva',
        'Isonnevantie 16, 00320 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493992, 6677853), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kannupuisto',
        'Sorsavuorenrinne 1, 00810 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501924, 6675207), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Nurkka',
        'Kiviahontie 12, 00760 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503115, 6684198), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Ohjaajanpuisto',
        'Ohjaajantie 9, 00400 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493856, 6679424), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Solvikinpuisto',
        'Aurinkotuulenkatu 11, 00990 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508682, 6676793), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Jakomäenkallio',
        'Louhikkotie 15, 00770 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504153, 6682676), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Johtokivenpuisto',
        'Lepokivenpolku 4, 00710 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500874, 6679959), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Saarnimäen leikkipaikka',
        'Saarnimäenkuja, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481437, 6676130), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/saarnimaen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/saarnimaki-playground',
        2
    ),
    (
        'Leikkipaikka Jokiniemenpuisto',
        'Jokiniementie 34, 00650 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498510, 6679639), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Myllykallio',
        'Vuorenpeikontie 7, 00820 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492771, 6671702), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Bockin puisto',
        'Johan Bockin kuja 8, 00720 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499226, 6680719), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Pallopuisto',
        'Maratontie 28b, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504963, 6681824), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Bäckbynpuisto',
        'Kuriirikuja 12, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500537, 6686244), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Tuohisniityn leikkipaikka',
        'Tuohistanhua 2, 02710 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485728, 6679970), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/tuohisniityn-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/tuohisniitty-playground',
        2
    ),
    (
        'Trillapuiston leikkipaikka',
        'Kilonpuistonkatu 4, 02610 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488138, 6678157), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/trillapuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/trillapuisto-playground',
        2
    ),
    (
        'Kotiportinpuiston leikkipaikka',
        'Kurkihirrentie 6, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480950, 6672872), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kotiportinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kotiportinpuisto-playground',
        2
    ),
    (
        'Viiripuiston länsiosan leikkipaikka',
        'Viirikuja 2, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480998, 6676381), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/viiripuiston-lansiosan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/viiripuisto-playground-west',
        2
    ),
    (
        'Leikkipaikka Liljapuisto',
        'Koiruohontie 5, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501346, 6686551), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kestinmäki',
        'Onkikuja 13, 01480 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506476, 6692749), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Tornitason leikkipaikka',
        'Tornitaso 4, 02120 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488758, 6673628), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/tornitason-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/tornitaso-playground',
        2
    ),
    (
        'Leikkipaikka Telakanpuistikko',
        'Perämiehenkatu 13, 00150 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496301, 6671862), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Naapurinmäen leikkipaikka',
        'Kylävainionkuja, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481854, 6677473), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/naapurinmaen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/fi/toimipisteet/naapurinmaen-leikkipaikka',
        2
    ),
    (
        'Vilpunpolun leikkipaikka',
        'Vilpunpolku, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485917, 6671525), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/vilpunpolun-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/vilpunpolku-playground',
        2
    ),
    (
        'Soihtupuiston leikkipaikka',
        'Soihtukaari, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484084, 6681049), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/soihtupuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/soihtupuisto-playground',
        2
    ),
    (
        'Leikkipaikka Sudenkuoppa',
        'Niinisaarentie 7, 00960 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507992, 6678989), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Korennonpuisto',
        'Korennontie 34, 01490 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507654, 6691971), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Juhannustien korttelipuisto',
        'Juhannustie 9, 00750 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501325, 6685919), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Askistonpuisto',
        'Askistonraitti 2, 01680 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487751, 6685437), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Jokiniemen puutarha',
        'Metsänhoitajankuja 3, 01370 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503240, 6686817), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Itärannan leikkipaikka',
        'Itäranta 20, 02110 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490209, 6673586), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/itarannan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/itaranta-playground',
        2
    ),
    (
        'Leikkipaikka Hakunilanraitti',
        'Hakunilanraitti 3, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505690, 6684472), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kirsikkapuro',
        'Pirkkolantie 9, 00630 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495707, 6679999), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Työmiehenpuistikko',
        'Lastenkodinkatu 9, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495744, 6672506), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Ilolanpuisto',
        'Soittajankuja 2, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501390, 6690661), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Pietaryrtinpuisto',
        'Pietaryrtintie 12, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501271, 6688611), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Uusmäen leikkipaikka',
        'Sotilastorpantie 5, 02680 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490557, 6680885), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/uusmaen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/uusmaki-playground',
        2
    ),
    (
        'Leikkipaikka Ester Koskelaisen puisto',
        'Tuulikintie 33, 01420 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505742, 6690199), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kirvelipuisto',
        'Peltolantie 12b, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501221, 6686794), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Nurmilinnunpuiston leikkipaikka',
        'Rastaspuistontie 10, 02620 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487993, 6679949), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/nurmilinnunpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/nurmilinnunpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Kolkkapojanpuisto',
        'Viinenkuja 8, 00370 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492119, 6679275), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Pikkukosken puistometsä',
        'Juhana-herttuan tie 13, 00600 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498274, 6678667), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Uudenrajanpuisto',
        'Uusiraja 7, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502174, 6689058), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Entressen leikkipaikka',
        'Kiltaraitti 2, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481107, 6676774), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/entressen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/entresse-playground',
        2
    ),
    (
        'Leppälinnunkujan leikkipaikka',
        'Leppälinnunpolku 13, 02620 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488096, 6679740), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/leppalinnunkujan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/leppalinnunkuja-playground',
        2
    ),
    (
        'Leikkipaikka Kaivopuisto',
        'Puistokatu 4, 00140 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497466, 6671462), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Vuorimiehenpuistikko',
        'Vuorimiehenkatu 23a, 00140 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497118, 6671809), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Nuotiopuiston leikkipaikka',
        'Nuotiotie 6, 02600 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489232, 6677636), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/nuotiopuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/nuotiopuisto-playground',
        2
    ),
    (
        'Kuttulammen leikkipaikka',
        'Laaksolahdentie 9 F, 02730 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486537, 6681318), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kuttulammen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kuttulampi-playground',
        2
    ),
    (
        'Leikkipaikka Kesanto',
        'Kesantokuja 16, 01630 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488590, 6683779), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Otsolahdenpuiston leikkipaikka',
        'Itäranta 32, 02110 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490090, 6673761), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/otsolahdenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/otsolahti-playground',
        2
    ),
    (
        'Leikkipaikka Simonkallionpuisto',
        'Simonkalliontie 14, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501115, 6688381), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Kilonkallion leikkipaikka',
        'Kuninkaistenportti 22, 02610 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487590, 6678820), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kilonkallion-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kilokallio-playground',
        2
    ),
    (
        'Leikkipaikka Juliuksenpuisto',
        'Marsalkantie 1, 00570 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500001, 6674704), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Aitapuisto',
        'Ainontie 21b, 01630 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488311, 6683806), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Von Glanin puisto',
        'Kartanonkaari 24, 00410 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492629, 6681612), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Paukkulanpuisto',
        'Nallitie 6, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503287, 6680133), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Koivikkopuisto',
        'Koivikkotie 10, 00630 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495986, 6679085), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Noropuiston leikkipaikka',
        'Lugnetintie 11, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481098, 6675675), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/noropuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/noropuisto-playground',
        2
    ),
    (
        'Kasavuoren leikkipuisto',
        'Mäntymäentie 37 A, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483600, 6677562), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/kasavuoren-puisto/\\nPlay areas (no supervised activities)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/kasavuoren-puisto/',
        2
    ),
    (
        'Joukinahon leikkipaikka',
        'Tillinmäentie 18, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480219, 6672938), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/joukinahon-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/joukinaho-playground',
        2
    ),
    (
        'Leikkipaikka Strenginkulma',
        'Tähtimöntie 24, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502112, 6688219), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Pyhän Laurin puisto',
        'Papinpöydänkuja 7, 00340 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491909, 6674274), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Laajasalon urheilupuisto',
        'Reposalmentie, 00840 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503349, 6673862), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Jengipolun leikkipaikka',
        'Savelanpuisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499817, 6680423), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kirjokivenpuisto',
        'Kirjokiventie 14, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494489, 6680838), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Varistonniitty',
        'Varistontie 7, 01660 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489752, 6684288), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Rajatorpanpuisto',
        'Piikkirinne 1b, 01650 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490669, 6682747), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Herttoniemen aluepuisto',
        'Siilitie 11, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502199, 6677645), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kiillepuisto',
        'Kiilletie 6, 00710 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500260, 6680176), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Porthaninpuistikko',
        'Porthaninkatu 8, 00530 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497332, 6674457), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kettupuisto',
        'Karhutie 44, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502058, 6676971), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Rukkilan puisto',
        'Värttinäkuja 1, 00410 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492360, 6682261), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Vanha Kirkkopuisto',
        'Lönnrotinkatu 6, 00120 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496626, 6672585), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Repovuorenpuisto',
        'Repovuorentie 16, 00670 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495647, 6681962), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Vantinpuiston leikkipaikka',
        'Vantinpuisto 7, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479096, 6674728), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/vantinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/vantinpuisto-playground',
        2
    ),
    (
        'Aallonharjan leikkipaikka',
        'Tyrskykuja 5, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479981, 6670735), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/aallonharjan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/aalloharja-playground',
        2
    ),
    (
        'Leikkipaikka Kairakenttä',
        'Jänkäpolku 1, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506064, 6680854), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Laamanninpuisto',
        'Asessorintie 35, 00690 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497892, 6683211), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Pöllökallio',
        'Veitsitie 18, 01640 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489225, 6682280), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Herttoniemen siirtolapuutarha / Leikkipaikka',
        'Kipparlahdensilmukka 3, 00810 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501026, 6675571), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kulopuisto',
        'Kulorinne 4, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503784, 6692618), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Hakopuisto',
        'Hakokuja 3, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503467, 6690267), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Urheilukadun puistikko',
        'Urheilukatu 18, 00250 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495680, 6674848), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Vaunukallio',
        'Hakunilantie 66, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506244, 6685554), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Laajavuori II',
        'Raappavuorenpolku 5, 01620 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491345, 6684983), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Laivatorin leikkipaikka',
        'Espoonlahdenranta 6, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480586, 6670958), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/laivatorin-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/laivatori-playground',
        2
    ),
    (
        'Leikkipaikka Savela',
        'Eteläniitynpolku 11, 00720 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499455, 6680620), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Ratsaspuisto / Esteetön leikkipaikka',
        'Ratsastie , 00280 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494809, 6676125), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.nkl.fi/fi/etusivu/saavutettavuus-esteettomyys/rakennetun-ympariston-esteettomyys-ja-opasteet\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Suinonpuiston leikkipaikka',
        'Suvisaarentie 27 B, 02380 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483810, 6668256), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/suinonpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/suinonpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Hesperianpuisto',
        'Mannerheimintie 15, 00260 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496118, 6674085), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Punakiventien puistometsä',
        'Vuosaarentie 10, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508099, 6677611), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Suuntimopuisto',
        'Suuntimotie 31, 00750 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502109, 6684859), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Reuna',
        'Reunakuja 1a, 01760 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491212, 6697047), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Koivuviidankentän leikkipaikka',
        'Koivukeppi 4, 02130 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488031, 6674630), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/koivuviidankentan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/koivuviidankentta-playground',
        2
    ),
    (
        'Leikkipaikka Ojahaka',
        'Hakamaankuja 4, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492338, 6683588), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Oulunkyläntienkenttä',
        'Oulunkyläntie 29, 00600 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498162, 6678863), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Iltaruskonpuiston leikkipaikka',
        'Iltaruskontie 5, 02120 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488398, 6673793), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/iltaruskonpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/iltaruskonpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Haasia',
        'Suovatie 11, 01660 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489581, 6684051), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Tilkan mäki',
        'Koroistentie 8, 00280 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494487, 6676582), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Vapaalan aukee',
        'Kierretie 50, 01650 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490117, 6683530), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Estetie',
        'Estetie 13, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494213, 6681731), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Tasakallion leikkipaikka',
        'Tahkokuja 22, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483022, 6676768), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/tasakallion-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/tasakallio-playground',
        2
    ),
    (
        'Leikkipaikka Sahapuisto',
        'Sahatie 18, 01650 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490449, 6683071), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Mätäspolun puistikko',
        'Kalteentie 3, 00770 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504591, 6683607), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Ylästön Mustikkasuo',
        'Peltovuorenkuja 6, 01690 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495330, 6685876), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Keulapuisto',
        'Keulatie 4, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507229, 6677338), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Sinirikonpuisto',
        'Peltolantie 7, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501636, 6686865), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Metsolansuo',
        'Peuratie 4b, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505484, 6693981), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Krämertinpuisto',
        'Krämertintie 6, 00620 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496472, 6678871), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Köydenpunojanpuisto',
        'Kalevankatu 59, 00180 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495859, 6672272), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Hummapuisto',
        'Hakunilanraitti 12, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505669, 6684849), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Onnenpuisto',
        'Onnentie 20, 00600 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497639, 6678595), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Myllymäki',
        'Tykkikuja 2, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506402, 6681073), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Ruutipuisto',
        'Linnoittajantie 4, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504115, 6681249), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Vanhan-Mankkaan puiston leikkipaikka',
        'Kokinkyläntie 8 A, 02180 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487139, 6675438), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/vanhan-mankkaan-puiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/vanha-mankkaa-park-playground',
        2
    ),
    (
        'Leikkipaikka Keskuspuisto',
        'Lepolantie 126, 00660 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495248, 6680494), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kuitinmäenkentän leikkipaikka',
        'Meteorinkatu 7, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485181, 6672891), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kuitinmaenkentan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kuitinmaenkentta-playground',
        2
    ),
    (
        'Leikkipaikka Saksanmäki',
        'Intiankatu 25, 00560 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498100, 6677379), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kärppäpuisto',
        'Jänötie 7, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504762, 6694321), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Lampi',
        'Lampipolku 12, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504536, 6680965), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Hiidenkivenpuisto',
        'Hiidenkiventie 32, 00730 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500983, 6683593), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Viertolanranta',
        'Kaislatie 22d, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501298, 6686300), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Mustapuro',
        'Mustapuronpolku 4, 00900 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504484, 6678336), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kivinokan kesämaja-alue / Leikkipaikka',
        'Kivinokan uimaranta,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500314, 6675807), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Maistraatinpuisto',
        'Maistraatinkatu 3, 00240 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495762, 6676171), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Saunalahdenpuiston leikkipaikka',
        'Meriviitantie 18, 02330 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478280, 6672541), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/saunalahdenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/saunalahdenpuisto-playground',
        2
    ),
    (
        'Hurtigin puisto',
        'Kauppalantie 28, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484734, 6677309), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/hurtigin-puisto/\\nPlay areas (no supervised activities)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/hurtigin-puisto/',
        2
    ),
    (
        'Leikkipaikka Kuulapuisto',
        'Keihäspolku 11, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506106, 6681480), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kielipolun korttelipuisto',
        'Kielipolku 32, 00420 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493224, 6681445), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Akseli Toivosen kenttä',
        'Pellervontie 14, 00610 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497216, 6677923), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Tuuliniityn leikkipaikka',
        'Tuulikuja 3, 02100 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488758, 6673234), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/tuuliniityn-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/tuuliniitty-playground',
        2
    ),
    (
        'Leikkipaikka Tapaninvainio',
        'Tapaninvainiontie 33, 00780 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499379, 6682826), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kuismapuisto',
        'Kuismatie 104a, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500458, 6688938), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Pihlajarinteen leikkipaikka',
        'Pajuviita 2-6, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483312, 6680256), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/pihlajarinteen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/pihlajarinne-playground',
        2
    ),
    (
        'Leikkipaikka Vallilantien puisto',
        'Vallilantie 3, 00550 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497887, 6675541), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Ojapuisto',
        'Ojahaanpolku 10a, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492043, 6683770), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Åbergin lastentalo',
        'Ajurinkuja 4, 02650 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489642, 6679225), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nPlay areas (no supervised activities)',
        2
    ),
    (
        'Leikkipaikka Tarha',
        'Havukoskenkatu 5, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504233, 6689809), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Seponkentän leikkipaikka',
        'Louhentie 10a, 02130 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488509, 6674831), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/seponkentan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/seponkentta-playground',
        2
    ),
    (
        'Lansapuronpuiston leikkipaikka',
        'Kilonpurontie 3, 02610 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487923, 6677903), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/lansapuronpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/lansapuronpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Kallion kirkon tontti',
        'Castreninkatu 15, 00530 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497199, 6674688), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Niipperin leikkipaikka',
        'Isonpuronkuja 5, 02920 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486083, 6685573), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/niipperin-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/niipperi-playground',
        2
    ),
    (
        'Ryytimaan leikkipaikka',
        'Salviapolku, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484096, 6680763), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/ryytimaan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/ryytimaa-playground',
        2
    ),
    (
        'Leikkipaikka Raudikkopuisto',
        'Raudikkokuja 5b, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505888, 6684841), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Pakilanpuisto',
        'Palosuontie 2, 00660 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496562, 6681229), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Aittalehto',
        'Sotilaspellontie 7, 00390 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491315, 6680321), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Nurmikuukusen leikkipaikka',
        'Veininkatu 10, 02730 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487012, 6681178), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/nurmikuukusen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/nurmikuukunen-playground',
        2
    ),
    (
        'Leikkipaikka Marsinpuisto',
        'Marsinkuja 4b, 01480 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505536, 6692218), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Katajanokan puisto',
        'Kanavakatu 2, 00160 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497807, 6672785), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Puotilan leikkiniitty',
        'Rusthollarintie 7, 00910 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505234, 6677513), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Krattivuoren leikkipaikka',
        'Krattivuorentie 3, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480369, 6670098), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/krattivuoren-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/krattivuori-playground',
        2
    ),
    (
        'Leikkipaikka Käpypuisto',
        'Koivukylän puistotie 29, 01360 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502684, 6690408), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Neilikkapuisto',
        'Neilikkatie 2, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502153, 6686375), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Isonmännynpuisto',
        'Isonmännyntie 14, 01690 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495577, 6685176), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Kuitinmäenpuiston leikkipaikka',
        'Meteorinkatu 7, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485132, 6672892), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kuitinmaenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kuitinmaenpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Savikkapuisto',
        'Savikkatie 22, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501371, 6687118), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Thurmaninpuiston leikkipuisto',
        'Kauniaistentie 12, 02700 Kauniainen',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484559, 6677441), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/thurmaninpuisto/\\nPlay areas (no supervised activities)\\nhttps://www.kauniainen.fi/asuminen-ja-ymparisto/viher-ja-muut-yleiset-alueet/leikkipuistot/thurmaninpuisto/',
        2
    ),
    (
        'Leikkipaikka Leppäkorvenmäki',
        'Leppäkorventie 35, 01450 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505033, 6693899), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Veijarivuoren puisto',
        'Itälahdenkatu 1, 00210 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493609, 6670302), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Tuurholmanpuisto',
        'Henrik Borgströmin tie 13, 00590 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501607, 6673880), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Aapraminpuisto',
        'Aapramintie 3, 01610 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492663, 6682684), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Kuutamopuiston leikkipaikka',
        'Täysikuu 7, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484802, 6673479), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kuutamopuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kuutamopuisto-playground',
        2
    ),
    (
        'Rinkelipuiston leikkipaikka',
        'Timpurinkuja 4, 02650 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489618, 6678862), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/rinkelipuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/rinkelipuisto-playground',
        2
    ),
    (
        'Jukolan leikkipaikka',
        'Venlanpolku 1, 02180 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486444, 6675460), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/jukolan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/jukola-playground',
        2
    ),
    (
        'Sinisiimeksen leikkipaikka',
        'Kimalaisenpolku 27, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483551, 6674088), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/sinisiimeksen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/sinisiimes-playground',
        2
    ),
    (
        'Leikkipaikka Antaksenpuisto',
        'Antaksenpolku 7b, 01510 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497140, 6686667), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Meripuisto',
        'Merikatu 7, 00140 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497066, 6671402), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Seitsenmerenpuiston leikkipaikka',
        'Merivirta 4, 02320 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479932, 6671285), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/seitsenmerenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/seitsenmerenpuisto-playground',
        2
    ),
    (
        'Kumpulan siirtolapuutarha / Leikkipaikka',
        'Kalervonkatu 1a, 00610 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497583, 6677510), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Järvikorpi, leikkipaikka',
        'Järvikorpi 7, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481862, 6670587), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/jarvikorpi-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/jarvikorpi-playground',
        2
    ),
    (
        'Leikkipaikka Nuorapuisto',
        'Solkikuja 7, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492183, 6682774), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Notkopuisto',
        'Kivikkotie 47, 01390 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500885, 6691366), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Viiripuiston leikkipaikka',
        'Viirikuja 4, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481082, 6676257), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/viiripuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/viiripuisto-playground',
        2
    ),
    (
        'Leikkipaikka Linnalahdenpuisto',
        'Linnalahdentie 1, 00950 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506387, 6678624), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Jalavapuiston leikkipaikka',
        'Heisipuunkuja 2 B, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481330, 6676029), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/jalavapuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/jalavapuisto-playground',
        2
    ),
    (
        'Maapallopuiston leikkipaikka',
        'Ellipsipolku 2 B, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484871, 6673123), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/maapallopuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/maapallonpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Itä-Hakkilanpuisto',
        'Kankurintie 34, 01260 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506406, 6687028), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Hyväntoivonpuisto',
        'Hyväntoivonpuisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495446, 6671579), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Niittypuiston leikkipaikka',
        'Niittykuja, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486757, 6672956), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/niittypuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/niittypuisto-playground',
        2
    ),
    (
        'Eestinaukion leikkipaikka',
        'Eestinahde 1 B, 02280 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482066, 6672961), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/eestinaukion-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/eestinaukio-playground',
        2
    ),
    (
        'Leikkipaikka Laakavuori',
        'Saariselänkuja 8, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506594, 6680788), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Suursuonpuisto',
        'Suursuonpuisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496782, 6680092), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Ylämäenlaidan leikkipaikka',
        'Ylämäentie, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482380, 6676499), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/ylamaenlaidan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/ylamaenlaita-playground',
        2
    ),
    (
        'Kuusijärven leikkipaikka',
        'Kuusijärventie 3, 01260 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506194, 6689008), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttp://vantaa.fi\\nPlay areas (no supervised activities)\\nhttp://vantaa.fi',
        2
    ),
    (
        'Leikkipaikka Kastellinpuisto',
        'Kastellinpolku 5, 00970 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507285, 6679801), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Leirimäki',
        'Kilterinkuja 3, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491630, 6682778), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Lammaspuisto II',
        'Mantelilastu 6, 01710 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489110, 6682902), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Matinkallionpuiston leikkipaikka',
        'Nelikkotie 6, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485763, 6672241), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/matinkallionpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/fi/toimipisteet/matinkallionpuiston-leikkipaikka',
        2
    ),
    (
        'Tonttumaan leikkipaikka',
        'Kotitontuntie 10, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487045, 6673522), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/tonttumaan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/tonttumaa-playground',
        2
    ),
    (
        'Leikkipaikka Hermanninpuisto',
        'Eläinlääkärinkatu 7, 00580 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498320, 6675470), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Renginmäki',
        'Puustellinpolku 19, 00410 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492329, 6681260), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Säätytalon puisto',
        'Ritarikatu 9, 00170 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497505, 6673167), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kiskonpuisto',
        'Kiskontie 4, 00280 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494662, 6676320), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kartanonkulma',
        'Yläkartanontie 33, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481353, 6669967), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nPlay areas (no supervised activities)',
        2
    ),
    (
        'Leikkipaikka Rastilankallio',
        'Rastilanpolku 1, 00980 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506887, 6677083), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Pikku-Keimolan puisto',
        'Keimolankaarre 6b, 01700 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490607, 6689412), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kvartsijuonenpuisto',
        'Kvartsijuonenkuja 4, 01730 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492164, 6689936), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Sinebrychoffin puisto',
        'Uudenmaankatu 46, 00120 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496368, 6672080), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Lystimäenpuiston leikkipaikka',
        'Syyskuja 9, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486135, 6673655), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/lystimaenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/lystimaenpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Askistonmetsä',
        'Hakkuutie 28b, 01680 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487792, 6686425), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Osmonlehto',
        'Osmontie 10, 00610 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497184, 6677568), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kivikaudenpuisto',
        'Kivikirveenkuja 6, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491404, 6683306), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Mäenlaskijanpuisto "suopuisto"',
        'Mäenlaskijantie 2, 00810 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501693, 6675995), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Makasiinipuisto',
        'Makasiinipuisto,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496508, 6673478), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Sahrapuisto',
        'Kuokkapolku 6, 01630 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488942, 6683980), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Liisanpuistikko',
        'Liisankatu 1, 00170 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497825, 6673440), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Louhijanpuisto',
        'Louhijantie 4, 01610 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492888, 6683553), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Vallilanlaakso',
        'Kumpulanportti 1, 00520 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497267, 6676514), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Liinamäki',
        'Kaskikalliontie 6 B, 01200 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505923, 6686065), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Matinkylän uimarannan leikkipaikka',
        'Matinlahdenranta 3, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486459, 6670941), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/matinkylan-uimarannan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/matinkyla-beach-playground',
        2
    ),
    (
        'Leikkipaikka Väinämöisenpuistikko',
        'Arkadiankatu 36, 00100 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495445, 6673140), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Delfiiniaukio',
        'Myyrmäenraitti 4, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491821, 6683638), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Valimomestarinpuisto',
        'Valimomestarinpolku 6, 00380 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492923, 6678500), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Valpurinpuisto',
        'Valpurintie 6, 00270 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494519, 6675588), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Helene Schjerfbeckin puisto',
        'Helene Schjerfbeckin polku,  Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493873, 6682790), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Marjaniemen siirtolapuutarha / Leikkipaikka',
        'Virvakuja 6, 00930 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503813, 6676906), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Kuntopuisto',
        'Sivupolku 2, 01280 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506336, 6681423), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Myllykallio',
        'Isokaari 3, 00200 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492571, 6671680), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Haltialan kartano',
        'Kuninkaantammentie, 00430 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497443, 6684749), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Purotanhuan leikkipaikka',
        'Lehmustie 24, 02300 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482431, 6672182), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/purotanhuan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/purotanhua-playground',
        2
    ),
    (
        'Leikkipaikka Koukkuniitty',
        'Koukkuniitynpolku 6, 01670 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492720, 6685595), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Saudarkrokurinpuiston leikkipaikka',
        'Ruskatie 5, 02970 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485501, 6688104), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/saudarkrokurinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/saudarkrokur-park-playground',
        2
    ),
    (
        'Nupurinkartanonpuiston leikkipaikka',
        'Nupurinkartanontie 1, 02820 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477446, 6680611), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/nupurinkartanonpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/nupurinkartanonpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Koivupäänpuisto',
        'Koivupään puistopolku 6, 01730 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493589, 6689702), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Tähtimöpuiston leikkipaikka',
        'Rastaspuistontie 4 B, 02620 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487716, 6679936), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/tahtimopuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/tahtimopuisto-playground',
        2
    ),
    (
        'Leikkipaikka Rekolankenttä',
        'Eevantie 17, 01400 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504494, 6691110), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Riskupuisto',
        'Riskutie 22, 00950 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505750, 6678933), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Aamukasteenkujan puistikko',
        'Aamukasteenkuja 3, 00740 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500529, 6685857), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Kuurinkentän leikkipaikka',
        'Hopeatie 4, 02750 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483958, 6675873), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kuurinkentan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kuurinkentta-playground',
        2
    ),
    (
        'Leikkipaikka Kurkimäki',
        'Karpalokuja 7, 00940 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503898, 6679915), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Vuoritontunpuiston leikkipaikka',
        'Vuoritontuntie, 02200 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486870, 6673511), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nPlay areas (no supervised activities)',
        2
    ),
    (
        'Leikkipaikka Tapuli',
        'Kimnaasipolku 7, 00750 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501492, 6684508), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Planeetan päiväkodin leikkipaikka',
        'Ellipsikuja 11, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485056, 6672897), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/planeetan-paivakodin-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/planeetta-daycare-playground',
        2
    ),
    (
        'Syvänsalmenpuiston leikkipaikka',
        'Syvänsalmenkatu 11, 02260 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483593, 6671003), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/syvansalmenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/syvansalmi-park-playground',
        2
    ),
    (
        'Leikkipaikka Talinlehto',
        'Talin puistotie 9, 00380 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492431, 6678099), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Frans Emil Sillanpään puisto',
        'Peuratie 14, 00800 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502142, 6676658), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Jyrkinkallio',
        'Henrikintie 11, 00370 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491511, 6679179), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Ilveskorvenpuisto',
        'Mustalahdentie 4, 00960 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507624, 6678772), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Soukanahteen leikkipaikka',
        'Soukankaari 2 A, 02360 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481878, 6669805), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/soukanahteen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/soukanahde-playground',
        2
    ),
    (
        'Matinniityn leikkipaikka',
        'Matinniitty 3, 02230 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485879, 6672000), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/matinniityn-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/matinniitty-playground',
        2
    ),
    (
        'Leikkipaikka Virmajuurenpuisto',
        'Kurjenpolventie 13, 01300 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500953, 6686995), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Katri Valan puisto',
        'Käenkuja 8, 00500 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498029, 6674763), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Räckhalsinpuisto',
        'Andersinkatu 4, 01400 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502993, 6691279), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Pilvipuisto',
        'Viherkummuntie 5b, 01670 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493210, 6684862), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Keinukenttä',
        'Iso Mustasaari, rakennus C54 itäpuoli, 00190 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499351, 6670395), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Keijuniityntien leikkipaikka',
        'Keijuniityntie 1, 02130 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489066, 6674925), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/keijuniityntien-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/keijuniityntie-playground',
        2
    ),
    (
        'Rusakkopuiston leikkipaikka',
        'Kappalaisenkuja 5, 02940 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483390, 6679164), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/rusakkopuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/rusakkopuisto-playground',
        2
    ),
    (
        'Leikkipaikka Laivastopuisto',
        'Laivastokatu 1, 00160 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498243, 6672870), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Hämeenlinnanväylän lähivirkistysalue',
        'Laitilantie 1, 00420 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493162, 6682378), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Puuhkalakinpuiston leikkipaikka',
        'Puuhkalakintie 15, 02780 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477635, 6675886), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/puuhkalakinpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/puuhkalakinpuisto-playground',
        2
    ),
    (
        'Leikkipaikka Mäkitorpanpuisto',
        'Teinintie 11, 00640 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497702, 6679675), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Löydöspuisto',
        'Löydöstie 6, 01600 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492193, 6683336), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Sähköttäjänpuisto',
        'Vislauskuja 9, 00520 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496674, 6676026), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Pitkänkorvenpuiston leikkipaikka',
        'Sunantie 10, 02760 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481403, 6676414), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/pitkankorvenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/pitkankorvenpuisto-playground',
        2
    ),
    (
        'Iltapäivänsillan leikkipaikka',
        'Meteorinrata, 02210 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485243, 6672856), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/iltapaivansillan-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/fi/toimipisteet/iltapaivansillan-leikkipaikka',
        2
    ),
    (
        'Leikkipaikka Sipulipuisto',
        'Tarhurintie 13, 01350 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502663, 6688628), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Paloheinän leikkikenttä',
        'Kytöniityntie 2, 00670 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496466, 6681779), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Aino Ackten puisto',
        'Aino Acktén tie 16, 00400 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493903, 6679052), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Mikkelänrinteen leikkipaikka',
        'Iso maantie 19, 02770 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479840, 6676930), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/mikkelanrinteen-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/mikkelanrinne-playground',
        2
    ),
    (
        'Leikkipaikka Illenpuisto',
        'Hagelstamintie 12, 01520 Vantaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497887, 6685697), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.vantaa.fi/fi/palveluhakemisto/palvelu/puistoleikkipaikat\\nPlay areas (no supervised activities)\\nhttps://www.vantaa.fi/en/services/service/playgrounds',
        2
    ),
    (
        'Leikkipaikka Kaadepolku',
        'Kaadepolku 14a, 00770 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503923, 6682395), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Latokaskenpuiston leikkipaikka',
        'Latokaski 8, 02340 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480986, 6673799), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/latokaskenpuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/latokaskenpuisto-playground',
        2
    ),
    (
        'Kuuttipuiston leikkipaikka',
        'Arttelikuja 7, 02260 Espoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483444, 6670500), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.espoo.fi/fi/toimipisteet/kuuttipuiston-leikkipaikka\\nPlay areas (no supervised activities)\\nhttps://www.espoo.fi/en/units/kuuttipuisto-playground',
        2
    ),
    (
        'Leikkipaikka Ryytimaan korttelipuisto',
        'Ryytimaantie 11, 00320 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494618, 6678239), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    ),
    (
        'Leikkipaikka Anianpellonpuisto',
        'Anianpellontie 5, 00700 Helsinki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500138, 6682180), 3879), 4326),
        E'Leikkipaikat (ei ohjattua toimintaa)\\nhttps://www.hel.fi/fi/kasvatus-ja-koulutus/leikkipuistot/leikkipuistot-ja-perhetalot\\nPlay areas (no supervised activities)\\nhttps://www.hel.fi/en/childhood-and-education/playgrounds/find-playgrounds-and-family-houses',
        2
    );
