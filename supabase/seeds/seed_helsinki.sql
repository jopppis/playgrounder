-- Disable trigger to prevent recursive refresh
ALTER TABLE playgrounds DISABLE TRIGGER refresh_active_playgrounds_on_playground;

-- Import playgrounds
INSERT INTO playgrounds (name, location, has_supervised_activities, city, data_source)
VALUES
    (
        'Olarin asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485095.0, 6672856.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Hilleri',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502459.0, 6677431.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Kivenlahden asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479780.0, 6671150.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Vähätupa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491857.0, 6680089.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Hiirisuon asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485540.0, 6687811.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Latokasken asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481253.0, 6673973.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Maasälpä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500718.0, 6680513.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Perhetalo Kuutti',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498536.0, 6672684.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Maatulli',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501558.0, 6684678.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kannelmäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493365.0, 6680978.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Torpparinmäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497270.0, 6682899.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Arabia',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498691.0, 6676831.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Jalopeura',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499315.0, 6684749.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Etupelto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497769.0, 6681140.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kesanto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500113.0, 6684237.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Strömberg',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492743.0, 6678404.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leppävaaran asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489985.0, 6679743.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Intia',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497734.0, 6677629.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kiiltotähti',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503242.0, 6674230.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kipinäpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503503.0, 6680362.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Munkki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492934.0, 6676385.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Brahe',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497237.0, 6675118.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Trumpetti',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492627.0, 6680613.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Viikkari',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501844.0, 6679703.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Nissaksen asukaspuisto ja avoin kohtaamispaikka, Hakunila',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506857.0, 6685675.0), 3879), 4326),
        true,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipuisto Myllynsiipi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503703.0, 6678648.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Tapiolan asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488846.0, 6674730.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Seppä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496639.0, 6671775.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Sanna',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495813.0, 6676284.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kimmo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496755.0, 6677443.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kiikku',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504171.0, 6680342.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Mäkitorppa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497758.0, 6679541.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Vihertien asukaspuisto ja avoin kohtaamispaikka, Martinlaakso',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491610.0, 6684518.0), 3879), 4326),
        true,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipuisto Taivallahti',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495521.0, 6673758.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Kylätalo Palttinan asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477726.0, 6675669.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Unikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499470.0, 6681396.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Vallila',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497633.0, 6676041.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Tullinpuomi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494920.0, 6675680.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Linnunrata',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500376.0, 6685355.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Nurkka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503253.0, 6684313.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Nuoli',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492377.0, 6679599.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Piika',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492056.0, 6681289.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Maunula',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496046.0, 6679820.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Perhetalo Naapuri / Asukastila Kivenkolo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503772.0, 6680848.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kotinummi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500868.0, 6682771.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Karakallion asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486942.0, 6679708.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Kurranummi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500908.0, 6683903.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Rudolf',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502194.0, 6673177.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Mustakivi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507800.0, 6676869.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Tuorinniemi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502089.0, 6674898.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Suvelan asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481846.0, 6676874.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Ruoholahti',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495504.0, 6671997.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Pisan asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482278.0, 6673575.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Ida',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494257.0, 6679596.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Laurinniitty',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493147.0, 6679956.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Perhetalo Sahrami',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497633.0, 6676041.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Orava',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501798.0, 6676153.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Isoneva',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494016.0, 6677861.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Matinkylän asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485922.0, 6671652.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Ulvila',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492543.0, 6677136.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Haruspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506792.0, 6676652.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Mellunmäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506820.0, 6680438.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Santahamina',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502697.0, 6671046.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Linja',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496892.0, 6674464.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Perkkaan asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490177.0, 6677949.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Soukan asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481601.0, 6669683.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Iso-Antti',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504688.0, 6677046.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Filpus',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500995.0, 6681863.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Lohikäärmepuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507734.0, 6677661.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Lehdokki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496815.0, 6676200.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Kankarepuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504440.0, 6683110.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Lampi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504255.0, 6681109.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Salpausselkä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500266.0, 6679899.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Järvenperän asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484019.0, 6681395.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Viiri',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493891.0, 6676804.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Soihtu',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496166.0, 6682426.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Puuskakulma',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504153.0, 6672440.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Viherkallion asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485858.0, 6679487.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Mankkaan asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487174.0, 6675558.0), 3879), 4326),
        true,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipuisto Traktori',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499809.0, 6682093.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Perhetalo Kajuutta',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507620.0, 6676577.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Lahnalahti',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493132.0, 6671932.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Loru',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496566.0, 6673500.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Roihuvuori',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503413.0, 6676695.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipuisto Rusthollari',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505534.0, 6677861.0), 3879), 4326),
        true,
        'Helsinki',
        'municipality'
    ),
    (
        'Lukupuronpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486845.0, 6674469.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Sampotorin leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489061.0, 6673760.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Vesalanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505419.0, 6680839.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kirjastopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502308.0, 6686865.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Apollonpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495848.0, 6673702.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Hopealehdon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489271.0, 6674511.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ratsumiehenpuisto II',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505817.0, 6685244.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Koivikkopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492219.0, 6685683.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Helsinginniemenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496510.0, 6671395.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Krapupuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25509623.0, 6681931.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Suutarilanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500011.0, 6685060.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ullanpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497369.0, 6672001.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Elopelto II',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503451.0, 6687351.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Nestorinpolun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486063.0, 6671721.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Metsäruusunpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501579.0, 6688092.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kolmperän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25473787.0, 6681789.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Risto Rytin puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500823.0, 6674919.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Lehtovuori',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490852.0, 6681624.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Muukalaispuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489572.0, 6679022.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kulomäenkenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503197.0, 6692476.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Juvanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486329.0, 6684892.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Westendinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488753.0, 6672290.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Violanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498140.0, 6676018.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Krenaatöörinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490781.0, 6680710.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Aimo Tukiaisen puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493861.0, 6671039.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Päivölänpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501406.0, 6683395.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ensipuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496772.0, 6671434.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Lehtipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486537.0, 6681991.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kahluuniitty',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493726.0, 6683825.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Ullaksenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507757.0, 6676509.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Matinmetsän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485614.0, 6671448.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Rautkallio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503819.0, 6689952.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kattilapohjan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480299.0, 6672009.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kalasatamanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498647.0, 6674591.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Väylänrinteen puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503373.0, 6675401.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Ulappatorin leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480876.0, 6670860.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kaisaniemi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497056.0, 6673499.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Eugen Schaumanin puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500521.0, 6674462.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ojalehto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503120.0, 6690009.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Hiihtomäentien puistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501754.0, 6676399.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kulloonmäenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484317.0, 6681666.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Finnoonniityn puiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483500.0, 6672775.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kivivuori',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492172.0, 6685255.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Toppelundinreunan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488068.0, 6672168.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Männikkö',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491747.0, 6695245.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kuopuksenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494207.0, 6682431.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kirjanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497556.0, 6673713.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Tervahaudanmetsä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504954.0, 6692104.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Atlaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500567.0, 6690521.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kottaraispuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500250.0, 6683596.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Temppeliaukio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495905.0, 6673397.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Simo Klemetinpojan puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501526.0, 6679877.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Laajametsä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490993.0, 6684706.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Sammalkallionkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485374.0, 6673715.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Perhon kenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495679.0, 6673098.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Lohiapajanlahti',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493816.0, 6671752.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Tikanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489235.0, 6679751.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kulkuspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487929.0, 6681752.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kangaspelto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493509.0, 6677331.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ojanvarsipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501637.0, 6682831.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Luuvaniemen korttelipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493542.0, 6676868.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Ahertajantien leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488534.0, 6673859.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Saarenpellon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477542.0, 6673334.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ulvilanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493055.0, 6676939.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ehrnroothinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497479.0, 6685552.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kannistonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491820.0, 6690784.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kummelipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478778.0, 6671979.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Odilammen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486937.0, 6688011.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kulosaaren rantapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500366.0, 6675262.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Punakivenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491563.0, 6689679.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Töyrylaakson leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482387.0, 6675787.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Lillhemtinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485230.0, 6674858.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kartanopuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489594.0, 6678013.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Someronpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497661.0, 6675858.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Katajaharjuntie',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492049.0, 6672830.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Landbackanpuiston Angry Birds -leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485583.0, 6675027.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Klaukkalanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497997.0, 6681555.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Metsänhenki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502450.0, 6690185.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Aitanurmen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484777.0, 6681900.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kapteeninpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496953.0, 6671647.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hallainvuori',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502741.0, 6678620.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Säterinkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488929.0, 6678129.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Alakartanonkujan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481563.0, 6669330.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ruoholahdenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495459.0, 6672147.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kirjailijanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495166.0, 6674820.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hepopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505690.0, 6684595.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pakarituvanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492457.0, 6681276.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kirkkojärvenrannan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481605.0, 6677491.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Everstinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490237.0, 6677725.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Vanhanväylän puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503383.0, 6675521.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Lastenlehto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496044.0, 6672604.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Artturi Kanniston puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494368.0, 6678365.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kotkavuori',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493603.0, 6672214.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Suomensuonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502355.0, 6672318.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Tankovainio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507017.0, 6679531.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Paasipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491114.0, 6689673.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Karhuneva',
        ST_Transform(ST_SetSRID(ST_MakePoint(25510567.0, 6684146.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Tuhkimo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502868.0, 6676240.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Iivisniemenpuiston leikkipaikka 1 ja 2',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483020.0, 6670648.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Harjupuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500247.0, 6689477.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Hietakannas',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495382.0, 6673464.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kilterinmäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491954.0, 6682599.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kenraalinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492096.0, 6690311.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Hösmärinniityn leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482120.0, 6676119.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Myllynsiipi kirkkopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503679.0, 6679022.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kivitorpan puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493370.0, 6676422.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Takomopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492914.0, 6678331.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kontiopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505076.0, 6694263.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Tähtitornin Vuori',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497241.0, 6672017.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kokkokallio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491853.0, 6679537.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Varhelanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505739.0, 6680883.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Oskarinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504295.0, 6676472.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kuloniityn leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482418.0, 6677204.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Poikkilaakso',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504602.0, 6672541.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Nuottamiehenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485745.0, 6670946.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Åvik/Tikkurilanranta',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502194.0, 6686336.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Väinön lehto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501773.0, 6676759.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Töölönlahden puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496405.0, 6673774.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kaarlenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497280.0, 6674939.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Rikun puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500235.0, 6684107.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Pattistenpellon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487661.0, 6672102.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Patterimäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492210.0, 6678573.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Härkävaljakon puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501973.0, 6685700.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Lillhemtinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485230.0, 6674858.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Palokaivonkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484083.0, 6672768.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Nummisuutarinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503299.0, 6684502.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Rakettipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504060.0, 6676915.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Johanneksen puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496907.0, 6672078.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kontulan asukaspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504749.0, 6680241.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Satumaanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503211.0, 6675959.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Viputien leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484432.0, 6679934.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Talkookenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505070.0, 6683689.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Serkustenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494419.0, 6682383.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Oulunkylän siirtolapuutarha / Leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499106.0, 6680106.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Marielundinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508333.0, 6678502.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Viikinojanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501574.0, 6679155.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Pikku-Huopalahden puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494161.0, 6676332.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Heittopaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505994.0, 6681226.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Nissbackanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506917.0, 6685607.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Nuottaniemen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485369.0, 6670240.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Pasuunapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492806.0, 6680807.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Martinniitynpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482976.0, 6672183.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Tynnyripuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485231.0, 6672060.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Lokkalanlehto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493472.0, 6676203.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Sannanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495674.0, 6676031.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Puotilan korttelipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505496.0, 6677700.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Poutamäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492001.0, 6678386.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Sammonpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495650.0, 6673324.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kuusikallionkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485118.0, 6673684.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kaivomestarinaukion leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481289.0, 6677319.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kalliolaakson leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485643.0, 6685937.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kurkijoentien leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489237.0, 6676812.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Porslahden puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508471.0, 6678409.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kaupungintalon leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485011.0, 6677392.0), 3879), 4326),
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Hiiriharjunpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501496.0, 6689094.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Lindmaninkorpi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503892.0, 6685484.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kallioruohonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501150.0, 6688169.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Amiraalinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481262.0, 6670985.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Pihlajamäenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478797.0, 6671965.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Klaukkalanpuiston ryhmäpuutarha',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498082.0, 6681446.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Laajaniitty',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491980.0, 6685337.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Etanapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506507.0, 6692118.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Rantapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493997.0, 6675981.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Siimapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507402.0, 6693695.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Topeliuksen puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495561.0, 6674232.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Korpimaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481623.0, 6671966.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Esikoisenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494227.0, 6682288.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kuhankeittäjänpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500129.0, 6682817.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Siltalanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499311.0, 6683853.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Koukkuniemenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486767.0, 6671332.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kellosaarenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495024.0, 6672135.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Mielikinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505328.0, 6690134.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kaskenkaatajanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488446.0, 6674367.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Huvilinnanaukion leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489346.0, 6678119.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kerttulinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502148.0, 6675129.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Maauuninpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503485.0, 6692528.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Velodrominrinne',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496721.0, 6676570.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kuohupuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491625.0, 6684000.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Taikapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501205.0, 6691441.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Spelttipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497390.0, 6682103.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Haarssinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484209.0, 6690103.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Pisanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481907.0, 6673767.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Otto-Iivari Meurmanin puiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489559.0, 6674387.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Pirttipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487718.0, 6685141.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Naalipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505093.0, 6693116.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Mikkelänpellon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479951.0, 6676745.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Laajavuori I',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491660.0, 6685297.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Sikurimyllyn puiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491218.0, 6678590.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Itäviitanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478586.0, 6672672.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Hylkeenpyytäjän kenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496205.0, 6671394.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vetokannas',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493370.0, 6684074.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kalapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485508.0, 6671783.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Tillinmäenkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479229.0, 6672966.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Peltoniemenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503522.0, 6689730.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Lumikintien leikkikenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503000.0, 6676717.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Korppitie',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502700.0, 6693629.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Näsinojanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496708.0, 6682937.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Poppelipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502328.0, 6689672.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Pakilan siirtolapuutarha / Leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498265.0, 6681768.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Toivo J. Särkän puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505274.0, 6676749.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Thurmaninpuiston lähiliikuntapaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484664.0, 6677577.0), 3879), 4326),
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Haka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494626.0, 6685546.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Estepuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505780.0, 6681438.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Valkamanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477043.0, 6675428.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Käräjäpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497154.0, 6686101.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Talin siirtolapuutarha / Leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492251.0, 6678301.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Nöykkiönpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481514.0, 6672546.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kurkijoenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489282.0, 6677027.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Lähdepuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505859.0, 6683564.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Auringonkehrän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484807.0, 6673243.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Ankkuripuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480514.0, 6670673.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Alppikylänpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503733.0, 6683041.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Päivättärenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505732.0, 6689503.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Pitkänotkon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482562.0, 6676369.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Runoilijanpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498571.0, 6679433.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Torkkelinpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497510.0, 6674732.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Iivisniemenpellon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483054.0, 6670520.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Niittysillanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487231.0, 6673028.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Otto-Iivari Meurmannin puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497576.0, 6678251.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Ankkuripohjanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480174.0, 6670449.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Krankanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494653.0, 6679080.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kirjastonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484770.0, 6677571.0), 3879), 4326),
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Autioniitty',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489346.0, 6683275.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Westendin uimarannan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489477.0, 6672890.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Tiilimäenlehto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493009.0, 6676010.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hevosenkenkäpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493041.0, 6671648.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Holmankorven leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483806.0, 6673501.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ruutanapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498233.0, 6679762.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Maarianmaanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499453.0, 6679268.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Porttipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487313.0, 6676358.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Matinkylän urheilupuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486258.0, 6671564.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Sateentien leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489571.0, 6673417.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ratsumiehenpuisto I',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506013.0, 6685351.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Tervasaari',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498296.0, 6673464.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Museon puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496052.0, 6673515.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Stenbergin puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483748.0, 6677982.0), 3879), 4326),
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Tokoinranta',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497092.0, 6674126.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Solnan puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493269.0, 6675930.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Miilukorven kentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480794.0, 6679289.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Lainekallion leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479393.0, 6671275.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Asolanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503160.0, 6690692.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Karviaismäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500402.0, 6681196.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Linnanpellonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505902.0, 6679686.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vanhapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495449.0, 6685499.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Keuruunpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497637.0, 6675518.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Niittykummunpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486493.0, 6672966.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ilkantien puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494677.0, 6678897.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kukkakimpunpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502264.0, 6687670.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Ymmerstanmäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483795.0, 6676850.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Painiityn puiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490772.0, 6680264.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Vallilan siirtolapuutarha / Leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497662.0, 6676371.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Selkämerenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495199.0, 6671898.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leppävaaran urheiluaukion Angry Birds- leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489120.0, 6679155.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Linnankoskenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495474.0, 6674774.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hevoshaka I',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505935.0, 6684608.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Numeropuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498056.0, 6684533.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Linnaistenmetsä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488041.0, 6682305.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Aittarivi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490165.0, 6684085.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Reittipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491808.0, 6687591.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Sibeliuksen puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495203.0, 6674449.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Varsasaaren kesämaja-alue / Leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488899.0, 6670938.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Lammaspuisto I',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489077.0, 6683125.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Siikajärven leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25473632.0, 6683746.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Heinäpellonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500513.0, 6682802.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Juoksuhaudanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506477.0, 6681903.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Lähetinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490295.0, 6678179.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kippotien leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480355.0, 6676330.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kelokallio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505560.0, 6683222.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pikku-Huopalahden puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494149.0, 6676080.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Veneentekijänpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493724.0, 6671063.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hiidenkiukaanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491522.0, 6674092.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vallilanlaakso',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497462.0, 6676272.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Yläkartanonpolun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481353.0, 6669967.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Mellsteninniemen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487582.0, 6671353.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Jupperin rantapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486822.0, 6682727.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Mikkelänpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479437.0, 6677066.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Ankkuripohjanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480174.0, 6670449.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Minkkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504642.0, 6693105.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Haukiverkon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487048.0, 6671815.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kuitinkallion leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484654.0, 6673644.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Haarikkopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502588.0, 6687901.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Paalupuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505958.0, 6687279.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Loviisanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496739.0, 6675488.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Palttinapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477706.0, 6675621.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Bielken leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499416.0, 6670426.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Maitorpanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491167.0, 6690575.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Annala',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498741.0, 6677696.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Nihtimäen puiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486487.0, 6677627.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Hans Floorin puiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485677.0, 6674838.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Rakuunapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493722.0, 6676230.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Jokiuomanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492090.0, 6684571.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Rastasniityn leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486700.0, 6680404.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Vennynpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494132.0, 6683211.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kongsberginpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481021.0, 6670736.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Lähdesilmän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485459.0, 6681156.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Isonneva',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493992.0, 6677853.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kannupuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501924.0, 6675207.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Nurkka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503115.0, 6684198.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ohjaajanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493856.0, 6679424.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Solvikinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508682.0, 6676793.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Jakomäenkallio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504153.0, 6682676.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Johtokivenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500874.0, 6679959.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Saarnimäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481437.0, 6676130.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Jokiniemenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498510.0, 6679639.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Myllykallio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492771.0, 6671702.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Bockin puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499226.0, 6680719.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Pallopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504963.0, 6681824.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Bäckbynpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500537.0, 6686244.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Tuohisniityn leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485728.0, 6679970.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Trillapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488138.0, 6678157.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kotiportinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480950.0, 6672872.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Viiripuiston länsiosan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480998.0, 6676381.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Liljapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501346.0, 6686551.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kestinmäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506476.0, 6692749.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Tornitason leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488758.0, 6673628.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Telakanpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496301.0, 6671862.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Naapurinmäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481854.0, 6677473.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Vilpunpolun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485917.0, 6671525.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Soihtupuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484084.0, 6681049.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Sudenkuoppa',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507992.0, 6678989.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Korennonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507654.0, 6691971.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Juhannustien korttelipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501325.0, 6685919.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Askistonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487751.0, 6685437.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Jokiniemen puutarha',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503240.0, 6686817.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Itärannan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490209.0, 6673586.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Hakunilanraitti',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505690.0, 6684472.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kirsikkapuro',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495707.0, 6679999.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Työmiehenpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495744.0, 6672506.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ilolanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501390.0, 6690661.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pietaryrtinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501271.0, 6688611.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Uusmäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490557.0, 6680885.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ester Koskelaisen puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505742.0, 6690199.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kirvelipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501221.0, 6686794.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Nurmilinnunpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487993.0, 6679949.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kolkkapojanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492119.0, 6679275.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Pikkukosken puistometsä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498274.0, 6678667.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Uudenrajanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502174.0, 6689058.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Entressen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481107.0, 6676774.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leppälinnunkujan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488096.0, 6679740.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kaivopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497466.0, 6671462.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vuorimiehenpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497118.0, 6671809.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Nuotiopuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489232.0, 6677636.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kuttulammen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486537.0, 6681318.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kesanto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488590.0, 6683779.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Otsolahdenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490090.0, 6673761.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Simonkallionpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501115.0, 6688381.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kilonkallion leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487590.0, 6678820.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Juliuksenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500001.0, 6674704.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Aitapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488311.0, 6683806.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Von Glanin puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492629.0, 6681612.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Paukkulanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503287.0, 6680133.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Koivikkopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495986.0, 6679085.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Noropuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481098.0, 6675675.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kasavuoren leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483600.0, 6677562.0), 3879), 4326),
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Joukinahon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480219.0, 6672938.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Strenginkulma',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502112.0, 6688219.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pyhän Laurin puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491909.0, 6674274.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Laajasalon urheilupuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503349.0, 6673862.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Jengipolun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499817.0, 6680423.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kirjokivenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494489.0, 6680838.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Varistonniitty',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489752.0, 6684288.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Rajatorpanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490669.0, 6682747.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Herttoniemen aluepuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502199.0, 6677645.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kiillepuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500260.0, 6680176.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Porthaninpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497332.0, 6674457.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kettupuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502058.0, 6676971.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Rukkilan puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492360.0, 6682261.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vanha Kirkkopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496626.0, 6672585.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Repovuorenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495647.0, 6681962.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Vantinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479096.0, 6674728.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Aallonharjan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479981.0, 6670735.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kairakenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506064.0, 6680854.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Laamanninpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497892.0, 6683211.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Pöllökallio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489225.0, 6682280.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Herttoniemen siirtolapuutarha / Leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501026.0, 6675571.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kulopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503784.0, 6692618.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Hakopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503467.0, 6690267.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Urheilukadun puistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495680.0, 6674848.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vaunukallio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506244.0, 6685554.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Laajavuori II',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491345.0, 6684983.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Laivatorin leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480586.0, 6670958.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Savela',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499455.0, 6680620.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Ratsaspuisto / Esteetön leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494809.0, 6676125.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Suinonpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483810.0, 6668256.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Hesperianpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496118.0, 6674085.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Punakiventien puistometsä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25508099.0, 6677611.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Suuntimopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502109.0, 6684859.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Reuna',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491212.0, 6697047.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Koivuviidankentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488031.0, 6674630.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ojahaka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492338.0, 6683588.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Oulunkyläntienkenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498162.0, 6678863.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Iltaruskonpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488398.0, 6673793.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Haasia',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489581.0, 6684051.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Tilkan mäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494487.0, 6676582.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Vapaalan aukee',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490117.0, 6683530.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Estetie',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494213.0, 6681731.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Tasakallion leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483022.0, 6676768.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Sahapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490449.0, 6683071.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Mätäspolun puistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504591.0, 6683607.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ylästön Mustikkasuo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495330.0, 6685876.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Keulapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507229.0, 6677338.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Sinirikonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501636.0, 6686865.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Metsolansuo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505484.0, 6693981.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Krämertinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496472.0, 6678871.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Köydenpunojanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495859.0, 6672272.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Hummapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505669.0, 6684849.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Onnenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497639.0, 6678595.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Myllymäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506402.0, 6681073.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Ruutipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504115.0, 6681249.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Vanhan-Mankkaan puiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487139.0, 6675438.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Keskuspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495248.0, 6680494.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kuitinmäenkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485181.0, 6672891.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Saksanmäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498100.0, 6677379.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kärppäpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504762.0, 6694321.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Lampi',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504536.0, 6680965.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hiidenkivenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500983.0, 6683593.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Viertolanranta',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501298.0, 6686300.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Mustapuro',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504484.0, 6678336.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kivinokan kesämaja-alue / Leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500314.0, 6675807.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Maistraatinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495762.0, 6676171.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Saunalahdenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25478280.0, 6672541.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Hurtigin puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484734.0, 6677309.0), 3879), 4326),
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Kuulapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506106.0, 6681480.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kielipolun korttelipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493224.0, 6681445.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Akseli Toivosen kenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497216.0, 6677923.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Tuuliniityn leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488758.0, 6673234.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Tapaninvainio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499379.0, 6682826.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kuismapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500458.0, 6688938.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Pihlajarinteen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483312.0, 6680256.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Vallilantien puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497887.0, 6675541.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ojapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492043.0, 6683770.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Åbergin lastentalo',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489642.0, 6679225.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Tarha',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504233.0, 6689809.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Seponkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488509.0, 6674831.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Lansapuronpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487923.0, 6677903.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kallion kirkon tontti',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497199.0, 6674688.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Niipperin leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486083.0, 6685573.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Ryytimaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484096.0, 6680763.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Raudikkopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505888.0, 6684841.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pakilanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496562.0, 6681229.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Aittalehto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491315.0, 6680321.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Nurmikuukusen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487012.0, 6681178.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Marsinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505536.0, 6692218.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Katajanokan puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497807.0, 6672785.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Puotilan leikkiniitty',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505234.0, 6677513.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Krattivuoren leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480369.0, 6670098.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Käpypuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502684.0, 6690408.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Neilikkapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502153.0, 6686375.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Isonmännynpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495577.0, 6685176.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kuitinmäenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485132.0, 6672892.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Savikkapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501371.0, 6687118.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Thurmaninpuiston leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484559.0, 6677441.0), 3879), 4326),
        false,
        'Kauniainen',
        'municipality'
    ),
    (
        'Leikkipaikka Leppäkorvenmäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505033.0, 6693899.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Veijarivuoren puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493609.0, 6670302.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Tuurholmanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501607.0, 6673880.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Aapraminpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492663.0, 6682684.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Kuutamopuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484802.0, 6673479.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Rinkelipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489618.0, 6678862.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Jukolan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486444.0, 6675460.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Sinisiimeksen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483551.0, 6674088.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Antaksenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497140.0, 6686667.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Meripuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497066.0, 6671402.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Seitsenmerenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479932.0, 6671285.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kumpulan siirtolapuutarha / Leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497583.0, 6677510.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Järvikorpi, leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481862.0, 6670587.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Nuorapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492183.0, 6682774.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Notkopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500885.0, 6691366.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Viiripuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481082.0, 6676257.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Linnalahdenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506387.0, 6678624.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Jalavapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481330.0, 6676029.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Maapallopuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25484871.0, 6673123.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Itä-Hakkilanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506406.0, 6687028.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Hyväntoivonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495446.0, 6671579.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Niittypuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486757.0, 6672956.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Eestinaukion leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482066.0, 6672961.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Laakavuori',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506594.0, 6680788.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Suursuonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496782.0, 6680092.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Ylämäenlaidan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482380.0, 6676499.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kuusijärven leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506194.0, 6689008.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kastellinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507285.0, 6679801.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Leirimäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491630.0, 6682778.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Lammaspuisto II',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489110.0, 6682902.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Matinkallionpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485763.0, 6672241.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Tonttumaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487045.0, 6673522.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Hermanninpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498320.0, 6675470.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Renginmäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492329.0, 6681260.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Säätytalon puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497505.0, 6673167.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kiskonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494662.0, 6676320.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kartanonkulma',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481353.0, 6669967.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Rastilankallio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506887.0, 6677083.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Pikku-Keimolan puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25490607.0, 6689412.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kvartsijuonenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492164.0, 6689936.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Sinebrychoffin puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496368.0, 6672080.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Lystimäenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486135.0, 6673655.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Askistonmetsä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487792.0, 6686425.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Osmonlehto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497184.0, 6677568.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kivikaudenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491404.0, 6683306.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Mäenlaskijanpuisto "suopuisto"',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501693.0, 6675995.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Makasiinipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496508.0, 6673478.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Sahrapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25488942.0, 6683980.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Liisanpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497825.0, 6673440.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Louhijanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492888.0, 6683553.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Vallilanlaakso',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497267.0, 6676514.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Liinamäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505923.0, 6686065.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Matinkylän uimarannan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486459.0, 6670941.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Väinämöisenpuistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25495445.0, 6673140.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Delfiiniaukio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491821.0, 6683638.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Valimomestarinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492923.0, 6678500.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Valpurinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494519.0, 6675588.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Helene Schjerfbeckin puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493873.0, 6682790.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Marjaniemen siirtolapuutarha / Leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503813.0, 6676906.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Kuntopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25506336.0, 6681423.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Myllykallio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492571.0, 6671680.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Haltialan kartano',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497443.0, 6684749.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Purotanhuan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25482431.0, 6672182.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Koukkuniitty',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492720.0, 6685595.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Saudarkrokurinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485501.0, 6688104.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Nupurinkartanonpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477446.0, 6680611.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Koivupäänpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493589.0, 6689702.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Tähtimöpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25487716.0, 6679936.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Rekolankenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25504494.0, 6691110.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Riskupuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25505750.0, 6678933.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Aamukasteenkujan puistikko',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500529.0, 6685857.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Kuurinkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483958.0, 6675873.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Kurkimäki',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503898.0, 6679915.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Vuoritontunpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25486870.0, 6673511.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Tapuli',
        ST_Transform(ST_SetSRID(ST_MakePoint(25501492.0, 6684508.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Planeetan päiväkodin leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485056.0, 6672897.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Syvänsalmenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483593.0, 6671003.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Talinlehto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492431.0, 6678099.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Frans Emil Sillanpään puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502142.0, 6676658.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Jyrkinkallio',
        ST_Transform(ST_SetSRID(ST_MakePoint(25491511.0, 6679179.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Ilveskorvenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25507624.0, 6678772.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Soukanahteen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481878.0, 6669805.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Matinniityn leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485879.0, 6672000.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Virmajuurenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500953.0, 6686995.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Katri Valan puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498029.0, 6674763.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Räckhalsinpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502993.0, 6691279.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Pilvipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493210.0, 6684862.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Keinukenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25499351.0, 6670395.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Keijuniityntien leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25489066.0, 6674925.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Rusakkopuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483390.0, 6679164.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Laivastopuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25498243.0, 6672870.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Hämeenlinnanväylän lähivirkistysalue',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493162.0, 6682378.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Puuhkalakinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25477635.0, 6675886.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Mäkitorpanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497702.0, 6679675.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Löydöspuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25492193.0, 6683336.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Sähköttäjänpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496674.0, 6676026.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Pitkänkorvenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25481403.0, 6676414.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Iltapäivänsillan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25485243.0, 6672856.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Sipulipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25502663.0, 6688628.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Paloheinän leikkikenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(25496466.0, 6681779.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Aino Ackten puisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25493903.0, 6679052.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Mikkelänrinteen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25479840.0, 6676930.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Illenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25497887.0, 6685697.0), 3879), 4326),
        false,
        'Vantaa',
        'municipality'
    ),
    (
        'Leikkipaikka Kaadepolku',
        ST_Transform(ST_SetSRID(ST_MakePoint(25503923.0, 6682395.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Latokaskenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25480986.0, 6673799.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Kuuttipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(25483444.0, 6670500.0), 3879), 4326),
        false,
        'Espoo',
        'municipality'
    ),
    (
        'Leikkipaikka Ryytimaan korttelipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25494618.0, 6678239.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    ),
    (
        'Leikkipaikka Anianpellonpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(25500138.0, 6682180.0), 3879), 4326),
        false,
        'Helsinki',
        'municipality'
    );

-- Enable trigger to allow recursive refresh
ALTER TABLE playgrounds ENABLE TRIGGER refresh_active_playgrounds_on_playground;

REFRESH MATERIALIZED VIEW v_active_playgrounds;
