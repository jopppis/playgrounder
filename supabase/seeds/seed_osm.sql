
-- Import playgrounds
INSERT INTO playgrounds (name, address, location, description, has_supervised_activities, city, data_source)
VALUES
    (
        'Tarharannanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309244.29921605927, 7083170.535431468), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Laaksopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310763.00511659106, 7082584.192303808), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Invalidikylänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308597.3487454152, 7084844.034201075), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Naisvuoren leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(514447.3708286776, 6840070.253470446), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Riskanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308533.50020603486, 7085102.460408122), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Messupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(307235.33532984304, 7083213.183567454), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Lilla holmens Lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108474.0839642071, 6682982.248849182), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        'Nukkekoti',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(507516.67225746403, 6908024.114923061), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        'Sampolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392278.5764841321, 6698195.859603573), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Kirkkopuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(514501.5841480109, 6839732.825222426), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Pirttiharjunpuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422357.0880232278, 6762010.991645308), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Anni Swanin Leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481233.808321925, 6873015.846027418), 3067), 4326),
        NULL,
        false,
        'Kangasniemi',
        'osm'
    ),
    (
        'Sopenkorven leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425817.391607441, 6761324.346594578), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Männistönrinteen leikkialue 2',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424129.5958966507, 6760969.702856437), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Männistönrinteen leikkialue 1',
        'Palopolku 4, Lahti',
        ST_Transform(ST_SetSRID(ST_MakePoint(424801.8016612791, 6760974.869547271), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Veräjätie',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433092.5878778409, 6895516.756416154), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Lukkarinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(436189.9998276593, 6899935.270203957), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Kaaripuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309322.83479310677, 7083434.497236411), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Sysmälä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433371.0843518524, 6897210.4784590695), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Kansanmäen leikkikenttä',
        'Kansanmäki 2, Iitti',
        ST_Transform(ST_SetSRID(ST_MakePoint(463709.54380205413, 6749819.325206395), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        'Voikukkapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310268.0335765452, 7082406.373090845), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Veteraanitien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(465459.96408488066, 6750590.260664481), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        'ABC! Oravais',
        'Karlebyvägen 75, Vöyri',
        ST_Transform(ST_SetSRID(ST_MakePoint(268892.0714378081, 7028152.433195635), 3067), 4326),
        NULL,
        false,
        'Vöyri',
        'osm'
    ),
    (
        'Suorannan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375787.09378684853, 6695696.313891961), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        'Likolammen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(514317.727165301, 6840435.050324368), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Veikkolan koulun kenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358722.76211813255, 6684298.730082149), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Brittilänrannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443965.84056507156, 6916409.7575547835), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Pihlajakujan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443686.2048539064, 6915813.31542892), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Mäkitien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442412.9185414454, 6915698.200414132), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Perttiläntien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396432.3435754633, 6702886.151499721), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Haukiojanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(306577.74871055875, 7085052.681373649), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Lounaspuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378559.36593609105, 6735941.547457739), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Lentopallon Kenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382897.44785281166, 6722156.547294954), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Munckinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383171.9730329459, 6724662.118242368), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Kuovin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485326.419277648, 6750322.860760971), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Lyhdekujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483863.63170307304, 6747105.70731306), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Volttikadun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484931.72363119514, 6746670.021603304), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Toritien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(304294.06687794975, 6821305.438611111), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Varputien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487435.46760391316, 6749307.438797988), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Pukkihaanpuisto/pohjoinen',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327174.3504148516, 6944841.762020251), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Olaskaaren leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485636.8619817502, 6745842.528986341), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Mäntypuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485616.8648956445, 6745980.424032492), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kilokujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482100.8169010943, 6750219.440672264), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Loistekujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481710.5988031479, 6750243.834826466), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kehräkujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481794.3582934707, 6750305.736251705), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Paistekujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482057.87518589286, 6750307.45013416), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kotalammen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430976.8916230941, 6900710.989147787), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Naukion leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479072.4962313351, 6753359.047587921), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kytöahon leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480146.2319445432, 6749468.5682482915), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kolarinmäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480947.59441302414, 6750990.027357496), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Mörkölinjan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481670.1906515308, 6751507.623971336), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Brennerinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308614.01771887817, 7085306.186334338), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Kallenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311084.1496572454, 7085257.163750459), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Sipilänmäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479856.0345676227, 6751094.091225674), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kontioniemen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643194.932907883, 6960703.108073239), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        'Peiponpolun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477974.3058095447, 6752894.418591639), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Tähteenrinteen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479373.8186193697, 6753844.988677778), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Sarkatien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479508.1854675573, 6751316.085444213), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Haukantien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477804.1050638455, 6753175.378512344), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Palomäen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478075.0870863576, 6752392.80482054), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kytöahon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480958.81176624337, 6749488.322772277), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Naavatien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487905.21806102135, 6749293.983315386), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Valkonpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485917.39225896227, 6749794.419159419), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Seurakunnan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292185.7511958359, 6854815.141357027), 3067), 4326),
        NULL,
        false,
        'Ikaalinen',
        'osm'
    ),
    (
        'Viitapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(293420.6826180514, 6854636.736275139), 3067), 4326),
        NULL,
        false,
        'Ikaalinen',
        'osm'
    ),
    (
        'Lindans lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107906.85180218576, 6682680.72239142), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Josefiinanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377326.96036927926, 6737190.481576295), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Ruotsinkadunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378864.7036191939, 6736740.763128345), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Puolukkapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(342388.9672689461, 6685530.645979163), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Kinkomaan leikkikenttä 1',
        'Lauttamuksentie 6a, Muurame',
        ST_Transform(ST_SetSRID(ST_MakePoint(435010.4815705037, 6892176.696971546), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Indoor playground',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(596383.1959587221, 7340165.05328005), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        'Maaherran lp',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(447757.2939742546, 6785784.548189864), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        'Savottapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379638.901401057, 6732758.809996548), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Viertolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388240.48000899504, 6712679.348776907), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Onkilahden toimintapuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228318.0850880933, 7008789.7121910155), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Maamiehen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509876.56052189856, 6838707.222727082), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Puistotien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510488.57257152663, 6837678.737933402), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Valkosenmäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509922.36636074504, 6837990.385268352), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Talvisillanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381019.28073624294, 6723278.044687177), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Halmelan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247122.82266502074, 6717126.459825242), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        'Ultra Action Park',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223306.90843211138, 6828800.246684255), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Lahden Pinja & Lahden Poppeli private playground',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428463.8472980346, 6761372.726441114), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Laivapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(202423.24049719452, 6791867.109898759), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        'Kisapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380114.11660182715, 6735118.410136792), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Kankaan Miniareena',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262679.66927947727, 6949155.132600613), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        'Kankaan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262646.82452096674, 6949096.786562372), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        'Lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(278062.52805697673, 7051335.638426757), 3067), 4326),
        NULL,
        false,
        'Uusikaarlepyy',
        'osm'
    ),
    (
        'Toukolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381069.7971967574, 6735722.8408493), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Itäsataman leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273949.5108814721, 6638347.418869599), 3067), 4326),
        NULL,
        false,
        'Hanko',
        'osm'
    ),
    (
        'Kanavanlahden leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(421760.62785944476, 6783612.135747649), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Vannaksen puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196504.66678702383, 6753385.829895121), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        'Ristinolla',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435272.69049775705, 6904372.887086835), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Keinut',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435257.21649898525, 6904352.782043314), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'HopLop',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565953.5835470259, 6768324.883390854), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        'Paulan Puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(243324.81382296, 6728433.32713376), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Tellervonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376783.32210222736, 6737050.537449285), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Suojalanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377798.3736232889, 6737373.557756645), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Rajalanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377936.6108500759, 6737879.027112814), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Metsäleikkipuisto',
        'Urheilutie 1, Mäntyharju',
        ST_Transform(ST_SetSRID(ST_MakePoint(493235.2978024504, 6808840.724386505), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        'Suunilan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(497664.87485355715, 6706797.907872609), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        'Kuutamopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311869.77616158576, 7086108.60531092), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Aurinkopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311383.7742299909, 7085913.933923109), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Ulkometsän puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310806.28933407785, 7086788.308302503), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Torkinmäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310901.4008998956, 7084525.435602568), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Alapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311713.58570340485, 7086819.888451964), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Pajupillin puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311705.36588218814, 7086562.2114526285), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Rytimäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311316.3735932143, 7086350.053494253), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Säveltäjänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310703.6582311698, 7086395.3557835), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Kulimäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312401.8698255929, 7085283.220860388), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Karpalopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312265.1370631122, 7085053.200098176), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Korpinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312211.2190585379, 7084890.443046254), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Suomuurainpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312429.7641846105, 7084706.331949862), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Apilapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312396.2147009205, 7084444.065617355), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Lehtopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311480.20022513357, 7085127.873927144), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Kytösavunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312386.3466580891, 7083170.068684853), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Kaskipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312194.537377866, 7083063.427702808), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Latopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312654.556728248, 7082795.150677749), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Pärepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312680.34460174636, 7083374.194831632), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Vallihaanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309576.8809372782, 7086752.668520867), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Aasinsillanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310038.31044918916, 7086572.318382741), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Meriharakanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308469.207663756, 7086675.525135081), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Hakalahden leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310211.73888423305, 7084986.926560209), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Vaatturinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310272.5090909271, 7084893.922381417), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Pensarinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311295.9649891107, 7085006.721591282), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Kesäpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308567.7833727343, 7086021.805274842), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Syystienpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308438.4543542714, 7085891.596975947), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Iltapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(305828.8768463393, 7084859.383385699), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Ilmarisenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(305952.61907908326, 7085153.151065713), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Heinolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311244.01131312706, 7083685.752091114), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Kirkonmäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309335.4089852602, 7083751.031486809), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Hakapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309834.0478788798, 7083622.232100449), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Suolapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310212.3523687117, 7083489.515619849), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Järvelänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309246.3122981697, 7082618.339706292), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Sipolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309505.8217489721, 7082345.627201659), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Tuulimyllynpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309128.67266145395, 7082045.343974499), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Mäkipellonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309651.56885281333, 7082060.250045657), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Kuusimäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310565.39580382506, 7082129.188694829), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Pikiruukinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308840.6469294368, 7086105.7395883445), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Havanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308618.7233328561, 7083767.421613128), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Patruunatienleikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308410.1184188493, 7083025.094754634), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Taularuukinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(307952.23068103555, 7083300.368395675), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Oravanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(306810.0695950212, 7083153.516721881), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Perhepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(306815.17849561677, 7083459.808536324), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Saukonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(307059.0585330878, 7083784.660187052), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Närhenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(306383.53360967105, 7083969.795779913), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Mäntykankaanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308993.22514157905, 7085166.860128624), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Pajurinne',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309099.25273016247, 7085300.923409534), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Raahenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309166.81022298604, 7085667.607951619), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Laxinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311359.5887193625, 7085648.216009491), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Metsäpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249653.62490662537, 6715580.862663077), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        'Touhutalo',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310822.1556818646, 7083433.915652697), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Lekplats, klinten 2',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107633.77820330719, 6684546.170214981), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Lekplats, Klinten',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107572.82095583627, 6684557.255980483), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Kaurialan Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361962.51565349824, 6764890.54837261), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Haravankylän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457524.1081162952, 6701008.119999835), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'SeikkailuSveitsi',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381278.31846449245, 6723977.454064364), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Jokipuiston pulkkamäki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262359.9029015238, 6710142.081977853), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        'Järvimehtän leikkikenttä 1',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400542.13176172617, 7089361.547267305), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Tapaninpuiston leikkikenttä',
        'Tapanintie 7, Alavus',
        ST_Transform(ST_SetSRID(ST_MakePoint(332244.47849275044, 6946170.66672349), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Anolan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281385.07551828376, 6804925.333771439), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        'Itäpuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196845.28349251003, 6753548.4622356435), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        'Leijonapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(212019.55162629887, 6761232.2444406105), 3067), 4326),
        NULL,
        false,
        'Laitila',
        'osm'
    ),
    (
        'Opistotalon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(212454.8807014387, 6761104.255676876), 3067), 4326),
        NULL,
        false,
        'Laitila',
        'osm'
    ),
    (
        'Laikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430476.9706616155, 6818825.674875254), 3067), 4326),
        NULL,
        false,
        'Sysmä',
        'osm'
    ),
    (
        'Kauppatorin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535709.9755866162, 7122287.977376074), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        'Eino Leinon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361955.924670015, 6765121.901262078), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Angry Birds Activity Park',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598232.615408892, 7321790.3101918325), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        'Elinkaaripuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(573388.9995292675, 7413542.472872512), 3067), 4326),
        NULL,
        false,
        'Salla',
        'osm'
    ),
    (
        'HopLop Raisio',
        'Itäniityntie 16, Raisio',
        ST_Transform(ST_SetSRID(ST_MakePoint(237796.88694389618, 6715824.751349999), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Kirkon leikkipuisto',
        'Valtatie 93, Kittilä',
        ST_Transform(ST_SetSRID(ST_MakePoint(410551.8494016572, 7507172.333400832), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        'Lukkarinmäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391234.3978157379, 6772893.361278298), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Soverin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392897.6612959659, 6772417.607050429), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Honkapuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(369537.6755481218, 6784288.627831518), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Vihniönrinteen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370294.5866790555, 6784181.632476082), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Kyösti Kallion leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(399672.9333188635, 7090460.267793087), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Metsolan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(401379.81783375813, 7088862.585413028), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Vähäahon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(401291.3455208392, 7089348.617619706), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Tuurinkorven leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(465017.9094806509, 6750139.116730027), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        'Kamalakallion puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437138.73322199006, 6726489.658404038), 3067), 4326),
        NULL,
        false,
        'Myrskylä',
        'osm'
    ),
    (
        'Parmalan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377016.50405979506, 6732355.218998833), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Aku Park',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331770.7315985399, 6945542.4858609745), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Mannerheimin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332131.66088785575, 6905486.125829292), 3067), 4326),
        NULL,
        false,
        'Virrat',
        'osm'
    ),
    (
        'Torisevantien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332273.65864578856, 6905512.8541064), 3067), 4326),
        NULL,
        false,
        'Virrat',
        'osm'
    ),
    (
        'Kukonkujan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(212374.45286771707, 6760835.137957246), 3067), 4326),
        NULL,
        false,
        'Laitila',
        'osm'
    ),
    (
        'Myllytöyryn leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(466142.12160431384, 6750394.611518789), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        'Kuralanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359058.1003686839, 6764666.786827472), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Jyrkänrannan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400412.95347931253, 7090955.26944268), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Raitalan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400497.035561636, 7090198.250035048), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Kalliosaaren leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(399887.7412895705, 7089975.872995429), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Kyläojan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(399290.5610337078, 7089931.837928118), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Järvennöntien liikunta-alue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(399543.0092222238, 7089789.903316492), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Järvimehtän leikkikenttä 2',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400421.9902207751, 7089227.732494603), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Rovastintien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(401133.7166878549, 7089277.642055587), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Tiukumehtän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400823.6672556899, 7089058.825035723), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Tapiontien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(401842.70050727896, 7088680.811943372), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Rantamehtän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400052.9601763327, 7089469.073868628), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Barnens park',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(272662.25465965003, 6640460.414606907), 3067), 4326),
        NULL,
        false,
        'Hanko',
        'osm'
    ),
    (
        'Tanhukaari 3A leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435342.18672326615, 6900107.920633364), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Tanhukaari 1 leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435301.6249194779, 6900154.319933539), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Tömiseväntien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332460.4860884469, 6698158.222620184), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Viidakkorata',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282671.7058694844, 6646762.509029411), 3067), 4326),
        NULL,
        false,
        'Hanko',
        'osm'
    ),
    (
        'Seikkailurata',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282907.82176143373, 6646940.306310179), 3067), 4326),
        NULL,
        false,
        'Hanko',
        'osm'
    ),
    (
        'Pulkkamäki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457911.9994705452, 6698742.869925297), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Miilutien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(348706.26666162245, 6714422.310269479), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Sorronniemen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(467163.4414855363, 6757476.093179278), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        'Atrapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380957.5288009388, 6736459.464178152), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Huuhkajanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381665.3687550934, 6737189.411992614), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Muminparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333232.8421337893, 6660052.162835076), 3067), 4326),
        NULL,
        false,
        'Inkoo',
        'osm'
    ),
    (
        'Huhtasen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262084.44397525207, 6949434.293408492), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        'Helukan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378800.6671513909, 7503897.282093686), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        'Apsi Parkki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448659.8226022495, 6789168.876783771), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        'Karjusaaren puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426293.9608751731, 6766853.549809873), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Mustakallionmäen puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428270.9711269041, 6762439.570197909), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Pappilanmetsän puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298574.2890592138, 6840748.0205745585), 3067), 4326),
        NULL,
        false,
        'Hämeenkyrö',
        'osm'
    ),
    (
        'Tilhentien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(264173.07980069786, 6708457.052418166), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        'Kanervapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380072.2557429639, 6736684.565726155), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Leikkipuisto',
        'Jukolantie 11, Pöytyä',
        ST_Transform(ST_SetSRID(ST_MakePoint(268511.8370162666, 6737724.58479707), 3067), 4326),
        NULL,
        false,
        'Pöytyä',
        'osm'
    ),
    (
        'Toivon puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205013.5926970663, 6725626.472939499), 3067), 4326),
        NULL,
        false,
        'Taivassalo',
        'osm'
    ),
    (
        'Leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(209540.16221779643, 6812999.145428515), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        'Kousvuorenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250641.69366468774, 6718233.265292088), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        'Similänpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378961.73470752186, 7107696.059013496), 3067), 4326),
        NULL,
        false,
        'Ylivieska',
        'osm'
    ),
    (
        'Päivärinnan koulun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379382.22788855294, 7107315.749139692), 3067), 4326),
        NULL,
        false,
        'Ylivieska',
        'osm'
    ),
    (
        'Ojahaanpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378571.84501719044, 7106220.3608157355), 3067), 4326),
        NULL,
        false,
        'Ylivieska',
        'osm'
    ),
    (
        'Metsämansikka-toimintapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(504367.307293763, 6941783.285459376), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        'Vetehisenkadun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(600854.3903986864, 6861566.482590044), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        'Sudenpolun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535349.8343463971, 7120431.525323248), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        'Tähköpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428248.288050222, 7200442.875373138), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Kuovinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427635.7635121091, 7198952.029448), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Rudolfin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231525.42166969588, 7008821.870163985), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        'Koivupuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228031.5585910275, 7007186.920395731), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Kiiespuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429151.5878540337, 7200473.695793577), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Saihopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431375.8584577129, 6901819.407182855), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Krouvinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(415864.3092555893, 6763741.797215022), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        'Niskalan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479619.71336210467, 6751679.828283289), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kirkkolaaksonpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358047.7320311323, 6667780.430520754), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Vapaudenpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(651529.9132582594, 7024923.652655709), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    ),
    (
        'Kantvikin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355197.37011228694, 6664473.571626599), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Viitaniemen liikennepuisto',
        'Eeronkatu 11, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(434407.78842841554, 6902956.956584451), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Linnanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362750.33832172235, 6765710.03932547), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Havutien puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362432.4084682584, 6763132.805752811), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Viljandinaukio',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427623.0403255221, 6695607.787300146), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Ystävyydenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363291.5462897025, 6765063.584057923), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Louhimonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362064.2906756453, 6764299.950301361), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Kalliopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361785.24312811834, 6764398.853542534), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Kimalaisenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362978.314473728, 6762957.751753381), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Soraharjunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361784.8747691797, 6764901.034136136), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Kellokukanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396866.1612389243, 6704303.916227669), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Viikinkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428004.6386008971, 6695890.712104196), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Vekarapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(641011.1216979547, 6944269.073042042), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Ystävyydenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(641228.3385382245, 6944326.7907964), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Salavapuiston leikkipaikka',
        'Koivikontie 7, Kerava',
        ST_Transform(ST_SetSRID(ST_MakePoint(394913.4069620516, 6695475.879409507), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Tuomaanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394786.8948737164, 6697888.289726219), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Piilipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393537.8847460169, 6698851.611595516), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Kotkanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390522.7453764319, 6695141.545584405), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Pohjolanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394816.23596242996, 6699108.083251445), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Killanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394489.91280789796, 6698174.756079068), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Härkäpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360728.347986113, 6766013.930430575), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Kisapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361498.00215559115, 6764669.213957966), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Saarenpäänpuisto leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364655.7620119936, 6767063.602880131), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Moskalan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252143.49606532906, 6707803.54180063), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Ropakon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375180.6135661961, 6696489.186953211), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        'Pikku Kakkosen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534900.3906331534, 6973200.267729796), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533657.3060628691, 6973846.348708145), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Uunilinnunpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230971.79572798495, 6716437.6086599715), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Utiskantien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286462.51665109425, 6697442.579987842), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Norpanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288152.6429313853, 6699693.829835443), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Perhepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287591.84849927836, 6700037.258244071), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Hirvipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281277.60951270227, 6809713.545270502), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        'Haimoon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362296.8295545324, 6706041.687880319), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Hauhonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435961.72424921556, 6897984.212649613), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Pelle Hermannin puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222591.39889042592, 6828855.972615203), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Klintens Lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107872.62737759373, 6684762.4257095205), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Peukaloisenpuisto',
        'Peukaloisentie 19, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(429752.5685056141, 6900801.321334118), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Savion lähiliikuntapaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394919.5842848879, 6695570.50068752), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Pernajanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396174.8007192083, 6706851.215349961), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Mankalan puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396332.4145057409, 6706696.239501224), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Sairaalapuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427785.04085625475, 6761272.190775184), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Saviriihenaukio',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392533.1556567637, 6698256.807215567), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Seikkailurata',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370092.0781386437, 6743837.448933416), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        'Ilmamäki alle 10-vuotiaille',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370232.7781841731, 6743893.570179532), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        'Pomppulinnat alle 10-vuotiaille',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370274.85921077995, 6743963.762076333), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        'Loviisanpässinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427572.26747491985, 6761123.277787906), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Touhumonttu',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(342335.8985691551, 6818970.732641986), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        'Sinkkolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(638371.37270093, 6946291.193566375), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Tilhenkujan leikkikenttä',
        'Tilhenkuja 12, Vihti',
        ST_Transform(ST_SetSRID(ST_MakePoint(353454.17709967296, 6693439.683284118), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Mäntysalon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376298.41402670025, 6697752.3396165855), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        'Veturipuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382330.7289017618, 6722866.520632685), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Suopursunpuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429768.557813417, 6761157.039723274), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Kaakkolanniityn leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393433.2079532393, 6704977.633496442), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Liisantori',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222620.70228274728, 6827849.684451893), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Aurinkomäen leikkipaikka',
        'Kauppakaari 7, Kerava',
        ST_Transform(ST_SetSRID(ST_MakePoint(395450.2571259232, 6697847.397060231), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Nortamonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222867.7977291201, 6828309.352130947), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Haikalan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375671.4845328253, 6697932.8499786025), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        'Ukonniemen korttelileikkipuisto',
        'Ritoniementie 20, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(434935.96523070446, 6905903.641024448), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Kantvikin vanha leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355299.3475926691, 6664502.039900817), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Heikinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286895.67732121114, 6700310.636813622), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Vaunukankaan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389213.123738636, 6698475.896508344), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Luotomäen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371519.3375913859, 7305098.355391302), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        'Tornion kennelkerho ry',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372101.6526588322, 7304238.03977284), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        'Hakalan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370660.1328024957, 7304313.237397865), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        'Loutsinkadun leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227134.6435535313, 7009406.24795939), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Teriojanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394562.97565283126, 6703202.091020448), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Radiomäen leikkialue',
        'Harjukatu 25, Lahti',
        ST_Transform(ST_SetSRID(ST_MakePoint(427042.0845709969, 6761363.222428253), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Katsastajan leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424690.0788138417, 6760435.035117457), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Urheilutien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(399503.2739894255, 7091431.0895820055), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Sammonpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381711.33592541015, 6720788.480394616), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Eevastiina',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434648.3615092219, 6899502.2890962465), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Purolan Leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533756.6936211763, 7122259.119964134), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        'Koukkutienpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397822.2268716839, 6697827.946291764), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Puistolan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534512.144914178, 7121886.130356111), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        'Tikanpesä Patikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435221.2272777986, 6899420.480255798), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Angry Birds -puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443647.4311664597, 7376006.489434616), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        'Kuivapuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435094.73678244377, 6765302.642537471), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Yrttisuon perhepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435607.9002829904, 6899688.0925079575), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Vesikkopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645292.7605436872, 6946396.871143174), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Vihvilänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645124.4240937114, 6947274.981344052), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Piltinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(646479.1531470111, 6946471.484743371), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Vilhelmiinanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383231.27921448875, 6724066.774364914), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Ollinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643485.4186791766, 6946669.601666325), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Hasaniemen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(640571.146064221, 6943049.210838783), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Lapilanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396228.74873653083, 6697840.156278197), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Sirkunpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395423.1419899414, 6698899.262107895), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Paulapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644599.5531559295, 6945623.014636312), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Palomäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395617.63123287726, 6697111.147967477), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Kurkelanniityn leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395753.08894692257, 6699170.648870679), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Port Artturinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383672.6703629806, 6724064.95781257), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Tuulipurron leikkipuisto',
        'Tuulipurto 16, Tyrnävä',
        ST_Transform(ST_SetSRID(ST_MakePoint(437102.2119469926, 7191036.228025555), 3067), 4326),
        NULL,
        false,
        'Tyrnävä',
        'osm'
    ),
    (
        'Oksojanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645035.6775433131, 6944146.315696697), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Vähämuorinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393518.7611173249, 6694462.445858408), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Kerppupuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(639071.2754190912, 6945703.916756748), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Vauhtilanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(639096.1904007187, 6946020.226064365), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Jaakonmäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396240.4472508793, 6697056.0869572945), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Otsolanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395123.7087340375, 6699673.8067660695), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Pihkaniitynpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395434.20927837247, 6699797.743702435), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Riimupuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397966.3530327787, 6696543.819689191), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Orionin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431266.70420558396, 6741864.124253065), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        'Wegeliuksenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287883.90801613114, 6968176.051059241), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Tornion liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(369524.94490882993, 7306701.190992847), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        'Tammelanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396800.3779918353, 6707338.653280737), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Kierminkallion leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(552016.2270236183, 7019410.336128807), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Ilmarisenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(513493.9103378539, 6838845.917610875), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Ship Lion',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274173.63214379846, 6638572.939395201), 3067), 4326),
        NULL,
        false,
        'Hanko',
        'osm'
    ),
    (
        'Kottaraisenpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430259.4952761779, 6743612.740732306), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        'Alaniitynpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389452.61137840373, 6696252.686502152), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Väliniitynpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389419.7813665174, 6696422.125564752), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Yläniitynpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389369.16430520726, 6696642.298797637), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Toukkapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388649.88090520597, 6697157.579339079), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Männikönpolun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353713.32490388927, 6700356.167278021), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Männikön leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353843.81367064593, 6700730.119193849), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Felixinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(369587.1079061042, 7305759.632989495), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        'Kimalaiskedon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395727.2932626631, 6700440.879466244), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Lotanpelto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(204252.52658844928, 6791631.673210848), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        'Senioripuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395004.1500202048, 6698453.881427044), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Lamminjärventien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357319.7114022945, 6684888.599676971), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Teljonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(515283.7148760209, 6839932.047242719), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Rasinrinteen korttelileikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(436929.7165998792, 6904270.441104763), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Vääräjärven korttelileikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439073.32261773705, 6905252.361432336), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Pikku Kakkosen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599458.899662015, 6860529.011689835), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        'Hottikatti',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560242.5673802445, 7114003.251461322), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        'Ojaniitun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339175.9144108937, 6681782.714044187), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Oravanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(221115.46770921937, 6827954.879278467), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Käppäränpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(220920.96333909777, 6828167.49607131), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Svensbergin puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222185.42915577814, 6827558.380255848), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Vesitorninpuisto leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222254.40296880936, 6827947.259931983), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Ratsastajanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250127.89208674885, 6706446.835363704), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Urheilukeskuksen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391384.2842319973, 6696643.258599656), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Siirinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235268.48011287942, 6713792.957990175), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Kyläsaarenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(220245.95632489302, 6828419.108668451), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Pikkupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443089.9173787396, 6904468.080327233), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Vaskonmutkan korttelileikkipuisto',
        'Vaskonmutka 2, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(436209.80627284676, 6898582.02975563), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Sääksmäenpolunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(436372.28925472114, 6897591.078497008), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Väinönraitti',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226367.75809021894, 6825950.92700444), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Pähkinämäki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314167.1361808198, 6818833.220496744), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Herukkapolunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380364.043884934, 7171713.3732729), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Käpykadunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380041.81822148943, 7171502.145862741), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Härkähaan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235798.3749579253, 6712804.655603738), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Koivukallionpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246745.36520766848, 6714369.759534639), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        'Kevätkadun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(636171.375929494, 6947599.344056651), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Kesäyönpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(636633.1354641636, 6947608.110935839), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Pohjankorvenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381449.2998049856, 6734998.3281690795), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Lehtikuusipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382014.75605169963, 6735482.500684473), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Perhospuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378765.6997352281, 6737708.747153824), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Marjatanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376588.43577189016, 6736942.157193875), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Vainionpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377602.9700234917, 6735914.616955178), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Lehtolantienpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377058.2613172823, 6735756.420262305), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Maaherranpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363033.6488190306, 6765417.255230777), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Miemalanpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364550.22393860423, 6760751.246209364), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Sammalpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379383.1143145128, 6733336.187615715), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Joukahaisenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394620.1363743518, 6699670.777429706), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Tuuliviirinpuiston leikkipaikka 2',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391887.1983437415, 6698861.430365548), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Anttoninpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434970.97887066513, 6904237.7203140315), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Karhupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309287.16209887085, 6745283.5530577), 3067), 4326),
        NULL,
        false,
        'Jokioinen',
        'osm'
    ),
    (
        'Lohikosken toimintapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435592.72553692886, 6904517.886866394), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Holstin korttelileikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435802.71011524927, 6903519.3168499), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Eilan puisto',
        'Tiedepolku 5, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(434143.97606194834, 6902754.0914393), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534780.428209964, 7122254.125118233), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        'Peltolan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431768.9709978538, 6741267.512498728), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        'Eerolan liikuntapuisto',
        'Eerolantie 7, Iitti',
        ST_Transform(ST_SetSRID(ST_MakePoint(464495.28508177184, 6750379.635890298), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        'Kasbergets lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107621.60172652134, 6685633.90298929), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Ruukkupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395152.0032289138, 6709321.298844243), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Visamäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363651.73965795984, 6763045.312448326), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Tapulipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395791.67919156054, 6697996.73039376), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Sampolanpuiston leikkipaikka',
        'Kuparisepänkatu 8, Kerava',
        ST_Transform(ST_SetSRID(ST_MakePoint(395733.79040775937, 6697701.980108512), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Leikkipaikka Kalvean immen puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360977.20676016016, 6763196.840744722), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Patailan puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364937.7296268679, 6765172.965850262), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Taimistopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531095.8503841471, 6972620.92814018), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Salotorpanpuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431808.63202332886, 6762916.915061284), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Savupirtinpuiston leikkialue',
        'Ripistönkatu 11, Lahti',
        ST_Transform(ST_SetSRID(ST_MakePoint(431991.303678646, 6763042.481059906), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Rauninmaan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363364.7041137378, 6761333.640490046), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Sopen puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532095.6682752712, 6972021.743901114), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Johannegläntans lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108127.66979730004, 6685750.487280019), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Koskimaanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337213.0899598952, 6950124.989602606), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Kihtersuonpuisto leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364688.3530823338, 6767515.730404908), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Hoppipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(279507.6619545814, 6966706.031312636), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        'Riahula',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326367.4741063807, 6943911.187802198), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Hiekkakuopantien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(206172.52732638025, 6785810.188368148), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        'Mallikkavaheen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205313.21105896006, 6792529.622722882), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        'Leikkipaikka Jalavapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361950.5802675663, 6765658.288377032), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Tuusulanjoenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390588.34801565926, 6697916.616824342), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Suuruspään korttelipuisto',
        'Suuruspääntie 14, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(436127.18130542047, 6900784.077582704), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Aurinkopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(207864.7976163542, 6789418.49239572), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        'Yrttipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388341.3641904995, 6698541.386352331), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Silkkiuikun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394649.30247456656, 6705047.1951195765), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Maahisen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393959.75162041193, 6707626.03504812), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Kipunapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(637897.9325446384, 6947483.560125811), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Kettukiven puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560375.4681312247, 6768764.147622132), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        'Lahjaharjun päiväkoti',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435615.2636965796, 6904589.601028854), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Hovinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483666.99942683254, 6747129.333153509), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Pertuntienpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388314.2897090909, 6713136.222150793), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Annankulman leikkipuisto',
        'Annankulmankatu 20, Järvenpää',
        ST_Transform(ST_SetSRID(ST_MakePoint(397288.98852233234, 6707858.366633769), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Annankulman leikkipuisto',
        'Annankulmankatu 20, Järvenpää',
        ST_Transform(ST_SetSRID(ST_MakePoint(397288.98852233234, 6707858.366633769), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Vienolanpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337936.8834877118, 6948736.504376264), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Hevontien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375711.7712781166, 6697642.682425351), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        'Räisälän leikkikenttä',
        'Teerentie 6-8, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(533075.1860862073, 6995050.0965264905), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Kanavatien leikkikenttä',
        'Kanavatie 9, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534209.195420351, 6992986.777389117), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Ahmon urheilualueen leikkikenttä',
        'Myllykuja 14, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(532866.2884052256, 6994944.082984786), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Peikkometsä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389848.7766590693, 6691011.819657916), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Knuutintien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359177.13281007134, 6668156.172359459), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Iivarin päiväkodin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(336776.53876592615, 6950026.774510115), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Kuningattarenpolun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233824.64122236532, 7005496.262637149), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Pietilänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(219432.93451487977, 6828474.8399681365), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Karhupuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359393.56652539095, 6668504.320983046), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Olavin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232005.2559073558, 7009154.78025529), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        'Ransupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321206.7959767004, 6819126.679968991), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        'Leppähaka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332630.2790962661, 6784824.629999146), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        'Hakametsän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251714.06212669273, 6708363.812582992), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Venlantien leikkikenttä',
        'Niittytie 25-27, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534770.4265610969, 6995475.324482405), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Hattulanpuisto',
        'Hattulantie 4, Alavus',
        ST_Transform(ST_SetSRID(ST_MakePoint(325661.5239864847, 6943942.804935096), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Paimenpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325196.4853241801, 6943690.479899385), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Petäjäpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325377.2247791849, 6943278.397262517), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Myyränpolun leikkikenttä',
        'Myyränpolku 3, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(533769.5066544211, 6995016.365526679), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Lahnatien leikkipuisto',
        'Lahnatie 16-18, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(531497.2405451221, 6994290.322426999), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Lainaanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443679.5834748533, 7377024.054714911), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        'Juhani Ahon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394503.4151498051, 6705760.61028658), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Sikosuon liikenne- ja liikuntapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331071.96795793314, 6785455.1820618715), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        'Tusanrannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326678.3394697924, 6943638.572997417), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Tuuliviirinpuiston leikkipaikka 1',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391745.5815272767, 6698472.064364242), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Vahverotien puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321943.81879877555, 6818136.1262359535), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        'Kasakkakallion leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481883.56697037234, 6750716.054681272), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Augustanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393728.90965347737, 6699432.681408754), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Pulmupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395695.7101884039, 6699286.642722723), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Leikkipuisto Länsi-Taasjärvi',
        'Tasbyntie 20, Sipoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(408142.7659372853, 6686784.168268913), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        'Koivurannan leikkipaikka',
        'Varsapolku 1, Kouvola',
        ST_Transform(ST_SetSRID(ST_MakePoint(487837.62022544316, 6754888.492864767), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kirkkopuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479919.4919139481, 6752838.359628951), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Vuorilaakson leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479364.3445846954, 6753158.4074852895), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Messualueen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479272.94934462983, 6753386.229644967), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Puistomaan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480090.68773846474, 6753212.728130453), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Urheilukentän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480010.21648150566, 6752597.893460931), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Mäkikylän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478004.28150329564, 6751584.3648626655), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Koroistenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253535.7870039385, 6707181.619815427), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Ravilehdon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484499.20321606897, 6750004.87578341), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Puistotien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480039.65271888673, 6754693.427809119), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Fjällbonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392338.46680273255, 6700112.325603707), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Laidunkadun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484124.0666110449, 6750494.3018048555), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Mynsterin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227926.2366392048, 6823682.083287163), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        'Lautapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394444.463780478, 6708200.458513186), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Liikennepuisto',
        'Kirkkokatu 18, Seinäjoki',
        ST_Transform(ST_SetSRID(ST_MakePoint(287283.15881434426, 6968432.004350535), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Raitapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561055.9863355792, 6768683.397084769), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        'Lasten liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599350.4235879524, 7318225.819286628), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        'Aleksis Kiven leikkikenttä',
        'Aleksis Kiven tie 19 C, Nurmijärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(379022.1621082387, 6704830.959472767), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        'Kauhavanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288740.73074130254, 6969773.84322009), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Tervasaari',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387349.33020516485, 6672524.423865738), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        'Kasarmintorin leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228233.64910237366, 7006997.139739329), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Rouhialan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(514163.4135359397, 6841067.159220109), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Eteläpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484593.2371091887, 6747112.037464087), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Pukkihaanpuisto/eteläinen',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326842.6599532516, 6944444.90285128), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Katajamäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482182.49823586905, 6749974.693407735), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Turrin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319897.8597002662, 6819578.765921052), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        'Myllykylänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(386807.9218426005, 6692167.505991584), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Kuusistonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289111.6155376154, 6969812.05882792), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Tuomelan Leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438295.6418540201, 6758602.743475846), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Suulotinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(220571.19637486557, 6827293.32347849), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Neulastien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485733.4925154367, 6749132.675142864), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Seurakunnan puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(212919.02812058816, 6814929.854615013), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        'Leppispuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(213369.28786048715, 6815332.219473742), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        'Koulupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(212913.5347006867, 6814781.522900095), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        'Kukkopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(213654.70503007178, 6816082.253851345), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        'Kappelipolunpuiston keinupaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(493182.80288452696, 6708942.363972079), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        'Kappelipolunpuiston keinupaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(493182.80288452696, 6708942.363972079), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        'Vanhakylänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223997.51001169803, 6829792.157951126), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Siipikujan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486881.3719631803, 6747627.325193152), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Sommelonpuisto Metsolantie',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226036.3152977659, 6826557.742611742), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Lyhtykujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485566.42721104465, 6746820.738119546), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Eräpolun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482501.6413290028, 6748040.530159261), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Killan lähiliikuntapaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394339.6486188935, 6698000.471309251), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Killan lähiliikuntapaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394339.6486188935, 6698000.471309251), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441693.4604107402, 6995546.760877098), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Rekolan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478194.53360493056, 6752717.345556383), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Isokaaren leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478705.9357662208, 6751249.226520555), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Aronrannan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478901.7384500434, 6751549.434557724), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Vesakujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483578.9989640325, 6746800.223665506), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Nevatien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487026.54137888836, 6749077.606159979), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Edvininpolun leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231183.058776321, 7008692.400485595), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Kartanon päiväkoti',
        'Sarkatie 8, Sipoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(405155.8493300127, 6696147.189537842), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        'Salpapuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484308.4348390468, 6748298.907393857), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kisakentän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483937.0755140517, 6748623.524682383), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Hiihtäjänraitin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485345.83877402823, 6746433.57657631), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kärsämöntien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485806.28279932815, 6747043.494896358), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Nummikujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357365.3272334114, 6667728.847913034), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Rampakanmäki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394643.0082946089, 6707560.037502024), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Kolsarinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357096.9955579099, 6665853.352588671), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Pranglintien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358020.8797885917, 6666091.068480047), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Eerikinkallion leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357154.161991307, 6667931.529694902), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Vilhontien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357293.69388154015, 6668957.205637806), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Peitsarin päiväkoti',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(515893.0660212396, 6840893.828429944), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Kantakadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378981.7092438299, 6737310.911774762), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Männistöntien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485191.32612126175, 6748709.75182199), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Pärnäsenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435429.16836814565, 6906045.494244036), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Ulpukka',
        'Ulpukkatie 8, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(436133.59631742246, 6905974.400205686), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Terhonpuisto',
        'Adlerintie 1, Alavus',
        ST_Transform(ST_SetSRID(ST_MakePoint(337043.19349451474, 6950646.812270095), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Vehnäpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395415.48705369397, 6708156.776530226), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Poikkipolun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481554.57552900317, 6750556.046277468), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kamelipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(410392.9959526123, 6705850.008258706), 3067), 4326),
        NULL,
        false,
        'Pornainen',
        'osm'
    ),
    (
        'Markankylän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477785.0308252521, 6754038.860578524), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Hongistontien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485931.319901736, 6748650.650619241), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Lauttakadun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480401.3565315722, 6752889.724927486), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Hukantien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479429.75684593135, 6750801.3873529015), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Nurkkapolun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481809.79668328585, 6749735.902275734), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kouvolan liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484489.1487919926, 6748221.468240463), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Metsonraitin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484669.4863751261, 6750743.02461546), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kyllikinraitin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483510.87484658515, 6749797.963197838), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Jahtipuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484531.5007109614, 6745538.124647089), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Värälänpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484870.4740173701, 6746195.388249803), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Keihäskujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484939.7684975176, 6745514.93226834), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Ojaniitynraitin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485411.0896027561, 6747213.750773506), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Immeläntien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485685.1312065241, 6746608.247135335), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Hiiritien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484546.34893692954, 6745811.769146151), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Laihotien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485095.09403394157, 6747317.19087808), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Mäyräpolun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484072.1411708354, 6745829.222023751), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Jousikadun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484751.88100342936, 6745449.40180825), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Ratamontien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486699.99469905574, 6747336.84465053), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Mielakanrinteen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486109.3656633248, 6747186.939867856), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kymenraitin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483054.5759340308, 6746608.12452913), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kesontien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482632.8186426222, 6746994.310806067), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Pumpputien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482835.9193146873, 6746710.865883175), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Nurmipolun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483464.38755524927, 6747180.180277645), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Vatajanpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482366.611299427, 6747145.950569449), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Piikkitien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483102.6933543213, 6747204.763116919), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Piilipolun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482432.7097483363, 6748391.707581924), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Riskunmäki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(293911.6449367679, 6951227.708892826), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Kangaslammen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438237.6537735587, 6905193.8211042965), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Propsilanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225770.3684165516, 6828070.073062858), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Pormestarinkadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425643.672453982, 6695530.406342751), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Turilaanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224064.02797612027, 6830366.953974581), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Neidonpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381736.2203195134, 6720349.994510262), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Maaherranpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(447751.7708262607, 6785784.1580037875), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        'Sepänkankaan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355955.79387060343, 6663621.367683297), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Lintuhaka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322285.7922004513, 6818737.462664415), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        'Vasikkahaka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322650.76902558986, 6818466.650557279), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        'Ollilan rantapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433786.4643037091, 6908817.214631631), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Luiron Puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442178.29200573283, 7374511.202059752), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        'Varsahaka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322473.9757206976, 6818567.239184988), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        'Niittypuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428545.3850925706, 7198937.826241334), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427581.1390699279, 7200266.971061662), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Savontalontien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484046.4408980013, 6750378.817115532), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Härköviidan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432876.60953918676, 6907716.632250039), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Talopojantien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483901.1873926509, 6749847.519105236), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kaljalan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262682.4866373325, 6708475.935227079), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        'Norsupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263964.6718750581, 6952578.545576209), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        'Leijonapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408293.20587087085, 6722984.189678059), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        'Puropuisto',
        'Sipulitie 15, Järvenpää',
        ST_Transform(ST_SetSRID(ST_MakePoint(394836.56963090034, 6708072.093109822), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Soutaja leikkipaikka',
        'Soutajantie 4, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(435023.98088683083, 6897366.1451850785), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Kartanonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395062.19954082574, 6706793.892156993), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Ryönänsuon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(491827.147314491, 6730027.715334286), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Huuhkaja',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434839.66472590785, 6899194.693532162), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Temmon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388348.5640395048, 6713720.030523961), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Mäntytien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359309.58775717206, 6683572.969309099), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Tuijapuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358467.10076295683, 6683993.570288989), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Keijukaisten leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359754.4367859396, 6668156.158898445), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Metsäneidon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359953.4755372421, 6668408.5917583015), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Harjanteenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385046.13180641155, 6722813.7016098285), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Pampunmäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(272891.66290964215, 6984975.598919759), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251560.90747751438, 6706946.039468587), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Neidonkallion leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357410.97874721367, 6669427.977339856), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Sonninmäenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381427.93989902036, 6722113.5943200905), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Kaksoskujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358873.2809195957, 6668082.019532467), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Ankarparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240596.68930680337, 6694281.806893245), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Tennby lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241568.79543892504, 6694273.287910952), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Petäsmäenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232829.58203698252, 6717346.22341366), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Käpäläpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232406.21408602802, 6717902.683593965), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Saarniston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196049.6429282924, 6755544.119995938), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        'Jampanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393904.26584944036, 6707976.761247051), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Kolmipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292639.6145148261, 6854494.7295937855), 3067), 4326),
        NULL,
        false,
        'Ikaalinen',
        'osm'
    ),
    (
        'Jenkkapolun Jenkkapolun',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395974.2360968134, 6704496.420427795), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Leimupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396205.50497748656, 6704440.503909066), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Hiekkalinnanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390237.4030699344, 6699212.166188049), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Kervilänkujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(638197.6832941169, 6946559.928830188), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Keskuspuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395517.21105953987, 6698204.229826816), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Kauppakaaren leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395197.4394815976, 6697896.137693732), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Jokipuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431000.4495504211, 6889231.966103924), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Valkeisenmäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(505730.84683560644, 6943153.771201358), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        'Menninkäisen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360618.53210364253, 6668462.804484312), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Vakkanen',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395297.7555356707, 6704109.622562215), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Miinanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292245.4692695842, 6970441.921816094), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Puusepänpuiston leikkipaikka',
        'Kansankatu 22a, Hyvinkää',
        ST_Transform(ST_SetSRID(ST_MakePoint(382029.3040232711, 6723752.964526728), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(505574.20218586054, 6944241.072361505), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        'Kappelinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457340.74674662616, 6702980.264562795), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Mahlapuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367601.39546400856, 6760590.73929716), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Harvialan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(368893.4410791519, 6759224.315982086), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        'Pärmintien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400819.7686091678, 7089277.855373528), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Käpälämäen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400836.39205339964, 7089512.0761906635), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Martin urheilupuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384847.3198582495, 6722324.088144018), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Nietostenkadun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367124.0983786848, 6766365.333733743), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Lammastenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225960.70925116295, 6830116.990509178), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Saukonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226567.5551419828, 6828672.749583874), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Kortteenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366599.845870791, 6766331.924503733), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Lähdepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387187.85864506854, 6715628.188517968), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Metsäsylttylän leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233131.60274124608, 6716727.662648708), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Kirjastoaukion leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383048.80369000137, 6723678.959910036), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Ainonpuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428014.6853428955, 6761444.6170442505), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Rollohalli',
        'Napapiirintie 14, Rovaniemi',
        ST_Transform(ST_SetSRID(ST_MakePoint(445889.9875405841, 7378255.982963927), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        'Hiljanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312121.47435996815, 6817590.784715834), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Martanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312833.8763695237, 6817700.970523005), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Sotkanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312484.55059611547, 6817921.419894061), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Menkalankenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313554.80990223424, 6819125.105933771), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Villenkenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312862.22894698876, 6819350.958786192), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Kravinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314852.0952087401, 6819454.944878678), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Toukolan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338648.7779564631, 6988972.5346007785), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        'Niskan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(661157.235542736, 6967215.39808688), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Runkopolun leikkikenttä',
        'Runkopolku 9, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534815.0849001069, 6994613.825828771), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Tillihaan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324977.3825831291, 6790911.854130083), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        'Alkkulan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325825.16603024147, 6791244.427291557), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        'Riitiälän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325287.52086000197, 6792430.36269012), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        'Vuoripuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434198.321738442, 6908297.042309599), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Tammirannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370646.4178509336, 6743324.385915148), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        'Urheilupuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484129.8773185495, 6748705.770170063), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Savipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311452.9563827281, 6727120.045990654), 3067), 4326),
        NULL,
        false,
        'Somero',
        'osm'
    ),
    (
        'Seikkailumaa',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487757.88512145315, 6749925.195890717), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Mäntyniemen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370973.62822935585, 6756799.68886919), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        'Radansuun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(466710.31609548547, 6754038.045861873), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        'Viitakummun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486062.5615368912, 6749554.502463378), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kiiskipuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485762.42037255934, 6749462.400029635), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Kurjenkankareen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252513.95526285807, 6707137.72928316), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Mansikkasuon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423054.3525889714, 6693865.080933567), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Leijonapuisto',
        'Laiturikatu 1, Mikkeli',
        ST_Transform(ST_SetSRID(ST_MakePoint(514894.6168537555, 6839488.680793148), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Jernbölen puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425738.0502628552, 6697537.9519193685), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Lilliputti',
        'Haapatie 8A, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(441228.6286465591, 6902155.656114394), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Aittapuiston leikkipaikka',
        'Aittatie 14a, Hyvinkää',
        ST_Transform(ST_SetSRID(ST_MakePoint(381197.0780375198, 6725482.390552063), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Haarlan rannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(458403.560026504, 6904071.373086118), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Muumit leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331972.23367392767, 6945425.443187745), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Kyttälän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286353.1596766612, 6752961.153374752), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Kölhin puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564450.232089357, 6769618.014785388), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        'Leikkipuisto Viuhu-Muksula',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251485.78196013652, 6780166.44144339), 3067), 4326),
        NULL,
        false,
        'Säkylä',
        'osm'
    ),
    (
        'Leijonapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222078.9176458195, 6785145.56094706), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        'Peikkovuoren leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(623728.8787407874, 7112685.67786899), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        'Rautatienkadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(463656.33300131315, 6750377.984803872), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        'Tiukupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(463750.81443952303, 6751028.180354764), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        'Bronkujan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357876.070254269, 6666517.069029849), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Haganpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357689.64570774627, 6667706.017515654), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Liikuntakeskus Pomppis',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231127.3319642471, 6712594.556950098), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Röllipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431685.8256424283, 7201118.763792697), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Epanan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356926.0086093624, 6667908.874832344), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Sirupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394097.2016335061, 6707372.883683783), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Savolanniemen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535163.5700914009, 6966470.888604793), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Lippumäen perhepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533742.1792416938, 6967929.976923016), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Martanpihan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319743.027900802, 6819762.748697214), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        'Kaarinan Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(245335.00477724386, 6704752.063315527), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Leikkipuisto Kotkanpesä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432046.61313057557, 6890882.122335504), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Maakunnanrannan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(622490.9649442725, 7113787.681457441), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        'Variksenmarjan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(340780.45430374966, 6819454.397927575), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        'Satupuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359808.7371840021, 6667720.497782513), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Purolaakson leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394514.67112484266, 6694391.186785076), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Harjutien leikkikenttä',
        'Harjutie 20, Vihti',
        ST_Transform(ST_SetSRID(ST_MakePoint(351834.2139045074, 6692399.107239031), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Keskuspuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234324.3797929654, 6715543.203897512), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Immalanpuiston leikkipaikka',
        'Tenavakatu 29a, Raisio',
        ST_Transform(ST_SetSRID(ST_MakePoint(233675.9732830667, 6716466.141073159), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Nuortenpuiston leikkipaikka',
        'Murroskuja 5a, Raisio',
        ST_Transform(ST_SetSRID(ST_MakePoint(233934.24521092218, 6716844.2173827225), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Lehtismäenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235031.55191053826, 6713104.100952746), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Inkoistenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233197.8117606804, 6713179.103998894), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Kerrolanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233651.3338993645, 6715216.915707721), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Ylhäistenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233899.95829771244, 6714819.438675625), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Vilja-aitanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232991.43510513322, 6714299.18774231), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Katteluksen leikkipaikka',
        'Katteluksentie 10-12, Raisio',
        ST_Transform(ST_SetSRID(ST_MakePoint(230760.49653000798, 6713442.964634698), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Uimajärven leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407089.32068792556, 6684607.415681058), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        'Hakinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231096.96763134823, 6716017.544493592), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Karhunmäen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644520.1562789426, 6940871.139332847), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Pappilantien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273376.01702825504, 6964463.902090923), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        'Childten''s traffic city',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315325.2012531626, 6722285.2790957065), 3067), 4326),
        NULL,
        false,
        'Somero',
        'osm'
    ),
    (
        'Pajumäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(641891.4281257296, 6943208.077428674), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Liinaharjun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(573015.0582584455, 7413096.917882426), 3067), 4326),
        NULL,
        false,
        'Salla',
        'osm'
    ),
    (
        'Tuomipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560325.7833049565, 6768141.686355734), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        'Venekujan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(267131.28656713, 6772856.757049604), 3067), 4326),
        NULL,
        false,
        'Huittinen',
        'osm'
    ),
    (
        'Toejoenkulman leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224360.6207460737, 6829822.688643205), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Kirkkopuisto',
        'Kappelitie 3, Alavus',
        ST_Transform(ST_SetSRID(ST_MakePoint(336775.34163239854, 6948616.344917588), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Noljakan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(637936.0301071175, 6946055.787265794), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Laaksopuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394676.64019231463, 6694963.651739963), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Segrispuisto',
        'Kirkkoniityntie 27, Sipoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(404725.03860637004, 6694465.54032804), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        'Levälahden leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(623398.973458184, 7113646.094252854), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        'Keitaalan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(622249.8016060886, 7112620.269237757), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        'Kalevalan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(625983.2273483053, 7112614.897210321), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        'Rakovalkeanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385136.3641005784, 6723638.78095953), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Laatokantien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322885.6518546325, 6828803.995374766), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Kisapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(305327.75650592387, 6821535.617856576), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Veturipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382668.45286564453, 6723403.171506981), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Mesisienipuiston keskusleikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312368.33781088947, 6821521.444159088), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Parantolanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382802.2723074672, 6724126.580519597), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Metsämiehentien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319093.5171593802, 6831115.390127941), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Kyrkoby lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(109087.71058338693, 6689333.558228864), 3067), 4326),
        NULL,
        false,
        'Jomala',
        'osm'
    ),
    (
        'Nuutin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432051.9986561507, 6907297.263248256), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Ritvalanpuisto',
        'Pielistie 7, Mikkeli',
        ST_Transform(ST_SetSRID(ST_MakePoint(516168.49709527893, 6838703.314308408), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Yliopistokadun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(640652.5089985925, 6944894.630052846), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Kirvunpuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643843.4948322744, 6942898.214624596), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Haapalan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(346311.76923451567, 6712445.567301298), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Oukarinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(258239.61129154943, 6859628.367121084), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        'Tyvikujan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353717.01331336115, 6693838.414505783), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Korventien leikkikenttä',
        'Korventie 1 a, Lahti',
        ST_Transform(ST_SetSRID(ST_MakePoint(443442.0552353195, 6756784.531415568), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Kehrääjänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383640.0377146949, 6723084.575845107), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Riemuranta',
        'Rauhaniementie 3a, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(437853.1946515, 6900530.09615736), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Kirrinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432933.3058184883, 6908331.008043129), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Terttumäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432271.01020374725, 6908578.073000547), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Paimenpojan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433551.9745991508, 6905264.9021807015), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Pupuhuhdan toimintapuisto',
        'Vemmelsääri 1, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(437502.06877569354, 6904424.994097368), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Töyrypuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378078.9118848895, 6735289.252046302), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Korpilahden Sataman leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424593.6036505919, 6876657.901530923), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Pajupuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382154.54286488506, 6720615.35461834), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Tenavan leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430352.6279152755, 6761131.941371122), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Sinikellonkujan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506391.63149806, 6907189.670010077), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        'Vaahterapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506868.39036169514, 6906866.628844914), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        'Sibeliuspuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(508198.12506678427, 6907428.589034249), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        'Välikadun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(507688.5078835405, 6907287.1750828065), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        'Marianpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506034.8078563778, 6908316.880917179), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        'Viljelyksen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506433.07702217286, 6908503.649386902), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        'Savontien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(507326.2350025738, 6907472.206328157), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        'Rantapuiston leikkipuisto',
        'Koulutie 6, Mäntyharju',
        ST_Transform(ST_SetSRID(ST_MakePoint(493486.1110614246, 6809488.613781398), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        'Huhdanpellon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352575.53412525315, 6690651.651137018), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Lyhtypuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437084.4425882938, 6899694.222259582), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Kenttätien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326266.5713583055, 6802531.011799214), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Veturipuisto',
        'Asmalammentie 2a, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(439527.06063411076, 6901600.510241978), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Johannebo lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108460.52228640557, 6685915.5293927435), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Ljungvägens lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108753.22903144427, 6685824.756593722), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Hindersbölelängarnas lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108993.80882890821, 6685399.55637092), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Peltomiehenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(236426.16430429197, 6715259.542652038), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Leikkipuisto',
        'Ahjokuja 2-3, Pöytyä',
        ST_Transform(ST_SetSRID(ST_MakePoint(270142.0461854881, 6737196.478062722), 3067), 4326),
        NULL,
        false,
        'Pöytyä',
        'osm'
    ),
    (
        'Österbacka lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(109126.03384311072, 6686292.627707621), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Välenojanpuiston leikkipaikka',
        'Taimistonkatu 8a, Hyvinkää',
        ST_Transform(ST_SetSRID(ST_MakePoint(381586.98568790784, 6724828.553971767), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Vieremänpuiston leikkipaikka',
        'Jaakonkatu 2a, Hyvinkää',
        ST_Transform(ST_SetSRID(ST_MakePoint(381943.5226687374, 6724427.238686275), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Juhonpuiston leikkipaikka',
        'Jussilankuja 3, Hyvinkää',
        ST_Transform(ST_SetSRID(ST_MakePoint(381700.2254915653, 6725776.32268264), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Rotikon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319108.69453031616, 6829734.666707851), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Antinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377505.12007402914, 6734361.116108565), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Hirsimäenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377541.0339062028, 6734800.052662226), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        'Tiilenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380590.69324393664, 6722101.58376268), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Hollonpellon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285823.34296031843, 6753235.6155556), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Pumppaamon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284935.1871755021, 6751829.433036138), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Pihlavantien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284714.5705315202, 6751390.872370121), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Laaksotien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321059.5070358344, 6830634.1716542775), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'JM-Rally Parc Fermé lasten liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332710.2488912172, 6945848.971277938), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Koskenkujan puisto',
        'Koskenkuja 4, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(435265.80229832896, 6903202.404209146), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Vuosalmenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(256597.10824450877, 6859755.996787045), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        'Norppapuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562726.759956858, 6821258.459692025), 3067), 4326),
        NULL,
        false,
        'Puumala',
        'osm'
    ),
    (
        'Renginpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(236197.94974812074, 6713979.379492213), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Eemelinpuisto',
        'Pellonpääntie 3a, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(440313.4461854631, 6899763.975344597), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Haaparinteenpuisto',
        'Haaparinteentie 8A, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(440466.07031515276, 6902676.180123238), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Linnanpuisto',
        'Linnantie 9, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(441833.0937280316, 6903048.808647702), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Käkikujan leikkipuisto',
        'Käkikuja 9, Laukaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(458703.8223201577, 6903003.014011874), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Raitaniemen leikkipuisto',
        'Mullostie 3, Laukaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(459381.97494457156, 6904766.617352645), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Poramäen leikkipuisto',
        'Poranmäki 4a, Laukaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(459922.1138821468, 6904985.231425727), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Jussinparta',
        'Jussinparta 3, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(431721.2425452563, 6900444.444683073), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Orakas',
        'Orakkaantie 1a, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(430216.9360513267, 6900802.759882818), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Postikadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337344.3009680425, 6682850.895028045), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Kisatien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428397.25714368175, 7027384.9928661985), 3067), 4326),
        NULL,
        false,
        'Pihtipudas',
        'osm'
    ),
    (
        'Pihtiperän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428172.9700461757, 7028626.338273113), 3067), 4326),
        NULL,
        false,
        'Pihtipudas',
        'osm'
    ),
    (
        'Sallilan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428534.14897909766, 7027637.226380517), 3067), 4326),
        NULL,
        false,
        'Pihtipudas',
        'osm'
    ),
    (
        'Metsätien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392405.491534551, 6739410.794652766), 3067), 4326),
        NULL,
        false,
        'Hausjärvi',
        'osm'
    ),
    (
        'Riihivainion leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429772.8244945109, 7198792.791149772), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Einarintien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430260.7959198251, 7199414.804213835), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Tikkasen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425747.7255045684, 7243439.8839772595), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        'Pitkälän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431198.19359807076, 6887847.867112524), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Lausmäenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230128.61047923786, 6715373.8325947905), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Leikarin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431384.874724264, 6890423.707382335), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Ilonpilke',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428550.9753200669, 7199643.246812743), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Reunakadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(508456.66128302633, 6909247.821706227), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        'Kangasleikki',
        'Paperitehtaankatu 2A, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(435381.3874594756, 6902841.924702983), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Myllytonttu',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432202.38407292747, 6899384.95503199), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Päiväpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226814.1965418796, 6825668.869492106), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Maunulanmetsän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249154.08716604635, 6715331.954572771), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        'Riihiniemen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431604.0557758329, 6887706.178650142), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Harjupitkälän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430972.86938275857, 6887902.029801881), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Muuramenjoen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431101.2176016156, 6889120.0578730805), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Keskustan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430805.92265401577, 6889406.876885398), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Kotirannan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431338.803964425, 6890080.209598078), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Paavalinvuoren leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432377.49087821064, 6889809.962027043), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Vuorenlahden leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432779.56608685775, 6890165.8213800425), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Valssipuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(236497.5900412321, 6714269.308207259), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Montiskalan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233149.3298601894, 6713519.817034181), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Heilimöpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234718.15249512857, 6712844.358130854), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Kaanaan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231264.7039155595, 6713679.8573773), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Kaurin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235046.3962761608, 6714321.0072532855), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Kukkulavuoren leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231052.4419452835, 6713420.046194877), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Kuninkojan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238030.7587015244, 6716771.94769778), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Kuuan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233146.90485279422, 6715948.565482293), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Jaakkolanmäenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230893.952421685, 6714358.111490356), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Leikkimetsä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230521.4149654852, 6713554.372600197), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Metsäaronpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233881.0440839916, 6713007.324470797), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Mullin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235251.07785450836, 6713190.103407913), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Petterinpellon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235054.946383361, 6716035.24883192), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Koivumäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232495.29007996348, 6715857.508036386), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Seljanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234189.89167660754, 6712821.675127073), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Venheenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234516.0471170488, 6716080.6269235285), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Pesäpuunpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230384.70815366588, 6715711.705112209), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Kauklähteentien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230851.4082555213, 6724399.256518119), 3067), 4326),
        NULL,
        false,
        'Masku',
        'osm'
    ),
    (
        'Kuloisten leikkipaikka',
        'Pasantie 20, Raisio',
        ST_Transform(ST_SetSRID(ST_MakePoint(236041.08520097448, 6714724.400624474), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Tornipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310228.89032634103, 7085735.949353757), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Piianpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273239.7852479112, 6964134.592129402), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        'Lukkarintienpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273620.09352926223, 6963960.05116126), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        'Tuuttipuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532142.2701222481, 6970035.38985584), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Ilttipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(258784.64454329573, 6860300.492509785), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        'Urheilutien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441930.2884292793, 6995854.352440387), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Hepokankaan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441969.34422207566, 6996183.566281866), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Haapaniemen Esikoulun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442010.241637192, 6995596.844713075), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Haapaniemen koulun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441886.09915492, 6995672.160463814), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Lassintien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441587.00849074294, 6993254.947149742), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Miekkarinteen varhaiskasvatuksen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441541.72892347357, 6993469.980693283), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Porthanin puiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442243.38752410247, 6994294.044570169), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Hakamäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442235.9251792029, 6995356.765426197), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Kurkelan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440686.2482854115, 6997039.501171993), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Bengtsböle lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(116875.65253009173, 6678909.756184695), 3067), 4326),
        NULL,
        false,
        'Lemland',
        'osm'
    ),
    (
        'Kulmapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364120.86209594953, 6671430.247223934), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Jaakkolan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430727.81594054337, 6888705.443077462), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        'Isoahon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441140.4719699335, 6993017.3855441995), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        'Bullerboda lekplats',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(116192.74191435956, 6678701.433942648), 3067), 4326),
        NULL,
        false,
        'Lemland',
        'osm'
    ),
    (
        'Tievapuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442112.59304733906, 7376269.698202121), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        'Kalliotien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521431.1081842517, 6997148.190586347), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Kyntäjäntien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273079.51629844424, 6964763.291215234), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        'Kivenhakkaajantien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273335.66258038854, 6963453.368175549), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        'Käpykankaan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(544039.9819543418, 6908832.402339343), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        'Kirmaustarhan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234489.7228493762, 6714117.47143051), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Maurintienleikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309847.41504182207, 6725954.374757122), 3067), 4326),
        NULL,
        false,
        'Somero',
        'osm'
    ),
    (
        'Kirkonmäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309328.13537636696, 6725331.43050424), 3067), 4326),
        NULL,
        false,
        'Somero',
        'osm'
    ),
    (
        'Lamminniemenleikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310349.6541357187, 6725374.609711402), 3067), 4326),
        NULL,
        false,
        'Somero',
        'osm'
    ),
    (
        'Liisankujan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430321.4394019951, 7198491.827407842), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Linnunuitonkadun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(348584.8110409186, 6713766.2352293), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Kirkkopuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285763.78217444074, 6752001.992420669), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(340442.34849910135, 6796552.359992195), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        'Ylikylän Yhtenäiskoulun toiminnallinen välipiha',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428294.0708254341, 7200134.883627536), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Marjasuontien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431606.00090042385, 7198405.502719399), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Keskustan Leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(237857.01335777916, 6721201.225177381), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Knaapintien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238162.78023533936, 6721337.199279936), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Mäenpääntien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238080.7506985678, 6721209.375481706), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Hiidenvainion leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(239155.10374494345, 6721534.979054844), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Munittulan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238049.7134335461, 6719626.392802906), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Koivumäentien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(318270.3219818255, 6830920.811096045), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Ilvespuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437865.2843390265, 6902201.323144369), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Marianpuiston Leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263870.15562432975, 6950797.349444143), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        'Justeerinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(258291.8392529966, 6860785.269463286), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        'Pillilammenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434552.022300163, 6909255.728627868), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Kivimiehenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286500.4615765122, 6699766.412374452), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Sarkkirannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427550.18548651884, 7200316.379852835), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Ranttipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(258902.15945745955, 6860192.462457201), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        'Lasten autorata',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407843.9120982581, 7520650.869537898), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        'Hiekkaleikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407900.94465526124, 7520709.092529034), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        'Vanha leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509006.0176701701, 7051564.9861757895), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        'Niittykadun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362702.08627952135, 6765519.889154272), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Empon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(245882.614755602, 6703820.884201495), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Nyypakankujan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297407.4833169683, 6943124.2763407035), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Kuntotien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297391.52499059966, 6942284.318923119), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Koukkarin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297545.39933735784, 6942149.821588522), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Ollilantien leikkipuisto',
        'Ollilantie 8, Pöytyä',
        ST_Transform(ST_SetSRID(ST_MakePoint(268896.1715957772, 6737143.223602349), 3067), 4326),
        NULL,
        false,
        'Pöytyä',
        'osm'
    ),
    (
        'Onnelin ja Annelin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457810.44338670274, 6702112.722597341), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Antinkylän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457232.46373104514, 6700868.32566284), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Uudenkaupungin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(456869.04346863896, 6702384.873916127), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Välikadun leikkipuisto',
        'Välikatu 29, Hanko',
        ST_Transform(ST_SetSRID(ST_MakePoint(275143.5834367236, 6640062.560256695), 3067), 4326),
        NULL,
        false,
        'Hanko',
        'osm'
    ),
    (
        'Äijänsillanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286068.1828036237, 6696448.040748348), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Rantakukankadunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379819.0624604781, 7176714.334101048), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Leikkipaikka Daga-puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(306749.7686014907, 6667182.750374486), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        'Virikepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(413652.3863758447, 6905612.250676819), 3067), 4326),
        NULL,
        false,
        'Petäjävesi',
        'osm'
    ),
    (
        'Kontio',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(237964.2428105119, 6721226.05722766), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Korpiniemen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(413628.47797073115, 6950496.781372039), 3067), 4326),
        NULL,
        false,
        'Saarijärvi',
        'osm'
    ),
    (
        'Fogdeparkens lekplats',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(278183.4333824325, 7052767.999168032), 3067), 4326),
        NULL,
        false,
        'Uusikaarlepyy',
        'osm'
    ),
    (
        'Regnbågens lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(276441.0777073473, 7051180.6842115335), 3067), 4326),
        NULL,
        false,
        'Uusikaarlepyy',
        'osm'
    ),
    (
        'Värnamo lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(277033.5030494043, 7050918.047958063), 3067), 4326),
        NULL,
        false,
        'Uusikaarlepyy',
        'osm'
    ),
    (
        'Lundaparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(277183.82615773747, 7051543.65401459), 3067), 4326),
        NULL,
        false,
        'Uusikaarlepyy',
        'osm'
    ),
    (
        'Mankolan koulun leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433765.4669605975, 6904732.670894011), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Tiiratorin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(195668.55519847147, 6754864.29582801), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        'Ankkakujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(195882.15008225953, 6755132.156126173), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        'Suulakujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(195716.5038065974, 6755715.585953768), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        'Viinikan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292604.40440514724, 6881938.399037186), 3067), 4326),
        NULL,
        false,
        'Parkano',
        'osm'
    ),
    (
        'Lasten leikkimökki',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407844.68210989836, 7520681.933324742), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        'Tuohimutkan leikkipuisto',
        'Tuohimutka 2, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(436704.67285661044, 6902747.721550347), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Tavi',
        'Tavintie 6a, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(436760.27702794725, 6902115.115314483), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Olganpuisto',
        'Olgantie 12a, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(439541.8004395198, 6902577.63658275), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Päiväharjunpuisto',
        'Huikkolantie 22, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(439707.5413134776, 6902949.304564679), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Maurinkujan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440722.3754139026, 6911451.712218513), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Toivonpolun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440312.1113635555, 6911772.382963624), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Näätämäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439660.8093546882, 6910362.081310891), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Savipolun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440609.08332376566, 6911128.240092449), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Kurjenkadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338570.26063390897, 6683102.089301798), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'porakadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(256969.6530774317, 6859884.331657449), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        'Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(499493.03416017065, 7248331.972306396), 3067), 4326),
        NULL,
        false,
        'Pudasjärvi',
        'osm'
    ),
    (
        'Gunnarlan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337309.94182746625, 6681275.969317626), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Haukkaranta',
        'Kiviniementie 1, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(432363.90120345616, 6905156.740171042), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Hilapuiston lähileikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313169.2824380964, 6822986.425525828), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Viikinmetsän lähileikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312518.156731561, 6822875.601810564), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Kajopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345228.59688940714, 6686923.748879335), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Vesitorninmäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312269.25915438996, 6821240.725151558), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Orakaspuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312447.2895282008, 6822084.272944814), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Hattelmalan päiväkoti',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363484.77949493966, 6763221.604247242), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Kukkolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367139.27187292615, 6761418.462575259), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Ainonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(256753.85781742667, 6860560.166906504), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        'Mankolan koulun pihan leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433808.72187771363, 6904743.283428989), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Nahkiaistien puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351767.51163159596, 7130363.756706948), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        'Vääkilän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352649.70354596747, 6699188.84529595), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Sepänojanpuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433719.0348274862, 6764693.630801785), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Korpikadun keskusleikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313286.4774260887, 6822481.133059301), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Purolohenpuiston lähileikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313689.57867555687, 6823007.867644831), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Esikkopuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427514.621349986, 6760216.989960075), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Kujansuuntien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(416680.38393782516, 6762749.627691822), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        'Maaniitun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380209.5857734209, 6705140.023596433), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        'Kaurapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395606.5519487832, 6707798.073860199), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Hamppupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395616.4851152945, 6707474.909427777), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Liinapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395523.8940259025, 6707491.987664129), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Hanhikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395655.01523228956, 6707317.186237711), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Nurmikkapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395561.71958708495, 6707335.654773672), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Apilapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395633.34704718087, 6707209.841592765), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Sarapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395540.40289586445, 6707230.479902607), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Mehiläispolun puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395500.8050830016, 6707110.65539471), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Päiväpolun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395592.2754141613, 6706886.145716247), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Leikkipaikka Hämeenlinnan tori',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362905.5667094557, 6765085.98572575), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Päivölänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291894.8521870837, 6881406.96095631), 3067), 4326),
        NULL,
        false,
        'Parkano',
        'osm'
    ),
    (
        'Laivapuisto ja Ässäkenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291821.5033323333, 6882207.687104766), 3067), 4326),
        NULL,
        false,
        'Parkano',
        'osm'
    ),
    (
        'Leo''s Leikkimaa',
        'Honkasentie 15, Kempele',
        ST_Transform(ST_SetSRID(ST_MakePoint(431158.9506339973, 7198480.678132202), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Järvimehtän leikkikenttä 3',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400463.15530969255, 7089134.231022239), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Saurakallionpuiston leikkikenttä',
        'Saurakalliontie 40, Alavus',
        ST_Transform(ST_SetSRID(ST_MakePoint(333212.04285578907, 6946584.982014521), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Hatanpäänpuisto',
        'Veikonpolku 11, Alavus',
        ST_Transform(ST_SetSRID(ST_MakePoint(336587.1240399517, 6949583.139813032), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Lasten liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(421268.5631282689, 6783076.320782291), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Korpitien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(265162.8221199481, 6709281.023078386), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        'Metsolan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246849.24197941742, 6713862.296785745), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        'Tehtaanpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362840.68287818594, 6766695.820164287), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Tommi Tädin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(211233.2065589191, 6871263.611891684), 3067), 4326),
        NULL,
        false,
        'Merikarvia',
        'osm'
    ),
    (
        'Kylänpään leikkikenttä',
        'Kylänpäänkaari 27, Nurmijärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(375603.5705389078, 6712088.991857275), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        'Viinamäen Leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(543735.380126165, 6909703.938295196), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        'Kylväjäntien Leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(542642.5889295178, 6909692.107739292), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        'Halolankadun Leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(542909.2068921988, 6909998.249178206), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        'Niittypuiston leikkikenttä',
        'Niittykatu 13, Hämeenlinna',
        ST_Transform(ST_SetSRID(ST_MakePoint(362469.76479231357, 6765359.4369923575), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Rastipuiston keskusleikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311949.4848484652, 6822591.295505971), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Huuhan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434006.3552253301, 6942465.259879999), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Runeberginpuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434037.3867569789, 6942069.790724703), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Rantapuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434818.38294257934, 6942384.469106761), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Mannisenmäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433554.08662177547, 6905982.4362102635), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Sataman leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(555128.2250344973, 7008912.317643685), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Leivontien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(553452.5332098821, 7009272.2407202255), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Valkiavuoren leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(243645.30954123862, 6728062.705551969), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Kuikkajärven leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(410294.35954831226, 6861996.933430838), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        'Jukola',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(417515.81551940524, 7071894.237313525), 3067), 4326),
        NULL,
        false,
        'Haapajärvi',
        'osm'
    ),
    (
        'Hiidenvainiontien Leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238173.47672420545, 6721191.820846688), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Peuranniemen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437890.34396522824, 7190335.423458151), 3067), 4326),
        NULL,
        false,
        'Tyrnävä',
        'osm'
    ),
    (
        'Kartanonpuiston toimintapaikka',
        'Pajalantie 31, Järvenpää',
        ST_Transform(ST_SetSRID(ST_MakePoint(394985.8538575619, 6706810.71792938), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Sataman leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441294.58681559406, 6938133.281652335), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Tehopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394955.1568406452, 6707422.585539916), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Tupalanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394682.6554954729, 6705526.48976381), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Relepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394920.6902959976, 6707064.389390249), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Hollolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396046.75916790875, 6707202.436777678), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Kolmisopen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(505402.67001222837, 6942986.371624254), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        'Tildanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393615.0594111741, 7128918.081440178), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        'Hussan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395099.9332741021, 7128085.847154063), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        'Saunapuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(208373.65597299772, 6916769.300609323), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        'Lepistöntien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358258.43446579186, 6772108.912851955), 3067), 4326),
        NULL,
        false,
        'Hattula',
        'osm'
    ),
    (
        'Kuusitien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357468.28313096095, 6772311.529755623), 3067), 4326),
        NULL,
        false,
        'Hattula',
        'osm'
    ),
    (
        'Päiviönsaaren Leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(546109.8506917299, 6909464.579339381), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        'Tervahovintien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(208885.8834631443, 6916726.626104104), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        'Kristiinankadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(209593.20059420468, 6917372.592320818), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        'Svängens lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(207291.2763406951, 6916635.33747733), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        'Peippotien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(207918.4991692604, 6918125.150125182), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        'Rantapuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535598.5065685101, 7122563.127794163), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        'Ratatien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(417500.80941394245, 7276647.245859363), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        'Koskikaran leikkipuisto',
        'Illinsaarentie 275, Ii',
        ST_Transform(ST_SetSRID(ST_MakePoint(425977.3459841846, 7245390.968179387), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        'Paaskallion leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(237901.15276518097, 6720911.017458648), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Haikantien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238729.16113041717, 6721500.922419556), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        'Kissalankujan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423020.40694132936, 6781850.049228338), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Hiekkasärkän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(207455.39509131367, 6916066.859912562), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        'Palkinsillan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392219.9284160679, 6772540.884134821), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Haapainojan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392116.0890430447, 6773253.403738759), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Telapuiston keskusleikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312821.31545184896, 6822988.291118704), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Poutunpuiston keskusleikkipaikka',
        'Tuuliharjunkatu 1, Nokia',
        ST_Transform(ST_SetSRID(ST_MakePoint(314384.8185752318, 6821179.992431542), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Takotien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322571.9880833504, 6828941.775942289), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Ahvensistontien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(318086.5380643012, 6828793.55730022), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Rekon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315652.65641460754, 6831036.642108173), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Tilkepuiston keskusleikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313896.00992743537, 6821428.863957999), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Kavolinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314001.0752059719, 6821254.699547935), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Kennonnokan uimarannan keskusleikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315807.5426896217, 6821465.6246863725), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Eepenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314842.50268108584, 6821355.920146974), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Korpipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393672.25338768336, 6707492.710545646), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Savikonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393825.22658737295, 6707478.0418372005), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Haltianpolun päiväkodin alue',
        'Haltianpolku 2, Järvenpää',
        ST_Transform(ST_SetSRID(ST_MakePoint(393637.78335370286, 6707630.840722332), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Saunapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393382.28222196596, 6707218.965426689), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'keinu',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227781.62655236103, 6823695.486069776), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        'Kielan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361257.1324143123, 7541685.563191498), 3067), 4326),
        NULL,
        false,
        'Muonio',
        'osm'
    ),
    (
        'Katvelan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441510.78627171955, 6937211.325121494), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Antinniityn keskusleikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(306560.6645323066, 6820946.303081025), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Rovan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390374.5144256405, 7293940.709663307), 3067), 4326),
        NULL,
        false,
        'Kemi',
        'osm'
    ),
    (
        'Killinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333708.82817550603, 6675851.101721458), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Kettulan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227884.5555124723, 6823698.333461493), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        'Anttilan puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407385.09490701836, 6725567.60911095), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        'Markkamäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433961.9014259829, 6943995.059662758), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Mustaniemen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434756.85535523033, 6943451.429160928), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Paulapolun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434944.728354917, 6944963.091248875), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Katajapuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433132.7989956094, 6943180.866764144), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Likolahden leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432995.3281111585, 6944373.472391039), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Pikku-Veturi',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435332.29748832155, 6942541.698019282), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Pukinpuiston lähiliikuntapaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434345.91773713566, 6941417.480492137), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Leijonapuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434219.73503433535, 6941777.936729986), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Kanavaharjun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437134.9816323607, 6938412.068250316), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Kolkin Leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244780.0912828911, 7004919.043357239), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Krookintien Leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244455.75686537148, 7003530.23820737), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Etelärinteen Leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244826.49423222608, 7002600.07010418), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Hyyriän Leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252681.25872186775, 7002328.662779434), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Kirstantien Leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252855.42229142858, 7000964.54946744), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Selkämäen Leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253612.01616648963, 7000587.790360816), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Tapoilan Leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251819.59596130022, 7001721.672887186), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Kaistilan leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253153.18722798218, 6995720.035156716), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Hakalanmäen Leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253668.06962759726, 6995332.532112918), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Köpingin Leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253782.96689485808, 6995296.435406952), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Haapamäen Leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251881.84481171117, 6994102.164553466), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Peippoosen Leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255000.41640966843, 6994588.287546621), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        'Safari Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345804.9334365104, 7126905.60014169), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        'Angervatien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(399837.88760319335, 7089922.7610380035), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Leppäkertun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(399840.6975089313, 7091240.933338481), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Kivelän koulun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381639.316696832, 6904782.129691716), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        'Savivainion leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(401163.09265862283, 7089489.955850333), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        'Kaalisaaren leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281021.77778054326, 6807271.914602279), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        'Ekorrparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301473.85101685725, 6654154.892457688), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        'Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299343.9367350973, 6987112.216767443), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        'Laavupuisto leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532638.7931968884, 7120742.939845915), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        'Veteraanipuisto',
        'Onnelanranta 3, Kauhava',
        ST_Transform(ST_SetSRID(ST_MakePoint(291842.8295552429, 7018925.318208598), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        'Peikontie leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532687.94230618, 7122180.410741156), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        'Nuotiopuisto leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533092.8419186831, 7120438.990771958), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        'SF-C Jokiranta',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(540894.9031285908, 6894318.436359678), 3067), 4326),
        NULL,
        false,
        'Joroinen',
        'osm'
    ),
    (
        'Humula',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(590599.1495243774, 7196997.524182977), 3067), 4326),
        NULL,
        false,
        'Suomussalmi',
        'osm'
    ),
    (
        'Angry Birds -leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(209503.03380354124, 6838503.780396023), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Kellosepäntien puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(275846.0366142082, 6764092.620956811), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Pajulinnun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290763.31243612943, 6881106.329060765), 3067), 4326),
        NULL,
        false,
        'Parkano',
        'osm'
    ),
    (
        'Voivalan rantapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247562.13487435415, 6705433.197732283), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Köllinrannanpuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424792.569931281, 6762550.719835156), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Kvarnbacksparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240112.4373568985, 6694789.534957691), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Martinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(640011.3012890933, 6944729.514721704), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Kiviniemenrannan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531880.7711337361, 6977305.372058558), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Leikkipaikka Härköspuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325619.0476721725, 6943367.554010362), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Myllyrinteen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331712.63061144366, 6786317.000747326), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        'Helpiön leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331706.4451912629, 6785968.047128514), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        'Pajulahdenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531929.7190221607, 6978659.570473155), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Kalevalanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419229.9196244792, 6763086.653595265), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        'Saaranlähteenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(416954.465819022, 6762673.035025469), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        'Pirilän toiminnallinen piha',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428645.9775517758, 7200092.5070907585), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Piiparinpolun leikkikenttä',
        'Piiparinpolku 4, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(531420.5381986152, 6996063.9902099185), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Koskikaran leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403785.9167235544, 6866546.911910405), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        'Frami',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362827.5316403196, 6671287.294996243), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Rauhannummen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331177.5711231226, 6784980.838704443), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        'Murron leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(329850.1980370998, 6786359.454287164), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        'Knektvägens Lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286478.89945771516, 7066927.310537602), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        'Borgaremalmsvägens Lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286060.584659842, 7067244.2451266125), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        'Baggholmens Lekplats',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286248.6119410664, 7066303.74319635), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        'Lapinnevan Leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286947.6928682719, 7066239.584619325), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        'Kyrkostrands lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287375.3689195032, 7066068.881302357), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        'Västermalms Lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286507.7821681361, 7067673.2458304195), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        'Kuusitien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(365235.9670898455, 7410605.583431894), 3067), 4326),
        NULL,
        false,
        'Pello',
        'osm'
    ),
    (
        'Kipparinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203608.97865783164, 6789469.702069551), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        'Luppotien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(602103.0991916718, 7315752.3287668675), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        'Hurjan hauska autopiha',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281251.39054627455, 6807842.393094441), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        'Kaninkolantien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(279676.034187297, 6694641.496513271), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Petkelkannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536459.3492102509, 6967052.434981331), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Mörtinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435200.4486817348, 6943305.421471878), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        'Lasten kaivos',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(602348.9001021134, 6957194.514089854), 3067), 4326),
        NULL,
        false,
        'Outokumpu',
        'osm'
    ),
    (
        'Kirismäenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252263.39490324672, 6708336.847315539), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Kallonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(207104.11760371973, 6841026.985922825), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Huovilan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392925.8001339732, 6772866.375201258), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Isolukkarinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392992.9761896192, 6773258.725413533), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Kirnumäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391928.7454054432, 6772844.85952425), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Kuusimäen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391547.4501360313, 6773534.848530717), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Mäkipellon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391900.5593022777, 6772514.078480937), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Lähdepuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(369749.64005051536, 6784311.555781289), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Panninniementien leikkikenttä',
        'Panninniementie 11, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(532189.16910144, 6995999.19587501), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Panninniementien leikkikenttä',
        'Panninniementie 11, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(532189.16910144, 6995999.19587501), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Mettistön leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321661.762829853, 6828286.643036347), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Niittytien leikkikenttä',
        'Niittytie 2, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534983.9052377649, 6995122.910649282), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Sommaronpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230857.74296041575, 6714764.423036415), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Järvenpään kirkon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394918.1913580506, 6705034.636844526), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Tapiolanpuiston leikkipusto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395234.1147971606, 6705269.76577075), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Leikkipuisto Kukkakumpu',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395779.45692706195, 6705348.433166678), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Piilukonkujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363218.1405186829, 6671927.601536711), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Vesijärventien leikkikenttä',
        'Vesijärventie 38, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(531370.9932040289, 6994108.768939465), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Wanhan pappilan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234896.45175914635, 6714925.82715254), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        'Polkkapuiston leikkipaikka, yläosa',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384497.17798106075, 6723097.938134919), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Ampujanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384627.8209930883, 6721880.538499757), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Ohjastajantien puiston leikkikenttä',
        'Ohjastajantie 5-7, Kauhajoki',
        ST_Transform(ST_SetSRID(ST_MakePoint(250074.20986868817, 6930893.449034233), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Ilmarisentien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394437.1584426466, 6699905.358171275), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Sataman uimaranta',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(606091.391937268, 7047657.896700347), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        'Saarmäentien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(265197.2490145846, 6710179.242733209), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        'Hämeensaaren leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362935.69220072526, 6764456.12019122), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Harvialanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367994.6128687636, 6761125.34853556), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Pehtorinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396450.42008631746, 6700757.2299652565), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Tikkuvuorenpuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287044.31382797455, 6965554.83539773), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Räpälän leikkipuiisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(261939.40752715606, 6710607.504182278), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        'Muuratsalon korttelileikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435047.0947224826, 6887980.3350854125), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Vesitien leikkikenttä',
        'Vesitie 11-13, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(532038.6255142705, 6993752.145681784), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Taivallahden leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531064.4368649296, 6994368.072524127), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Melojantien leikkikenttä',
        'Melojantie 9-11, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(530305.9829655981, 6994472.15324475), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Päivärinteen leikkikenttä',
        'Vattuahontie 5-7, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534371.0634364347, 6994333.872842645), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Ahmatien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196471.9469850194, 6754579.905658468), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        'Ainonkujan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(195803.49098427387, 6752829.358479654), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        'Liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274641.1119045644, 6723703.7833462255), 3067), 4326),
        NULL,
        false,
        'Marttila',
        'osm'
    ),
    (
        'Tammentuvan päiväkodin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250512.03937750176, 6722736.210361419), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        'Ohrahalmeen leikkikenttä',
        'Ohrahalme 13, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534833.2445212991, 6992265.2666124385), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Salminpuiston leikkikenttä',
        'Jokisuuntie 16 16, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534021.5282051639, 6993946.364393741), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Lumikontien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196927.34841613952, 6754806.674662834), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        'Hakakadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(464248.35872676, 6750954.310476449), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        'Erstanpuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435666.87142081634, 6757803.01185801), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Sunilan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225436.1434174297, 6735869.254543581), 3067), 4326),
        NULL,
        false,
        'Mynämäki',
        'osm'
    ),
    (
        'Pietolan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(195215.15954747488, 6753863.023555659), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        'Piippolanpolun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357521.90945823514, 6668561.622248162), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Hamnparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240433.10983553005, 6693775.306583951), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Jupiterparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(239249.72436033993, 6695382.110664665), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Leijonapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227314.74790886795, 6736169.205624582), 3067), 4326),
        NULL,
        false,
        'Mynämäki',
        'osm'
    ),
    (
        'Kankaanpuiston metsäleikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435425.95007963903, 6902684.017690061), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Kirpitsänkadun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286118.6107985767, 6702237.542159844), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Peikkopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309833.9734089658, 7087738.888289257), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        'Hiittiönmäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226520.72294166786, 6736371.127546644), 3067), 4326),
        NULL,
        false,
        'Mynämäki',
        'osm'
    ),
    (
        'Länsikadun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225557.73289445907, 6737290.650362685), 3067), 4326),
        NULL,
        false,
        'Mynämäki',
        'osm'
    ),
    (
        'Pöykön leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226006.66452457244, 6738033.692140862), 3067), 4326),
        NULL,
        false,
        'Mynämäki',
        'osm'
    ),
    (
        'Sinivuokon leikkipuisto',
        'Hansaksenkaari 45, Sipoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(405899.7164177399, 6686634.290451519), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        'Koristonrannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244121.76179098754, 6704620.709122937), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Aikalanmäen leikkipuisto',
        'Ketomaantie 23, Laukaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(445619.7176603646, 6919721.5287721995), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Eväsojan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372707.9102251327, 6744987.261132823), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        'Antenni',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432134.8157055025, 6898513.703330382), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Tarvasmäentien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366981.37189861, 6760771.453034505), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Kaupunginlahdenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379152.6966517339, 7176520.209461532), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Ötökkäpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440268.10249665915, 6707569.7270293), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Merimuseonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379380.6522484075, 7176262.061101277), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Valkolammen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(458784.8803292877, 6696276.761995624), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Myllyharjun leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457424.4234232194, 6702151.255931077), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Äijälän aktiivipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(451373.2315393026, 6932711.11482874), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Hankaanojan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429060.9451522889, 6752409.119730923), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        'Esbjergin puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432650.98757362395, 6902645.712146232), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Sihteerinkujan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(458911.4771719336, 6702553.635008715), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Myllylammen puisto',
        'Kumpulantie 10, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(433027.07048739266, 6899797.36378185), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Teppalanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251647.09156078636, 6707608.962970602), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Angervonpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251155.9643697532, 6707026.033465095), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Piikkiönmetsän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249679.19947130475, 6707161.989360394), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Rauhalinnan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246992.06271388548, 6705510.53586443), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Kumpulanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247223.17460720128, 6706786.813695209), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Varsahaanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246395.61833270497, 6706932.453298411), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Veitenmäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(245916.10323183791, 6705175.522781413), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Pellinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246570.60630863727, 6704203.448556879), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Kliistperin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(245337.41920535156, 6703130.534887198), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        'Lintukaaren leikkipuisto',
        'Lintukaari 2, Sipoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(408328.8909129009, 6683835.976504309), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        'Sammallahden leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440596.6507714593, 6901017.002560922), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Metsämaja-skoghydda',
        'Tasbyntie 52, Sipoo',
        ST_Transform(ST_SetSRID(ST_MakePoint(408643.75872062973, 6687189.96881109), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        'Ukonsienipuiston keskusleikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312652.87625218683, 6822145.438827897), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Puuppolan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431509.7226641468, 6913407.0214173095), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Vilholantien leikkikenttä',
        'Vilholantie 3, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(535476.4426104644, 6991458.12581245), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Honkarannantien leikkikenttä',
        'Honkarannantie 6-8, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534657.7081895897, 6993750.701524534), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Leppäkaarteen leikkikenttä',
        'Leppäkaarteentie 20-22, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534934.7800295687, 6993613.017101083), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Saarenpuiston Leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446376.42521246057, 7378464.130932853), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        'Kaskipolun leikkikenttä',
        'Kaskipolku 11, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534550.1475187124, 6992210.244659109), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Huiluntien leikkikenttä',
        'Huiluntie 14, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(532251.9710577572, 6995705.978294398), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Hemmingin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326038.3410243568, 6947657.035724), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Lasimäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345229.11537441565, 6776134.896873752), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Helenan puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362582.6826975205, 6671291.397157043), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Rantaminttu',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435018.5468393482, 6889444.193230626), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Aamumaa',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(405802.2386687965, 6904031.404350072), 3067), 4326),
        NULL,
        false,
        'Petäjävesi',
        'osm'
    ),
    (
        'Valtterinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435629.7813764717, 6890460.511669235), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Suurpellontien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441373.15462705295, 6707795.839655211), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Kartanon alueen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510129.3185349321, 6837387.120186837), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Urheiluhallin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562601.158069515, 6822086.521666507), 3067), 4326),
        NULL,
        false,
        'Puumala',
        'osm'
    ),
    (
        'Sepänpihan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352140.3770107205, 6690149.629132953), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Kuntoilijankujan toimintapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419564.8871799305, 6762507.692132182), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        'Toripuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332265.3862180809, 6905317.12195458), 3067), 4326),
        NULL,
        false,
        'Virrat',
        'osm'
    ),
    (
        'Pallotien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446011.16621573915, 6921441.757506708), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Puistokujan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446005.3648314064, 6921812.851927549), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Kissakoskentien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446171.03668957646, 6922073.718046311), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Pajutien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424541.1570903462, 7244546.273479738), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        'Sanaleikki',
        'Männikönmutka 6, Liminka',
        ST_Transform(ST_SetSRID(ST_MakePoint(426261.12586914515, 7194458.195036456), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        'Tuiskulanmäki',
        'Koivulehto 16, Liminka',
        ST_Transform(ST_SetSRID(ST_MakePoint(427281.6735755712, 7193967.546207389), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        'Leikkimutka',
        'Ojatie 2, Liminka',
        ST_Transform(ST_SetSRID(ST_MakePoint(428216.7424966594, 7194166.262604345), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        'Kotilehto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428111.7051763264, 7193366.137363645), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        'Leikki-Riipi',
        'Sortavalantie 23, Liminka',
        ST_Transform(ST_SetSRID(ST_MakePoint(427141.5852281591, 7193307.653709284), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        'Saunapeikko',
        'Saunametsä 28, Liminka',
        ST_Transform(ST_SetSRID(ST_MakePoint(427266.94292088755, 7192817.931868449), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        'Katumajärvenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(365340.5118729166, 6763926.947503699), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Veikkarinpuiston leikkipaikka',
        'Rapakonpolku 1, Hyvinkää',
        ST_Transform(ST_SetSRID(ST_MakePoint(380190.91507671494, 6720885.3989380235), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Pyhtilänringinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381884.9182471226, 7176474.434570277), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Kaupunginmetsänpuisto 2',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381738.47231946, 7173895.026208299), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Köpbackan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(458024.68617871887, 6699301.935991436), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Peltotien leikkikenttä',
        'Peltotie 4, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(533837.5102606497, 6994329.4697720045), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Peltotien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533796.4468739149, 6994316.861340572), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Ollinsaarenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380923.5716655001, 7174901.791087027), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Järventölänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382769.6028873785, 7176164.24186046), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Mikkolankankaan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384782.12199252093, 6898620.327345456), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        'Martinlähteen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385197.189576473, 6722034.231002429), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Iivolanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643256.2208953473, 6945697.202928529), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Petäjäpuisto II',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325067.0227849, 6943408.736686881), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Sankarin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432466.97719678417, 7201672.320430833), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        'Kaupunginmetsänpuisto 1',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381950.6528842905, 7174455.133820655), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Siirtolapuutarhan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375691.64635968447, 7166579.318709041), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Jokitien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332040.17620488163, 6698090.93403291), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Kerkkoon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424111.66552870534, 6702886.477373849), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Hakalanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383579.3878504101, 6721674.307779939), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Ylläsjärven leikkikoulun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384455.34844617604, 7492212.870726049), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        'Lilly Kajanus-Blennerin puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389540.34836075373, 6714277.926551087), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Päiväkodin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367692.19691453385, 6904860.918098063), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        'Suopuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428513.1806929555, 6762889.090583671), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Finnskog-leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(491437.49443700764, 6943343.906702688), 3067), 4326),
        NULL,
        false,
        'Rautalampi',
        'osm'
    ),
    (
        'Rusakkotien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(217949.78263101075, 6797745.763061729), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        'Metsolan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(217660.4368040954, 6797636.389909349), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        'Kaivettulan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(217903.55684280404, 6797166.145752195), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        'Lounaanpuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429584.98041868664, 6761797.908435741), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Antinkuja',
        'Antinkuja 3, Kauhava',
        ST_Transform(ST_SetSRID(ST_MakePoint(287963.9812574462, 7008886.119158932), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        'Keskirannantie',
        'Länsitie 10, Kauhava',
        ST_Transform(ST_SetSRID(ST_MakePoint(287461.2909761228, 7009120.415984583), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        'Kerkkäkujan leikkikenttä',
        'Kerkkäkuja 7, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(535170.304477033, 6993967.960168655), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Kehäkadun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(608013.4491116069, 7048150.293783572), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        'Kohisevankadun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(607612.1491206232, 7048133.578895335), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        'Puronkadun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(607334.6391976277, 7048622.827215229), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        'Memo',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435328.1391055552, 6901256.647326943), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Koddervikenin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422802.1439160955, 6690516.2078622645), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Lyseopuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426578.1614182493, 6695506.141937317), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Muumipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426599.73375151696, 6696028.663448679), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Myrskylinnan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284993.99354847835, 6753391.089769491), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Marttilan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284315.1856454174, 6753111.228859342), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Valloxin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284416.5551781788, 6753952.028711334), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Halkolan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326392.44564081175, 6801433.838135342), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Puhikujan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355642.02789490315, 6695737.678668725), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Samulin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438209.7895020665, 6899366.735932905), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Topinpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(328409.6455543886, 6803081.879124888), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Keskuspuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250936.56690479463, 6930562.815403277), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Lutakon esteetön liikunta- ja leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435791.88783998287, 6901541.932311702), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Hyökkälän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391290.3819374685, 6698032.664609766), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Iivarin alakoulun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(336853.91207624704, 6949984.919153467), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Kiskokabinetti',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291085.0870726433, 6809063.173784445), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        'Pläkkipuiston leikkikenttä',
        'Pläkkisepäntie 24, Vihti',
        ST_Transform(ST_SetSRID(ST_MakePoint(352204.2291599257, 6690515.146368976), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Haukanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390251.22285579384, 6695691.473565755), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Itkonniemenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536578.253703059, 6974448.735464974), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Tolkkisten leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422115.83118905855, 6689681.220463922), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Pukinjärven leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228670.01013233842, 7011479.010668703), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Ympyrätien leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228644.44839978433, 7011293.334326151), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        'Sammontorpan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357493.32465859107, 6763501.116650943), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        'Rauhalan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(497720.16068744875, 6707880.935562893), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        'Presidentinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223233.53191221168, 6826507.9603160815), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Hakojärven koulu leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341369.6203418931, 6945466.65754676), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Storängens lekplats',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(242423.3681755119, 6694843.557778124), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Lekringen',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241873.70748966036, 6694819.521989193), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Ekparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238684.99799681656, 6691903.865016414), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Gungparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(242012.8773826901, 6694445.249998882), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Stormparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241620.224795527, 6695946.795356072), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Vindarnas lek',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241949.98984484107, 6696333.85425689), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Centralparken',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240616.5929529572, 6694592.559188423), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        'Syrjänharjun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(347318.1244324481, 6714299.83812662), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Eskolan puiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345480.5982580043, 6714407.575523694), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Tammipuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(347087.087140522, 6713295.359172355), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Elonpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(346650.7528429593, 6715587.646877605), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Leijonapuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(348004.3510742055, 6714182.895808736), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Tiilitehtaan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(347921.75354825106, 6713904.881113002), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Pikitien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(348963.3691802565, 6714191.647094204), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Tonttumäentien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(349563.3086340789, 6713681.966682391), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        'Patomäenpuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426179.9615588283, 6758287.823190617), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Miettilänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287945.463153169, 6700871.608220363), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Mustikkapolun leikkipaikka',
        'Mustikkapolku 14, Hamina',
        ST_Transform(ST_SetSRID(ST_MakePoint(512787.2073340091, 6713709.32062337), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        'Ruotsinkylän leikkipaikka',
        'Kalevankatu 21, Hamina',
        ST_Transform(ST_SetSRID(ST_MakePoint(512327.9187832176, 6714657.052151382), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        'Korpitien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509570.41842178797, 6837815.557226135), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Murtalhon leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506439.880119769, 6713380.856807915), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        'Alakaupungin leikkipaikka',
        'Tuomaankuja 2, Hamina',
        ST_Transform(ST_SetSRID(ST_MakePoint(511910.2038743006, 6714274.041876048), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        'Määrlahden leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(458412.7640232971, 6702991.185892653), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Pellonpään leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(348619.3764176681, 6938563.43871869), 3067), 4326),
        NULL,
        false,
        'Ähtäri',
        'osm'
    ),
    (
        'Siskolanmäen leikkipaikka',
        'Kaskitie 28, Hamina',
        ST_Transform(ST_SetSRID(ST_MakePoint(506657.13460710895, 6714083.826188252), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        'Metsärinteen leikkikenttä',
        'Jäniksenpolku 8, Orimattila',
        ST_Transform(ST_SetSRID(ST_MakePoint(430747.6911859563, 6740386.045975437), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        'Pitäjänsaaren leikkipaikka',
        'Varvinkatu 92, Hamina',
        ST_Transform(ST_SetSRID(ST_MakePoint(509871.245871321, 6714340.846630168), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        'Oinaslammentine leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536328.7727677793, 6984210.431999775), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Hupelin korttelipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442057.37649980217, 6900781.307305088), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Lomarantatien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327517.78286690125, 6813728.529803519), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Rukukujan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441845.9213074542, 6707769.843290169), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        'Rinnetien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446136.26583885454, 7380367.84239633), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        'Pajukulman leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352277.6365975058, 6691292.167785439), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Karusellin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395289.8786916611, 6697807.616742709), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        'Palotorin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338820.9300835572, 6989464.126040389), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        'Pitkäkankaan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338417.24402830086, 6989792.136118597), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        'Kuotaanrannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423455.74636299355, 6782758.482318848), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Almanpuiston leikkikenttä',
        'Korpisentie 10, Kauhajoki',
        ST_Transform(ST_SetSRID(ST_MakePoint(252076.38197610804, 6932752.909626581), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Kanaharjun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338792.4720328268, 6988085.84977574), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        'Kummatinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379590.88358314696, 7174576.784773596), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Rantapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(349404.40089264204, 6938587.231712315), 3067), 4326),
        NULL,
        false,
        'Ähtäri',
        'osm'
    ),
    (
        'Ylänköpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396094.48074534774, 6705545.403903753), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Sinirinnan leikkikenttä',
        'Punatulkunkuja 18, Vihti',
        ST_Transform(ST_SetSRID(ST_MakePoint(353835.8037339801, 6693624.758897034), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Lemmetin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353945.76396608, 6694071.271120771), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Ajurinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534294.5416977494, 6974112.310337082), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Puutteenmäen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338119.11619253625, 6819795.294954401), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        'Hevosniemen uimarannan leikkialue',
        'Hevosniementie 20, Lahti',
        ST_Transform(ST_SetSRID(ST_MakePoint(442754.09105921106, 6758046.30904776), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'SiCafen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385307.21855638793, 6899536.925767808), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        'Laasonportin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(328298.7631440766, 6800985.918984779), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Ellanpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(328050.7398046697, 6806214.050634772), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Klasipruukinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(218996.69945739617, 6826530.239869225), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Paratiisinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(219294.82919422636, 6826919.043513038), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Sikosuon liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331053.91732634744, 6785388.189109566), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        'Rånäsinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355206.9973915443, 6663811.867260721), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Soutajanpuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(267896.7702934765, 6791412.258746397), 3067), 4326),
        NULL,
        false,
        'Huittinen',
        'osm'
    ),
    (
        'Prantinpuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(269181.821153478, 6789761.38332889), 3067), 4326),
        NULL,
        false,
        'Huittinen',
        'osm'
    ),
    (
        'Kravilanpuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(268100.62367607973, 6789897.271841702), 3067), 4326),
        NULL,
        false,
        'Huittinen',
        'osm'
    ),
    (
        'Vappulan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333967.9064312016, 6680542.062025527), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Pienten piha',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339323.906070644, 6681950.194026367), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Kiipeilykumpu',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339229.65206221037, 6681888.512710241), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Marskin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285693.7250824655, 6752588.080040632), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Rantapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(349444.7712871303, 6938590.940069559), 3067), 4326),
        NULL,
        false,
        'Ähtäri',
        'osm'
    ),
    (
        'Norrin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(416316.46759973036, 6762898.3770677615), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        'Knaapilantien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263005.5690998951, 6994060.953732778), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        'Niinipuunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(218447.9261812432, 6829105.005370729), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        'Kuusileikki',
        'Kuusenkierto 22, Liminka',
        ST_Transform(ST_SetSRID(ST_MakePoint(426744.45921243465, 7194474.872837343), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        'Muijalan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345387.2186495865, 6687258.638318829), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Puolukkapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301660.89782299707, 7001108.668259838), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        'Sirvalahden leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326020.4492048736, 6802199.438137603), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Mattilan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326280.43682688323, 6796526.266671285), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Nokiankaivontien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(266099.7891849068, 6762616.620639489), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Kalliopuisto',
        'Oskarintie 20, Kauhava',
        ST_Transform(ST_SetSRID(ST_MakePoint(299550.17859806964, 7003441.260822556), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        'Tuomaanpuisto',
        'Sysikuja 9, Kauhava',
        ST_Transform(ST_SetSRID(ST_MakePoint(299560.08265000675, 7003086.950640989), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        'Pixne lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225546.46659702, 6990389.839015692), 3067), 4326),
        NULL,
        false,
        'Maalahti',
        'osm'
    ),
    (
        'Kaunismäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284518.7044629043, 6752131.224683378), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Nyrhilän puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(272621.7374699161, 6986516.967837052), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Pohjantien puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273320.7213686322, 6988180.076547276), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Koivurannantien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273938.80640650616, 6988014.661289005), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Ollilantien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325933.94383631594, 6803614.937111301), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Vekarakallion leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291575.69842135673, 6762284.115599154), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Sorsapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387953.3794994341, 6716132.143583437), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Karhunpellon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(328424.53690494975, 6699902.354679127), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        'Liikennepuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326164.638945483, 6803481.293923162), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Lauttasaaren kesämaja-alueen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380868.68741198373, 6670613.216461914), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        'Tähkäpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393308.8659967212, 7128461.635848812), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        'Parkour',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438317.4024970364, 6905164.236777725), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        'Kuningattarenrannan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(458276.2840680307, 6702540.574722748), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        'Lampuodinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312856.2760650135, 6818234.614800576), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Jussi Jokisen puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352705.6388329427, 7129777.905388967), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        'Tyvelänrannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(445585.434951655, 6919414.120773144), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Pehtoorinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(445828.90143218526, 6919615.277603158), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Hympylänmäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423121.6274327792, 6782070.991753803), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Vanhankylänniemen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393358.77216197265, 6703646.933625546), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Pajurannanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393770.71155950404, 6704618.57899301), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Kareliapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395065.7913431246, 6703544.7993613295), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Pihapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395495.2997996559, 6705858.0640848195), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Tanhuniityn leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395845.31484236213, 6704479.497177589), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Aholanpuisto',
        'Impoonkatu 8d, Järvenpää',
        ST_Transform(ST_SetSRID(ST_MakePoint(396572.49588922365, 6705696.539610692), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Marjakuusenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(398280.85215461394, 6709162.33449513), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Kuusipuisto/Kotirannanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(398478.2880734127, 6708707.029745963), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Olopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530655.8775915127, 6966005.062447792), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Mäkitalonpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252140.98331149312, 6933224.682429556), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Linturaitin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381321.53275342553, 6906598.833521454), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        'Elämyspuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(421354.61754539516, 6783501.190736637), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Kivirinteentien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424448.2616165263, 6781955.136683365), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Putentien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249960.52122789703, 6931472.058972448), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Energiapuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423878.27681732556, 6782053.853596701), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Kanavapuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(421653.1916410856, 6783278.8853451405), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Untamonpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485240.56893106946, 6748462.070595586), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Ojastenpellon leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426721.373588225, 6757104.336938404), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Heinolan liikennepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448673.7791036309, 6785851.363509412), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        'Lähdepuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424177.56547908107, 6782357.393921484), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Pirppulan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422701.066163557, 6781522.182115416), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Perhekeskus Ilon puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(421468.04305623483, 6782957.99612801), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Talvikkitien leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485718.7620111753, 6747184.576158371), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        'Lahdenkylän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323924.9693916295, 6804031.620387647), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Vesilahden leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319630.9534126134, 6800744.516852242), 3067), 4326),
        NULL,
        false,
        'Vesilahti',
        'osm'
    ),
    (
        'Kalmarinrannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(421263.41215259326, 6782832.222626056), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Sepänniemenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338350.0604341289, 6950358.607875459), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        'Ravipuiston leikkikenttä',
        'Kilpakuja 1-2, Kauhajoki',
        ST_Transform(ST_SetSRID(ST_MakePoint(250268.4332621226, 6931754.9416485205), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Kitkonpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282260.0181623064, 6755022.542148297), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Lettulantien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432995.94920510385, 6741761.252407962), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        'Taalikanpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282101.0370857296, 6754450.729503885), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Lamminpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284966.1075291335, 6752464.043448371), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Nykarleby Jernväg',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285752.22944627836, 7050832.404194894), 3067), 4326),
        NULL,
        false,
        'Uusikaarlepyy',
        'osm'
    ),
    (
        'Riihelänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286486.258774905, 6699101.564672332), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Pahkavuorenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287746.18669300363, 6700436.057964981), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Vuohensaaren leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(283043.93412008474, 6698249.340289161), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Horninpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286518.8602374542, 6700392.212914118), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Ulkoshakkipeli',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286627.8011709895, 6700362.010139099), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Pukstaavin leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281270.7427685256, 6807829.647921063), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        'Niittykummun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337946.9714538487, 6988789.306746319), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        'Närvelänpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286193.7168744406, 6696766.664934059), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        'Tuulialan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327080.3973507649, 6804413.83863025), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Puuroskadun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286393.62663244834, 6752271.709874421), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Jalaspuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251227.9494245661, 6932769.953822311), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Höytämön leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327707.7774823545, 6812959.317727508), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Villenkujan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325339.9510743676, 6801299.141315275), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Nattarin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337410.85449385684, 6819745.069499259), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        'Ketuntien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327954.75502671266, 6808860.825702237), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Palomäen leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(328264.28745567147, 6809226.448418907), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Myllykolun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327778.96017168846, 6809472.341291442), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Ahvenpolun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327068.5795079896, 6805740.915888945), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Koivukärjen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326886.27601954335, 6804968.533532885), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Urheilupuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263342.62618579913, 6709028.961839484), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        'Brissaksentien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355778.3347805358, 6665158.491284432), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Piekkolan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(420093.1968047972, 6784458.6193436), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Palsalan leikkipuisto',
        'Palsalantie 14, Masku',
        ST_Transform(ST_SetSRID(ST_MakePoint(232619.6439064937, 6723890.250244112), 3067), 4326),
        NULL,
        false,
        'Masku',
        'osm'
    ),
    (
        'Oravapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315608.9048045823, 6831709.228913945), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Torangintauksen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599060.4941109163, 7315715.321213742), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        'Apajapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(420247.336120012, 6784195.426959098), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Mikonkorven leikkipaikka',
        'Vaamikuja 8, Järvenpää',
        ST_Transform(ST_SetSRID(ST_MakePoint(397887.1278759873, 6704353.255581348), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Valopuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394983.9413954123, 6707133.586515166), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Tiililänpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250993.86479025308, 6932247.680680011), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Pohjanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408917.34304957377, 6724468.473079709), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        'Häjyylypuisto',
        'Härmänraitti 3, Kauhava',
        ST_Transform(ST_SetSRID(ST_MakePoint(288661.05863929406, 7009021.6051883595), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        'Jokiniitty',
        'Jokiniityntie 12, Kauhava',
        ST_Transform(ST_SetSRID(ST_MakePoint(288803.9612599982, 7008459.791852813), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        'Hakapuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250423.0828210441, 6931578.230644851), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Pätästien puiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251669.14393175638, 6932404.162269864), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Mäkitien puiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251721.7464484978, 6932239.4349808255), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Urkinpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516909.4291960822, 7589155.27942922), 3067), 4326),
        NULL,
        false,
        'Inari',
        'osm'
    ),
    (
        'Karhunkaaren leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234004.96277163597, 6722103.99523414), 3067), 4326),
        NULL,
        false,
        'Masku',
        'osm'
    ),
    (
        'Kajamon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234564.88094587045, 6721983.897400379), 3067), 4326),
        NULL,
        false,
        'Masku',
        'osm'
    ),
    (
        'Aniantien leikkipuisto',
        'Aniantie 5B, Asikkala',
        ST_Transform(ST_SetSRID(ST_MakePoint(422075.3812961989, 6782282.225839252), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Sienipolun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325840.1787611095, 6804450.141452476), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Rantakartanon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326638.37135219027, 6799946.152467071), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Neva-Kokonpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250667.17259751086, 6930179.389966494), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Rinkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262322.98204166995, 6950434.203458505), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        'Poutapuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262454.9194038851, 6950770.847262983), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        'Keskijyrän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262677.6380635872, 6950384.047659299), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        'Rådhuset',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107582.0719502464, 6683151.072490002), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        'Pellonkujan puiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250399.96387551285, 6929685.186716225), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Kyyhkylän puiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249523.4770350208, 6930109.947939967), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Arkonkujan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457589.9757757008, 6902826.263226288), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        'Svampparkens lekpark',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227361.505623628, 6988000.625893992), 3067), 4326),
        NULL,
        false,
        'Maalahti',
        'osm'
    ),
    (
        'Vintilänpuiston leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428942.89024208253, 6755154.109926803), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Kruununmaanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381972.3706774491, 6721654.664053643), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Isonkylän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371306.6150347016, 6720920.222214488), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Leijonapuisto',
        'Lentokentäntie 10, Kauhava',
        ST_Transform(ST_SetSRID(ST_MakePoint(300640.0727930934, 7003157.511543486), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        'Ilvanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314545.4066831123, 6819250.775241043), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        'Koliininpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290506.3015820427, 6971632.787746157), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Syväjärven uimarannan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356677.46434679447, 6665325.2541759685), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Kasurilan leikkikenttä',
        'Ruisaumantie 22-24, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(535046.4068823145, 6992018.510047133), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Tarunpellon leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428856.984654024, 6755397.746775441), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        'Naissaarenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357547.25083750446, 6666552.894911292), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Metsäpolun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355755.5980604255, 6665366.0943659255), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Niittypolun leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355895.8951572124, 6664957.229499515), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Paasilanpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(350826.50488352345, 6692467.114364197), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        'Paunun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(328654.32434209174, 6813032.674375158), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Tuomonraitin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300727.7644633437, 6842680.29814913), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Mannin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300198.2729537082, 6842729.570964094), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Sanssinakselin Leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250599.09454973927, 6930921.037308926), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Upraannuksentien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251961.12352812904, 6930232.531759961), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Laidunpuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282085.2109734333, 6755669.065104709), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Mäntytien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282298.6333379261, 6755463.372745986), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Metsäkitkon leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282702.44516365085, 6755114.449778136), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Metsolan leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282100.4441311404, 6755325.686294145), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        'Taaven leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299224.0300001683, 6839087.03106719), 3067), 4326),
        NULL,
        false,
        'Hämeenkyrö',
        'osm'
    ),
    (
        'Heinzenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(515379.7630120089, 6836399.326303009), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Sipilän leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326135.0518390077, 6814212.164631211), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        'Lampeinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(513256.6606520032, 6834600.25541847), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        'Koivikkopuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(545091.0784007205, 6909975.286276961), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        'Puurtilanniemen leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(546905.5992338073, 6911891.554687302), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        'Kaaripuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341492.6953883266, 6797841.197641888), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        'Niemistön leikkipaikka',
        'Keikkoahde 10, Seinäjoki',
        ST_Transform(ST_SetSRID(ST_MakePoint(285325.6289036859, 6971901.913868419), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Porkkatie playground',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644063.0771417518, 6942543.425919446), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        'Säätypuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289839.0971153655, 6962938.401552546), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Aatelispuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289218.9147964247, 6963277.692895108), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Leenanpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289139.6332460826, 6969563.280065307), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        'Muksujen metsä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226166.6463882513, 6934951.73934883), 3067), 4326),
        NULL,
        false,
        'Teuva',
        'osm'
    ),
    (
        'Kaskitien leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319648.15737420466, 6830291.856610155), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        'Yhteiskoulun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395096.225050196, 6704672.18687117), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Sirkantien puiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251538.1775711767, 6930695.386701389), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Martinniityn leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384325.7190508684, 6722014.241582678), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Vilpunpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(420048.45806796895, 6784635.361437592), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        'Paltantien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263241.28820916894, 6709460.684468818), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        'Kaupunkisillanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384089.71929760615, 6724351.336727849), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Lounatuulenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383599.9042026436, 6720224.599430914), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Yhteiskoulun piha',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395123.8725222203, 6704802.057353869), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Moduulin piha',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395172.4409158723, 6704831.3041056525), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        'Topin piha',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390759.8219481701, 6699436.0085855), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        'Mantelipuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381968.5553374474, 6723243.123936612), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Kenraalinkulmanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385239.76223328634, 6724882.265423024), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Lystilaidun',
        'Jokivarrentie 14, Liminka',
        ST_Transform(ST_SetSRID(ST_MakePoint(423857.6419791794, 7188927.030444897), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        'Palonkylänpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380586.13669731753, 7173000.619770487), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        'Polkkapuiston leikkipaikka, alaosa',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384470.9805852919, 6722917.084513965), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Loitinaronpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(318486.05658237124, 6746999.275262992), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        'Haukanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380657.0314741372, 6723551.4575251285), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Karjalanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383139.5924870985, 6725042.874187394), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Kirjavantolpanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381982.15191605786, 6722531.002510672), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Kruununpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382903.90930522233, 6722093.337489119), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Kuusipuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384264.7380942539, 6724988.720321043), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Kyllikinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382637.2260506078, 6720474.361160054), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Nummenrannanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380802.6075585454, 6721990.24895875), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Piispanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384623.09938399756, 6724412.441777309), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Sahanmäenpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382768.4110804217, 6724795.942491182), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Talvisillanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381025.95351864287, 6723277.606654141), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Tähkäpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381769.1359310795, 6725459.307610279), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Venlanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382393.62855976104, 6722555.268007332), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Viertolanpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382918.0503541825, 6722784.581400316), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Sveitsinpuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381288.25229786866, 6723986.600580063), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        'Halmekadun leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(545877.7504203644, 6911242.792119477), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        'Teerimäen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(549086.3351014206, 6906993.247573168), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        'Pontuksenpuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(570358.555033595, 6772121.36448816), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        'Taivallahden leikkikenttä',
        'Satakielentie 10, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(532438.5767464312, 6994775.408119189), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Sepäntien leikkikenttä',
        'Sepäntie 4-6, Siilinjärvi',
        ST_Transform(ST_SetSRID(ST_MakePoint(534688.083827528, 6994145.59571488), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        'Tiger Park leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(475684.43632122787, 7313668.004301073), 3067), 4326),
        NULL,
        false,
        'Ranua',
        'osm'
    ),
    (
        'Liikennepuiston leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250359.09210894394, 6716716.857462447), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        'Myllärinraitin leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(545092.6570442884, 6908168.936107254), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        'Kuivinniemen lastenleikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535134.5527288142, 6976840.390618721), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        'Pankakosken leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(657625.8359019955, 7025867.164398964), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    ),
    (
        'Pihonkaarteen leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383334.21268797043, 6728151.939833474), 3067), 4326),
        NULL,
        false,
        'Hausjärvi',
        'osm'
    ),
    (
        'Leikki-Linnukka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424515.0299205656, 7188309.822370115), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        'Välitien puiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253000.6929134805, 6935176.3547626445), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        'Rajatien leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428104.6964911786, 7027031.5754802935), 3067), 4326),
        NULL,
        false,
        'Pihtipudas',
        'osm'
    ),
    (
        'Leppävuoren leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(348926.4911842324, 6939790.196776421), 3067), 4326),
        NULL,
        false,
        'Ähtäri',
        'osm'
    ),
    (
        'Marttalan leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(554759.4670808516, 6740996.739150417), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        'Leikkihaka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424864.71708248084, 7188740.683201628), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        'Pottupuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360959.89530837134, 6733771.24186892), 3067), 4326),
        NULL,
        false,
        'Loppi',
        'osm'
    ),
    (
        'Urheilukentän leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(350176.92006023653, 6939386.132395447), 3067), 4326),
        NULL,
        false,
        'Ähtäri',
        'osm'
    ),
    (
        'Tikantien puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426768.77776459506, 6697343.485858129), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        'Mukulapuiston leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228047.40175922785, 6822068.772211445), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        'Korentinojan puisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338489.5602007943, 6797157.498682622), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        'Mellsteninniemen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376426.8935868009, 6670675.84600887), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        'Renginpihan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356380.50150405033, 6668694.583207753), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Länsipihan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356272.12442115776, 6668496.796077952), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Nahkurinpihan leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356067.9272860169, 6668230.534560323), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Kirkkonummen hyvinvointikeskuksen leikkipaikka',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358330.2599870921, 6668730.269592429), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        'Torin leikkipuisto',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(212018.24243702705, 6761010.270519307), 3067), 4326),
        NULL,
        false,
        'Laitila',
        'osm'
    ),
    (
        'Kirkkopuiston leikkikenttä',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289062.68533942365, 6730680.211418652), 3067), 4326),
        NULL,
        false,
        'Koski Tl',
        'osm'
    ),
    (
        'Pitkänevantien leikkialue',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227310.2074308467, 7011763.438294686), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    );
