-- Disable trigger to prevent recursive refresh
ALTER TABLE playgrounds DISABLE TRIGGER refresh_active_playgrounds_on_playground;

-- Import playgrounds
INSERT INTO playgrounds (name, location, has_supervised_activities, city, data_source)
VALUES
    (
        'Hemmilän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23455754.6702, 6705024.5924), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Piiparinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459124.4969, 6708537.6906), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Hyppäskentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461782.2092, 6714961.9927), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Tyytikinpesän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461463.9729, 6715104.8991), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Iskoisten leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23466072.2255, 6720572.7315), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Läpikäytävän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464782.4043, 6714300.3787), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Liikennepuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465592.6257, 6698660.3111), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Nyplääjänpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462920.7939, 6715036.5753), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Lehtisalonpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465968.1472, 6720227.4254), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Tenderipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459317.123, 6705338.9756), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Nunnanpellon leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23468467.6411, 6703759.9292), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Moisionkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461217.6663, 6713482.088), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Jaakonkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461866.5878, 6715933.9149), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Oinasmäen Joosepin leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458107.9732, 6707897.2299), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Heinämaijan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462309.981, 6715670.21), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Saaronniemen uimarannan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23450127.7252, 6701359.6459), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Herrahaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460869.9837, 6713687.5006), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Jäkärlänpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464617.7248, 6714553.1574), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Perkkiönkadun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464593.6309, 6714423.0228), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Suikkilanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456944.8535, 6706108.2772), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Frantsinkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462387.9265, 6706676.5561), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Virgonkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461780.03, 6714343.9294), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Rakennusmestarinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456910.7622, 6707243.4043), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Järviniitun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23455860.2583, 6699603.658), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Paunanpellon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462300.9385, 6710645.4196), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Paaskunnanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462728.9476, 6705528.8864), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Tammikankareen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458399.7091, 6707133.4197), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Ratsastajanpuiston leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23470281.3506, 6700638.2172), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Raskinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459528.7804, 6709014.6334), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Liljalaakson leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458198.9042, 6709194.6568), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Orjasmäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460853.232, 6708990.0038), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Leikkimäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459397.9295, 6708856.8636), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Julinin leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462654.1647, 6706363.8805), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Korpisaran leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457360.1974, 6708709.3691), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Alastalonpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456840.8991, 6706306.7262), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Parolanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458914.8889, 6708520.4874), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Huhtaraivion leikkikenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463916.3655, 6704971.9876), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Paltanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460540.8119, 6708357.129), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kaijalanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458468.4791, 6708322.0376), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Hyrköistenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23453972.5081, 6705214.396), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kärsämäen urheilupuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460364.1288, 6707751.1426), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kirstinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458105.5408, 6704419.475), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Elinanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461643.2374, 6705630.8108), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Koukkukankareen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458276.9063, 6706213.6407), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Urheilupuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459338.0203, 6703392.1569), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Savonkedon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459993.6908, 6707754.8669), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Jukolanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459610.2723, 6707702.4202), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Piirtäjänpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456064.0518, 6707069.3702), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Martanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458506.8127, 6707750.786), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Ingegerdinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461658.6146, 6707286.7005), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Tammispaltanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458879.5336, 6707082.1369), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Myrskypuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457439.5135, 6698261.1216), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kirveenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460087.5944, 6706807.2814), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Koroistenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23473634.4579, 6701580.8677), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Siirinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460599.4635, 6706739.698), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Hovilanmetsän leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465209.2195, 6703015.4503), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Kastunpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460197.5978, 6706426.2657), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Moskalan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23472210.9016, 6702114.6187), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Pertunpuistikon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458606.1257, 6705187.0385), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kesämäen kentän leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23466913.0067, 6700533.4501), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Solmukadun leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465049.5494, 6706146.769), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Alfan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460323.8529, 6706130.8095), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Vätinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459469.3813, 6706186.9772), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Härkähaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23455594.9227, 6706113.5418), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Itäpellonpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458836.4497, 6705646.1074), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Silvolanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464439.8405, 6705905.5944), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Pyölinpellonpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458082.4977, 6705821.7152), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Jyrkkälänmäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456229.4533, 6705527.2677), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Civiksenkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460996.9369, 6705996.8997), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Ruohonpäänpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458753.232, 6705875.8983), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Pikkunotkon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464241.6535, 6705586.5077), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kointähdenkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457061.0438, 6698367.9243), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Yrjänänpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459486.8712, 6705549.8814), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Jussi Ollinpojan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462903.8925, 6705352.6935), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Vähäheikkilänkenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458957.7541, 6702699.6463), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Nummenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461542.1235, 6705367.1953), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Tuomaanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460510.2964, 6705347.046), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Mansinpuistikon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464705.5557, 6702742.9284), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Lauri Viljasen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462025.821, 6705130.8738), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Saukonojanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457144.5692, 6705191.0655), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Jaaninpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463167.7107, 6704884.0892), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Hannunniitun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462790.7062, 6704990.7708), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Museomäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459426.69, 6704890.8759), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Puolalanmäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459199.244, 6704821.9513), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Pahaniemenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23455988.5281, 6704906.2519), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Paakarlanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23454144.1442, 6704963.741), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kirskulinnun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463554.0719, 6704642.9688), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Paimenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462035.9043, 6704669.0864), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Rosanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459840.8629, 6701339.0394), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Ruukinaukion leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461785.3547, 6704758.8972), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Karvataskunpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464548.7371, 6704290.0132), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Puolalanmäen leikkipaikka 2',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459278.9614, 6704791.4806), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Iso-Heikkilänpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457576.4108, 6704695.2045), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kurjenkaivonkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460744.5461, 6704489.6491), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Mannerheiminpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458771.1646, 6704415.9617), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Rajakarhunpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464809.9546, 6704210.6271), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Varissuonkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464590.1361, 6704269.4742), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kotimetsän leikkipaikka 1',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462976.2637, 6704347.0611), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kotimetsän leikkipaikka 2',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462833.875, 6704331.25), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kisapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23454120.2149, 6704253.9223), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Niinismäenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23467368.655, 6704052.849), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Barkerinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458620.7421, 6703579.0957), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Tiuhtapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465782.225, 6704077.9469), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Vaahemäenpellon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458353.4543, 6700261.0046), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Marjavuoren leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464336.6852, 6704037.419), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kupittaanpuisto/ Liikuntapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460964.1655, 6704054.7561), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Seikkailupuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460920.4058, 6704149.8323), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kupittaanlähteen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460920.9658, 6704048.7951), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kupittaanpuiston leikkipaikka PaPu',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460844.0631, 6704044.5647), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Vartiovuoren kahluualtaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460013.0031, 6704144.39), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Vartiovuoren leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460089.2573, 6704166.9919), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Samppalinnan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459758.375, 6704035.4688), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Annanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458106.4127, 6704062.5997), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Varsahaanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23466526.1058, 6700891.2586), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Kanslerinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457275.1995, 6704122.9602), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Pääskyvuoren leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463506.0315, 6703885.9882), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Molskipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23467070.1262, 6703758.416), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Saarnipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460354.377, 6703704.5027), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Majanummen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464725.0768, 6703444.021), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Munkkion leikkikenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462902.3515, 6703462.9675), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kirismäenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23472286.829, 6702701.4616), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Niilo Oravapuun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464709.1747, 6703394.5926), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Hurttivuoren leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463643.1497, 6703241.9836), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Urheilupuiston leikkipaikka 1',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459377.4198, 6703368.4777), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Martinkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459284.1084, 6703330.0348), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Pakkarinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458105.4721, 6703379.0253), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Marjamaanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461976.5691, 6703159.4937), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Radioasemanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461590.4238, 6703185.0607), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kiulukujan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458983.2675, 6703007.9023), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Vilkkilänmäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458636.7445, 6703183.5597), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Turjanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461472.8469, 6702874.5649), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Sikaojanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459504.189, 6702980.1356), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Hakametsän leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23471743.7579, 6702646.3777), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Honkamäenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461069.4367, 6702767.1742), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Lylynpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460151.9027, 6702734.1182), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Harakkapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459742.0007, 6702789.2585), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Ojarinteenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458362.735, 6702608.2536), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Haanväljän leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23472900.4822, 6702440.7757), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Lähteenmäen leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465949.3827, 6702522.1584), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Raadinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464606.4038, 6702430.5113), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Tähkäpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461201.9488, 6702428.4287), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Korppolaispuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457949.1362, 6702489.9408), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Hiiskan kenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(23466795.9007, 6702253.6078), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Lausteenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463828.3883, 6702237.4384), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Luolavuorenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460183.0023, 6702255.8182), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kahvelin leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457759.8079, 6702201.6969), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Poropuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463319.8954, 6702183.4597), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kenraali Airon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458921.8578, 6702102.7177), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Teppalan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23471728.5242, 6701883.9819), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Ilpoistenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460680.7163, 6700898.5084), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kettupuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463651.2739, 6701958.4217), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kuhilaspuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461324.636, 6701904.895), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Peter Thorwösten niitun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456081.8702, 6701904.595), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kansanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23455007.4439, 6701907.6834), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Petankkikenttä',
        ST_Transform(ST_SetSRID(ST_MakePoint(23473280.2783, 6701675.2905), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Saaronniemen leirintäalueen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23450117.0797, 6701744.3192), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kurjenkankareen leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23472625.6064, 6701463.7672), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Kiurunpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462062.0936, 6699801.3976), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Puistotädinpolun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460840.3859, 6701426.0775), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Arolan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456327.7502, 6701575.1211), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Angervon leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23471266.5083, 6701277.7102), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Piikkiönmetsän leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23469788.7903, 6701320.7524), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Välskärinpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462173.7471, 6701381.6335), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Ratsumiehenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459326.602, 6701073.3077), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Empon leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23466205.6969, 6697752.5928), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Naulatehtaanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458918.774, 6701137.3984), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kumpulanpuisto, leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23467355.4629, 6700803.6665), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Kuhankentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23459236.2199, 6698899.509), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Muntionpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461622.8079, 6700898.0175), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Moikoistenmäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458113.1754, 6700888.0435), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Vräkinniitun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458595.0132, 6700672.4217), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Skandinavianpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23461922.7377, 6700507.0814), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Junginkentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23460280.2552, 6700436.8086), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Vättilän leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465337.0535, 6700398.9906), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Kliistperin leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465700.7532, 6697037.779), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Käen leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462320.9157, 6700078.8319), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Häppilänlaakson leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456101.3214, 6700127.8741), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Kurrenpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463216.8018, 6699866.8774), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Tammilehdon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457492.9218, 6699831.3699), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Pilttipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456943.5649, 6699800.0497), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Enköpinginpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463984.2102, 6699760.3783), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Voivalan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23467773.8444, 6699468.3916), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Rauhalinnan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23467208.0331, 6699515.233), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Pekolanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464841.4414, 6699469.8928), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Taskalanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465125.5007, 6699279.2029), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Taskalanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465125.5007, 6699264.4579), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Taskalanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465116.7876, 6699269.4491), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Herrasniityn leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23462663.9798, 6699237.774), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Kaistarniemenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23458270.7325, 6699339.0966), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Veitenmäen leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23466150.8827, 6699107.8072), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Paltanpuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465130.6749, 6699038.3976), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Auvaisbergin leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23463503.6631, 6699091.7829), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Laholanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457064.7627, 6698930.542), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Hovirinnan rantapuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465540.011, 6698667.4248), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Senioripuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23465505.1437, 6698666.6823), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Arnikan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457610.1814, 6698793.7871), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Koristonrannan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23464398.459, 6698448.2695), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Itätalonpellon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456759.3841, 6698410.1915), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Suulikentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456299.7974, 6698491.7227), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Pellin leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(23466871.247, 6698181.0461), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    ),
    (
        'Suvituulenniitun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23457120.52, 6697684.2892), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Tuurenpellon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(23456863.3334, 6697639.6203), 3877), 4326),
        false,
        'Turku',
        'municipality'
    ),
    (
        'Harvaluodon uimaranta',
        ST_Transform(ST_SetSRID(ST_MakePoint(23473289.4348, 6695471.629), 3877), 4326),
        false,
        'Kaarina',
        'municipality'
    );

-- Enable trigger to allow recursive refresh
ALTER TABLE playgrounds ENABLE TRIGGER refresh_active_playgrounds_on_playground;

REFRESH MATERIALIZED VIEW v_active_playgrounds;
