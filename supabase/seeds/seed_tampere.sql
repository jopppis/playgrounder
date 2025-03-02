
-- Clear existing data for Tampere
DELETE FROM playgrounds WHERE city = 'Tampere';
        
-- Import playgrounds
INSERT INTO playgrounds (name, address, location, description, has_supervised_activities, city)
VALUES
    (
        'Ihaistenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24482524.15639, 6825507.52671), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Haavistonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491120.78, 6835333.097), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kämmensuonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490671.682, 6835407.566), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Nurmin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24496769.219, 6825692.551), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Terälahden leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494697.503, 6844377.582), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vastarannanpuisto itä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24497270.72344, 6824312.56907), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Katiskanmetsikkö',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24496964.134, 6823757.694), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kumpulanpuisto 1',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24496720.46, 6822153.083), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Ekkilänpuisto pohjoinen',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24496057.28205, 6823095.42518), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Aholanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495804.78, 6822686.05), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Lautakatonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495303.181, 6822226.073), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kepinojanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495930.287, 6822408.683), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Atalanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495717.003, 6821997.61), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Atalanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495432.51359, 6821851.23565), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Nikinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495053.849, 6821803.631), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Aitoniitty',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495335.652, 6820362.93), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Laavupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495539.312, 6821451.351), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Suohopeatäplä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24496267.955, 6821202.336), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Maijanmetsä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24496007.503, 6819556.138), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Mikkolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495589.799, 6819305.086), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kalervonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495841.96532, 6820027.05202), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Toispuolisenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24496235.618, 6820242.554), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Atanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494468.117, 6821305.384), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Korpikodinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494360.457, 6820474.876), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Käpylehmänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494960.569, 6820658.32), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Torponpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24493817.76281, 6820052.21724), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Helakallionpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494509.469, 6819919.207), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Koiramäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495123.571, 6819656.672), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Rauninaronpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492975.238, 6820268.218), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Linnanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492222.569, 6820502.902), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kirkkoladonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24493351.538, 6820728.973), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tanhuanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492593.843, 6820576.833), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Jyrkänteenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492583.08, 6818832.177), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pyhäojanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24493539.1695, 6818977.76218), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kakaravaara',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492492.864, 6819826.698), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Jaakonmäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491896.3042, 6821479.32431), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Uudenmaanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491009.452, 6820621.823), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Jukolanpuisto etelä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491727.877, 6820605.837), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Ruotulanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491177.20788, 6821259.69487), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Uudenkylänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490813.81455, 6820697.35544), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Jankanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491954.334, 6820125.168), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kirkkosuo',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491245.155, 6818963.124), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kirkkosuo',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491462.641, 6819280.772), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Aarikkalanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491256.398, 6820186.253), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Leivonpuisto pohjoinen',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491019.10253, 6819804.25305), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vuohenhiekanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490984.86, 6819476.991), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kynsilaukanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495583.798, 6817260.758), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Levonmäenpuisto-kumina',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495319.981, 6817407.164), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Haiharanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494010.658, 6818214.15), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Karosenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494873.341, 6817198.17), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pysäkkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24496283.564, 6818488.765), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Juvelanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495186.36, 6818686.156), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vehmaistenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24496091.79343, 6818677.66376), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Metsäniitty',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494632.932, 6816937.816), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Hirvikallionpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495166.58, 6816389.057), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Patasuonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24495086.264, 6816834.963), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Solkimäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494263.141, 6816966.404), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Isoniitynpuisto annalanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494257.214, 6817277.087), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Lintuhytinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24494303.809, 6814619.807), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Muulanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492443.703, 6817723.737), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Riipuksenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492993.792, 6817980.458), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Harppipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492259.505, 6818669.096), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kalle päätalon puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492450.202, 6818123.783), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Isolammenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24493326.874, 6817916.042), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Neulaspuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491289.471, 6817412.721), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Härkälänmäki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490810.49, 6818095.944), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Laulunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491005.26899, 6818644.35135), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Koivikonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490809.341, 6817493.157), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Lukonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491895.913, 6817519.818), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Keltanokanpuisto itä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491626.333, 6816285.563), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Keinupuisto itä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491491.898, 6816080.867), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pallopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491097.19, 6815886.84), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pelipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491759.883, 6814960.538), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Mäkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491836.045, 6814792.666), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Näyttämönpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492960.196, 6814856.204), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Koulumetsikkö',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492141.223, 6814971.2), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Helapuisto länsi',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492109.346, 6814618.634), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Maijalankangas',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490906.199, 6815362.782), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Ahvenispuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491865.997, 6815569.571), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Hupakanojanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491656.551, 6814381.014), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Lintupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24491571.15319, 6815719.50017), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kisakolmio',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492021.54, 6815253.705), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Mäyränmäenpuisto 2',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490883.491, 6813920.904), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Osmonpuisto itä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488307.062, 6821743.789), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Petsamonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488973.733, 6821984.893), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Saunapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488752.602, 6821852.195), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Lapin aukea',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488403.183, 6822471.911), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tunturin suojaviheralue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488205.547, 6821998.068), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Rauhaniemen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488455.9051, 6822762.17582), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kalevan keskuspuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489766.49076, 6821150.43251), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kalevankivenpuistikko',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489526.751, 6820479.665), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tapiolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490588.91821, 6821163.19437), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Majavapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490063.199, 6821354.752), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Sandelininpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490711.427, 6820444.145), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kainuunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489407.945, 6820986.546), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kiovanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489409.81879, 6821291.94985), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Järvensivunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489728.243, 6819918.81), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Karukanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489409.405, 6819036.522), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Haavikonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489927.416, 6818890.982), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Emil aaltosen puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488322.091, 6821367.824), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Litukanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489216.814, 6821611.863), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Liisanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489097.161, 6821178.48), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Ilvespuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488825.996, 6821287.797), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Saukonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488868.859, 6821511.364), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Sorsapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488418.352, 6821003.665), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tarkonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488868.96327, 6820726.64147), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Välisola',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488434.601, 6819959.742), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Telkänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488518.048, 6820045.353), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kaakkurinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488767.575, 6819907.698), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Riihipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489119.559, 6819374.588), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Lampipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488944.532, 6819546.877), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Isonportinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488595.74, 6819353.485), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Turjanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489232.47771, 6820130.60722), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pahalammenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488255.05, 6819415.739), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Soukkapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487652.41146, 6822003.46352), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Armonkallionpuistikko',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487739.847, 6821919.767), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Purjehtijanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24485151.99624, 6824518.83614), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vesisäiliönmäki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24484820.012, 6821514.269), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Eteläpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486542.534, 6820280.452), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Nalkalantori pohjoinen',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487041.462, 6820452.138), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pyynikin kirkkopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486636.49, 6820852.736), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kivipunalanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486117.966, 6821100.985), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Ilomäen aukea',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24485922.02747, 6820818.77445), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Atlaspuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24485460.644, 6820374.054), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'E.j. reinilän puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487154.663, 6819239.796), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Näsinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486692.83604, 6821634.03574), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Väinö linnan puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486321.18, 6821350.806), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tuomiokirkonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487716.817, 6821552.856), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Koskipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487535.778, 6821194.078), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Sorin aukio',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487744.977, 6820717.706), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Sotkanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486128.575, 6821357.82), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pyynikintori',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486228.425, 6820880.86), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Aleksandra siltasen puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487208.529, 6821641.467), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vihiojanpuisto-jokiranta',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488608.577, 6818335.108), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Veisunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490223.35725, 6818452.21035), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Karikepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490602.535, 6817596.774), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Mahlanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488963.048, 6818109.203), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Ahlmaninhaka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489355.66, 6818047.659), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Haukisenmaa',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489586.287, 6817524.065), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Taatalanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488362.213, 6817752.567), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vihiojanpuisto-pelipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489440.80296, 6818501.45218), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pikkupehkusuonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490556.351, 6817073.59), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vihiojanpuisto-oras',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490648.28, 6818647.086), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Nirvanpelto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488645.699, 6817205.97), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Punaladonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24488235.459, 6818140.879), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vuoreksen keskuspuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490276.449, 6813625.427), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tervalepänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489662.657, 6813689.99), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vähä-virolaisen puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490096.09, 6814121.75), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tehtaankallionpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24485554.289, 6818074.706), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Härmälän rantapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486631.549, 6818188.18), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Metsonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486644.60846, 6817245.51404), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tilkonmäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486726.735, 6816344.977), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tilkonmäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487011.089, 6816249.461), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Perkiönpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486805.454, 6817736.591), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Härmälänpuisto länsi',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486475.515, 6817586.59), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tuomaanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24485828.87796, 6817802.9216), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vesanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487048.191, 6817913.617), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Palokallionpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487060.439, 6815654.744), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Terävänmäki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486482.387, 6814669.487), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Ruokomäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486896.563, 6815288.865), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tilkonmäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486767.483, 6815811.559), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Multisillanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486516.89736, 6814303.38131), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Varvarinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24486796.59523, 6814012.32379), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Rautaharkonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487756.554, 6818201.415), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pohtolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24482737.158, 6824420.988), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pyhällönpuisto lounas',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24484234.537, 6824517.711), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Peltovainionpuisto etelä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24482402.14605, 6823783.78134), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Viirapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24482020.44189, 6823643.49571), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pättiniemenpuisto pohjoinen',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24483811.389, 6821903.924), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Viskanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24482947.258, 6821874.265), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vaarinmaa',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24481866.439, 6822545.635), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Isoniemenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24483227.734, 6824425.474), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Sellupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24483263.136, 6823540.578), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Sahanvainionpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24483698.48331, 6823631.02321), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Vaakonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24482082.062, 6821618.272), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Hutikonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24482580.71, 6821278.905), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Lorisevanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24484563.392, 6821300.609), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Hautalaakso',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24484161.516, 6821614.553), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Päivölänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24484547.607, 6821702.874), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Ryydynpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24481744.741, 6824421.021), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tohlopinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24480108.83, 6822476.723), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Uuninperänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24480330.501, 6823671.645), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Ratamonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24479409.636, 6821744.172), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kuusikorpi',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24480159.396, 6823317.9), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Mesiheinänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24479159.844, 6822779.349), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Haukiluomanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24478941.723, 6823370.068), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kohmanpuisto(tohloppijärvenpuisto etelä)',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24480569.282, 6821924.221), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Veikonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24479659.73751, 6821957.08644), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Piikahaka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24480924.173, 6821115.31), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Korvenpuisto-ristimäki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24480452.67157, 6821323.02483), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Paavalin suojaviheralue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24479748.423, 6820559.559), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Villilänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24480062.77, 6820559.992), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Juurespuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24480383.769, 6820870.408), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kalkepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24478899.665, 6821226.096), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Killerin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24480159.558, 6821102.362), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Sarkapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24478516.921, 6821888.927), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Myllypuronpuisto keski',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24478180.284, 6822153.029), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Niittäjänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24478800.419, 6822730.379), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tuohikorvenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24478221.979, 6822959.616), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kallenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24477741.609, 6820928.232), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tiilikylänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490129.02646, 6820438.7844), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Tervaslammenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24489524.86998, 6814715.65716), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Kiiskisaarenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24487175.30473, 6822103.83992), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Joutsenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24493124.52129, 6814321.25069), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Pellervonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24490251.35752, 6820731.78447), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Latsaruksen puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24492042.10607, 6816402.26297), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Samiveturinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24485134.78926, 6818266.01695), 3878), 4326),
        NULL,
        false,
        'Tampere'
    ),
    (
        'Lamminkorvenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(24497530.21455, 6821942.49986), 3878), 4326),
        NULL,
        false,
        'Tampere'
    );
