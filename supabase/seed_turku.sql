
-- Clear existing data for Turku
DELETE FROM playgrounds WHERE city = 'Turku';
        
-- Clear existing data for Kaarina
DELETE FROM playgrounds WHERE city = 'Kaarina';
        
-- Import playgrounds
INSERT INTO playgrounds (name, address, location, description, has_supervised_activities, city)
VALUES
    (
        'Hemmilän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23455754.67, 6705024.592), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Piiparinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459124.497, 6708537.691), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Hyppäskentän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23461782.209, 6714961.993), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Tyytikinpesän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23461463.973, 6715104.899), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Iskoisten leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23466072.226, 6720572.732), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Läpikäytävän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23464782.404, 6714300.379), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23465592.626, 6698660.311), 3877), 4326),
        NULL,
        false,
        'Kaarina'
    ),
    (
        'Nyplääjänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462920.794, 6715036.575), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Lehtisalonpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23465968.147, 6720227.425), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Tenderipuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459317.123, 6705338.976), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Nunnanpellon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23468467.641, 6703759.929), 3877), 4326),
        NULL,
        false,
        'Kaarina'
    ),
    (
        'Moisionkentän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23461217.666, 6713482.088), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Jaakonkentän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23461866.588, 6715933.915), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Oinasmäen Joosepin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458107.973, 6707897.23), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Heinämaijan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462309.981, 6715670.21), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Saaronniemen uimarannan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23450127.725, 6701359.646), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Herrahaan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460869.984, 6713687.501), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Jäkärlänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23464617.725, 6714553.157), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Perkkiönkadun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23464593.631, 6714423.023), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Suikkilanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23456944.854, 6706108.277), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Frantsinkentän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462387.927, 6706676.556), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Virgonkentän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23461780.03, 6714343.929), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Rakennusmestarinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23456910.762, 6707243.404), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Järviniitun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23455860.258, 6699603.658), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Paunanpellon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462300.939, 6710645.42), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Paaskunnanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462728.948, 6705528.886), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Tammikankareen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458399.709, 6707133.42), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Ratsastajanpuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23470281.351, 6700638.217), 3877), 4326),
        NULL,
        false,
        'Kaarina'
    ),
    (
        'Raskinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459528.78, 6709014.633), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Liljalaakson leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458198.904, 6709194.657), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Orjasmäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460853.232, 6708990.004), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Leikkimäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459397.93, 6708856.864), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Julinin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462654.165, 6706363.881), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Korpisaran leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23457360.197, 6708709.369), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Alastalonpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23456840.899, 6706306.726), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Parolanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458914.889, 6708520.487), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Huhtaraivion leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23463916.366, 6704971.988), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Paltanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460540.812, 6708357.129), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kaijalanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458468.479, 6708322.038), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Hyrköistenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23453972.508, 6705214.396), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kärsämäen urheilupuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460364.129, 6707751.143), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kirstinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458105.541, 6704419.475), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Elinanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23461643.237, 6705630.811), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Koukkukankareen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458276.906, 6706213.641), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Urheilupuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459338.02, 6703392.157), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Savonkedon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459993.691, 6707754.867), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Jukolanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459610.272, 6707702.42), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Piirtäjänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23456064.052, 6707069.37), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Martanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458506.813, 6707750.786), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Ingegerdinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23461658.615, 6707286.701), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Tammispaltanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458879.534, 6707082.137), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Myrskypuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23457439.514, 6698261.122), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kirveenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460087.594, 6706807.281), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Koroistenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23473634.458, 6701580.868), 3877), 4326),
        NULL,
        false,
        'Kaarina'
    ),
    (
        'Siirinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460599.464, 6706739.698), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Hovilanmetsän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23465209.22, 6703015.45), 3877), 4326),
        NULL,
        false,
        'Kaarina'
    ),
    (
        'Kastunpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460197.598, 6706426.266), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Moskalan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23472210.902, 6702114.619), 3877), 4326),
        NULL,
        false,
        'Kaarina'
    ),
    (
        'Pertunpuistikon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458606.126, 6705187.039), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kesämäen kentän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23466913.007, 6700533.45), 3877), 4326),
        NULL,
        false,
        'Kaarina'
    ),
    (
        'Solmukadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23465049.549, 6706146.769), 3877), 4326),
        NULL,
        false,
        'Kaarina'
    ),
    (
        'Alfan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460323.853, 6706130.81), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Vätinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459469.381, 6706186.977), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Härkähaan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23455594.923, 6706113.542), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Itäpellonpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458836.45, 6705646.107), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Silvolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23464439.841, 6705905.594), 3877), 4326),
        NULL,
        false,
        'Kaarina'
    ),
    (
        'Pyölinpellonpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458082.498, 6705821.715), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Jyrkkälänmäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23456229.453, 6705527.268), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Civiksenkentän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460996.937, 6705996.9), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Ruohonpäänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458753.232, 6705875.898), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Pikkunotkon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23464241.654, 6705586.508), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kointähdenkentän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23457061.044, 6698367.924), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Yrjänänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459486.871, 6705549.881), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Jussi Ollinpojan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462903.893, 6705352.694), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Vähäheikkilänkenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458957.754, 6702699.646), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Nummenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23461542.124, 6705367.195), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Tuomaanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460510.296, 6705347.046), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Mansinpuistikon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23464705.556, 6702742.928), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Lauri Viljasen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462025.821, 6705130.874), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Saukonojanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23457144.569, 6705191.066), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Jaaninpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23463167.711, 6704884.089), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Hannunniitun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462790.706, 6704990.771), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Museomäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459426.69, 6704890.876), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Puolalanmäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459199.244, 6704821.951), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Pahaniemenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23455988.528, 6704906.252), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Paakarlanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23454144.144, 6704963.741), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kirskulinnun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23463554.072, 6704642.969), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Paimenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462035.904, 6704669.086), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Rosanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459840.863, 6701339.039), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Ruukinaukion leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23461785.355, 6704758.897), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Karvataskunpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23464548.737, 6704290.013), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Puolalanmäen leikkipaikka 2',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23459278.961, 6704791.481), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Iso-Heikkilänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23457576.411, 6704695.205), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kurjenkaivonkentän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23460744.546, 6704489.649), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Mannerheiminpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23458771.165, 6704415.962), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Rajakarhunpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23464809.955, 6704210.627), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Varissuonkentän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23464590.136, 6704269.474), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kotimetsän leikkipaikka 1',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462976.264, 6704347.061), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kotimetsän leikkipaikka 2',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23462833.875, 6704331.25), 3877), 4326),
        NULL,
        false,
        'Turku'
    ),
    (
        'Kisapuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(23454120.215, 6704253.922), 3877), 4326),
        NULL,
        false,
        'Turku'
    );
