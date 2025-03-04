
-- Import playgrounds
INSERT INTO playgrounds (name, address, location, description, has_supervised_activities, city, data_source)
VALUES
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310506.07483970764, 7084462.008153407), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308797.53684708604, 7083557.776107174), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(701610.7329912717, 6954059.167744804), 3067), 4326),
        NULL,
        false,
        'Ilomantsi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(349351.2968094053, 6663477.091478007), 3067), 4326),
        NULL,
        false,
        'Siuntio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(594084.030218548, 6786899.957380569), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444616.7505122756, 6695418.743065961), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(410039.2314748525, 7143898.452600905), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(580710.2512382809, 6776819.204120518), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429950.0388536422, 6751611.5238020485), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107198.27938974928, 6683455.533846956), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108550.48920161754, 6682460.6434098855), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(204017.91671868105, 6787484.23831917), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426592.35963582224, 6694273.021829951), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(417538.9911500409, 6762910.957376225), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(401402.58872475836, 7331992.088497767), 3067), 4326),
        NULL,
        false,
        'Tervola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274330.6658620775, 6963341.218323251), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444304.721056395, 7375847.818852153), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225509.4801222316, 6714638.118519875), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351794.4562529968, 6691513.62320047), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378796.8485586182, 6735656.787006539), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356020.01897690643, 6663989.793965479), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287372.7710271054, 7069970.3153869165), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287708.61168033874, 7065880.4573575), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288903.46844120236, 7067946.040370114), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288136.9626769348, 7063869.473548704), 3067), 4326),
        NULL,
        false,
        'Pedersören kunta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288134.27169852285, 7064371.930807396), 3067), 4326),
        NULL,
        false,
        'Pedersören kunta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288457.0773434657, 7064508.847357596), 3067), 4326),
        NULL,
        false,
        'Pedersören kunta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288091.0114388354, 7066058.295311867), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289297.8512722581, 7068825.7642632015), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288245.7873739776, 7069256.179811423), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287378.1340811949, 7066040.167475394), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286911.6358729345, 7068112.148353363), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289196.28037963196, 7069807.705592693), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444902.9999858114, 6756516.163786125), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(420730.1665512081, 6761038.05771044), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287730.24616766395, 7055492.090396743), 3067), 4326),
        NULL,
        false,
        'Pedersören kunta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287418.1534255413, 7068313.834003142), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391468.4113598524, 7291959.708102018), 3067), 4326),
        NULL,
        false,
        'Kemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442381.94165943994, 6903111.725675383), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(436041.57159255625, 6897812.478521866), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453207.2370521445, 6846312.599525657), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453490.4114739742, 6846171.340290752), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377446.1734378239, 6744991.394740716), 3067), 4326),
        NULL,
        false,
        'Hausjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361620.76258614147, 6690311.144879523), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289745.70659667684, 7068984.64489651), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290326.5608158923, 7068961.596969336), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359666.0265187728, 6732857.920303885), 3067), 4326),
        NULL,
        false,
        'Loppi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(664534.2702648236, 6888649.054013164), 3067), 4326),
        NULL,
        false,
        'Kitee',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309388.92982887826, 7083003.673318698), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383293.0597352954, 6722081.419050626), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(268922.4563433247, 6790602.3463621475), 3067), 4326),
        NULL,
        false,
        'Huittinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372248.0369106737, 6743934.163786759), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298350.8038278561, 6943146.186634543), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(496830.2127447953, 6702876.864377696), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247354.9648280908, 6713692.583235382), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247902.54604222468, 6713459.958047019), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(513953.4705218143, 6840096.655956676), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287848.3644870925, 7068148.080994382), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432318.2983477432, 6898846.984987752), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(491613.9717960459, 6705963.277625524), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(275648.0184105496, 6831648.219321127), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(275939.48593528214, 6831498.4976507295), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434049.9185596695, 6895314.501372962), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434164.38691646035, 6895394.7457830375), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309848.1727013092, 7083874.887656885), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253152.36956201523, 6995724.188175116), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477073.41164209496, 6747031.025232372), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395090.14240354556, 6697435.234843704), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352809.8784250247, 6699443.314278309), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483465.3105181872, 6748441.054159657), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(202635.01398178434, 6792345.282695299), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485152.52137524367, 6748974.322628957), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345142.53415254236, 6816883.054530162), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(344644.4816151932, 6818322.278498761), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(347024.77752081875, 6815278.18613712), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559517.6665104013, 6778387.368326108), 3067), 4326),
        NULL,
        false,
        'Taipalsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(296761.7191281632, 7061713.9048155015), 3067), 4326),
        NULL,
        false,
        'Pedersören kunta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363982.25657938333, 7074914.198755236), 3067), 4326),
        NULL,
        false,
        'Toholampi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(295563.584338772, 7061367.994459426), 3067), 4326),
        NULL,
        false,
        'Pedersören kunta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288397.6058207814, 7065295.869045157), 3067), 4326),
        NULL,
        false,
        'Pedersören kunta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(207711.12067662494, 6795147.476000933), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231490.07631970372, 7007098.133963683), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(305849.1612827093, 6823053.400591113), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488333.6369503932, 6735596.299290521), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(490478.10660194064, 6756288.535331783), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486267.47346327186, 6747230.195578019), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228564.43100311543, 7007368.924117871), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229602.90896475245, 7006384.402611787), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229571.77064102277, 7006464.480837731), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483805.0435178341, 6750156.455769396), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425808.4253669748, 6757035.540386873), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425798.691568621, 6757515.85518913), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345831.93819354, 6714594.847080971), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(418469.4482146014, 7070952.967324821), 3067), 4326),
        NULL,
        false,
        'Haapajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(418295.9555346612, 7070930.495878789), 3067), 4326),
        NULL,
        false,
        'Haapajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(259163.95819047053, 6739404.419785112), 3067), 4326),
        NULL,
        false,
        'Pöytyä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205739.92486692162, 6788521.343189751), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(259407.14833386606, 6739361.080260799), 3067), 4326),
        NULL,
        false,
        'Pöytyä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228071.58704624028, 6715067.199269112), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345142.5346488247, 6816883.065661584), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395878.61624584405, 6712329.718966359), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(209652.196794754, 6939226.691081209), 3067), 4326),
        NULL,
        false,
        'Närpiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379683.59527177474, 6902639.501594816), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(213371.32481540047, 6815328.659878665), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(213633.17964025773, 6816042.137225278), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423885.5777636084, 6763402.194497452), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424007.48276046664, 6763375.232493138), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423947.5061203111, 6763515.324234321), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309401.530657836, 7084621.107584413), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310759.89866527705, 7083885.37118251), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(489103.75342687377, 6754951.988754411), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309988.1413499912, 7084584.206332567), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434101.40476437955, 6907190.144365578), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516466.80871294095, 6842471.0090502845), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(515912.6916075607, 6842156.899096571), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(456972.1433779417, 6701407.23163037), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457033.16861638956, 6701640.016429392), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457063.0227696323, 6702066.949163891), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(209663.56956498715, 6939633.171222408), 3067), 4326),
        NULL,
        false,
        'Närpiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(500592.1530325192, 7644394.887697754), 3067), 4326),
        NULL,
        false,
        'Inari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228703.31150573923, 6938631.397658938), 3067), 4326),
        NULL,
        false,
        'Teuva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228968.05973599252, 6940392.762731085), 3067), 4326),
        NULL,
        false,
        'Teuva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(258932.79279383968, 6738977.02597729), 3067), 4326),
        NULL,
        false,
        'Pöytyä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292286.82046922354, 6853870.479039789), 3067), 4326),
        NULL,
        false,
        'Ikaalinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292255.0984072611, 6854461.27917089), 3067), 4326),
        NULL,
        false,
        'Ikaalinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(340842.6845598727, 6820689.042562175), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108530.54120483698, 6682486.896271852), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108544.03737403732, 6682485.169627021), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378241.33656251186, 6735730.248632575), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378192.6518391995, 6736485.085402505), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559690.8197795268, 6769200.18641046), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559632.1946354924, 6769238.400746583), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(340340.8134134762, 6819576.666565742), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339969.0747423057, 6821799.302718703), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107702.03410329932, 6681019.336904939), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(342467.60670716106, 6818304.55648064), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319246.6074857213, 6774226.524604423), 3067), 4326),
        NULL,
        false,
        'Urjala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419865.64886950917, 6762359.941535895), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246156.07134159154, 6716700.848221316), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(198373.13947013905, 6682011.358818691), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226286.3616025583, 6713945.715953627), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430195.72622187337, 6760934.945253364), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(386402.7335539854, 6921752.076569386), 3067), 4326),
        NULL,
        false,
        'Multia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(307405.79748692876, 6772917.45386358), 3067), 4326),
        NULL,
        false,
        'Urjala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(368206.63343654864, 6737371.967470221), 3067), 4326),
        NULL,
        false,
        'Loppi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(368202.0465621173, 6737183.947656834), 3067), 4326),
        NULL,
        false,
        'Loppi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378993.1318274548, 6736540.898047057), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379774.81329831685, 6733107.169660313), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358572.4975955043, 6683925.956689083), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358325.8110576088, 6684189.946745156), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488319.91948407027, 6755613.605941781), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(489306.1862991729, 6736663.010615761), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(374008.09789498063, 6880342.096304139), 3067), 4326),
        NULL,
        false,
        'Mänttä-Vilppula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(552221.4455221865, 7018471.003975175), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241245.4413692051, 6656091.973673806), 3067), 4326),
        NULL,
        false,
        'Kemiönsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225223.5813406579, 6837794.364270202), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(543593.4597755134, 6908891.958280146), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360401.68468698073, 6816219.131377623), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375643.7295829619, 6694698.856326904), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(245681.97133228826, 6716620.616976826), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(245993.1755291314, 6716982.174192016), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246281.25770399137, 6716237.501919198), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289947.3020655021, 7076268.665668385), 3067), 4326),
        NULL,
        false,
        'Luoto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(491092.76824492885, 6728852.304091441), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(514448.57482057705, 6839980.015610278), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(596435.2425926402, 6861294.5002858145), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362021.18431601033, 7394994.506280793), 3067), 4326),
        NULL,
        false,
        'Pello',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298702.40648205637, 6989504.324305787), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444866.33623914473, 6916826.894100264), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227831.71020335588, 7008035.224260804), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(369610.07122130005, 6892229.260262686), 3067), 4326),
        NULL,
        false,
        'Mänttä-Vilppula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380541.7061855926, 6735411.047842236), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(208918.01714919263, 6788888.290034368), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(202532.3676307011, 6790341.022938192), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(133553.32152595592, 6696874.5789846005), 3067), 4326),
        NULL,
        false,
        'Vårdö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(493248.50784290215, 6927560.043124698), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(630308.8218658048, 6963309.382499633), 3067), 4326),
        NULL,
        false,
        'Polvijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(630005.9026828432, 6963498.282129526), 3067), 4326),
        NULL,
        false,
        'Polvijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274257.745423672, 6638813.334263678), 3067), 4326),
        NULL,
        false,
        'Hanko',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286987.55104280123, 6639491.13590311), 3067), 4326),
        NULL,
        false,
        'Hanko',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(595410.9521977217, 6783094.224530505), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341325.627065975, 6816511.826604768), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425205.3848169912, 7212661.074937076), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(103896.44104242366, 6676124.275295158), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381133.01819026354, 6734230.053290914), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108080.83452268626, 6683327.952639063), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228411.2248829853, 7010213.451977061), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(594799.678270225, 6784522.873456645), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(595383.2017516224, 6784324.291608696), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367272.5904322674, 7151044.030090387), 3067), 4326),
        NULL,
        false,
        'Pyhäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(594982.8392818302, 6785997.73206608), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(595012.4518698963, 6783410.714127922), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(594721.1080734001, 6788319.030449461), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(595466.2007533219, 6788160.742313873), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(596433.0241170662, 6786442.80153665), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(594575.3766035044, 6785587.392758044), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(595422.8599552148, 6784938.97363842), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598796.4951258914, 6787735.118793584), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598700.5700888821, 6788681.167002043), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599743.9485541363, 6788095.858158384), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(597848.5383722035, 6786259.539553078), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(597999.2144438329, 6784054.427673734), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598415.7754913231, 6789145.440854769), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440905.90236602793, 7374297.254466834), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(549543.078363897, 6908861.584180292), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(596383.1196106047, 6788260.209212661), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(105297.08347186289, 6684109.09408664), 3067), 4326),
        NULL,
        false,
        'Jomala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432128.759498658, 7392722.548860826), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(596836.4301786837, 6786814.562932991), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(596762.4415768938, 6786852.676553981), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325345.3926574029, 6817702.605146184), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(587648.2379919938, 7275135.153550904), 3067), 4326),
        NULL,
        false,
        'Taivalkoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446676.2844560048, 6775665.415025081), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381580.99006646825, 7324404.877561068), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381376.3911621949, 7324620.2686931025), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223103.21575628512, 6830123.259394011), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108923.05949982727, 6689276.030076112), 3067), 4326),
        NULL,
        false,
        'Jomala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(505450.76850939967, 6943328.480743926), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(208735.61032659461, 6940461.6571009215), 3067), 4326),
        NULL,
        false,
        'Närpiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(340866.1856584548, 6798680.019322713), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(195434.14642065263, 6753479.64345842), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435272.91567444475, 6904298.568961117), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390267.78334061254, 6960267.645595151), 3067), 4326),
        NULL,
        false,
        'Saarijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560518.8060906687, 7114179.211926987), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388621.5432714635, 6713660.371219474), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388630.4940051291, 6713657.085857779), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380838.9221408584, 6906072.554910274), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378292.98020991206, 6737807.760118741), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(334333.86583991826, 6680765.805269156), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108423.6535300705, 6681072.84341294), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108880.45635794458, 6681444.777191928), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108550.93315824261, 6681952.690438889), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(495927.48251690547, 6710008.503577395), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(621227.8984029602, 6850768.947242626), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361318.3978650841, 7471717.086359974), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(148364.3012911359, 6682537.377757911), 3067), 4326),
        NULL,
        false,
        'Sottunga',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(131898.22014731314, 6673288.8211719915), 3067), 4326),
        NULL,
        false,
        'Föglö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310048.1355132833, 7085619.25500182), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(544781.2810054397, 6717198.163318301), 3067), 4326),
        NULL,
        false,
        'Virolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431647.5255947418, 6741704.405478003), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(597087.4193023636, 6781804.400040274), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(501114.9158290707, 7248415.4202548545), 3067), 4326),
        NULL,
        false,
        'Pudasjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310506.14132618206, 7083785.86617105), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        'Väliaitankatu 5, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(436861.2637571023, 6902559.790054011), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(112960.13386744948, 6701612.289775443), 3067), 4326),
        NULL,
        false,
        'Saltvik',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(458087.2124328217, 6701162.059266476), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107585.30112967768, 6681887.201585096), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107638.42190497689, 6681930.156489608), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308389.59264794743, 6667989.498856762), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(111489.36193046148, 6697469.6400203705), 3067), 4326),
        NULL,
        false,
        'Finström',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247427.23420394905, 6710035.929799245), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247270.14758331535, 6710221.79779842), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247310.71070918225, 6710515.739910735), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(296802.67488508474, 6987675.701815823), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(239366.15675064345, 6810618.192312169), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298850.9651973016, 6987646.611072597), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(87509.20854377304, 6699285.097863162), 3067), 4326),
        NULL,
        false,
        'Eckerö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(578780.8286928469, 6777050.134458175), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353149.8186416045, 7129431.019486827), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352074.9957964254, 7130074.881904832), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433837.8615779618, 6765264.578626858), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353059.40237101144, 6691912.974729438), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235960.06525782176, 6681561.430057234), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229356.2951681101, 6838377.044909841), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273319.08126714, 6988011.265330936), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246848.64084053048, 6713863.506776584), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281882.84920797613, 6804042.997695904), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238952.43132036654, 6905019.429566901), 3067), 4326),
        NULL,
        false,
        'Isojoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(236822.61623633927, 6898100.6434669485), 3067), 4326),
        NULL,
        false,
        'Isojoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(237059.93090205773, 6897551.311804008), 3067), 4326),
        NULL,
        false,
        'Isojoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(237134.8400955274, 6897610.266993272), 3067), 4326),
        NULL,
        false,
        'Isojoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(237469.03245984158, 6896588.794227513), 3067), 4326),
        NULL,
        false,
        'Isojoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(195395.40763676184, 6754618.907535118), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241521.09919375466, 6805158.769918421), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(248762.05168411665, 6743027.538842503), 3067), 4326),
        NULL,
        false,
        'Nousiainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(218585.35532793, 6713442.19001564), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(197449.80068085121, 6753348.737477195), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107895.51560800837, 6681659.178982818), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(316939.0373182839, 6747031.007360368), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297672.2581805759, 7022790.287649623), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325874.80983049556, 6947277.478237051), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(417093.64470435266, 6762366.22334122), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426086.35255259654, 6757426.660787166), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535181.0166119126, 7122274.871239897), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311063.67086306395, 6820636.250158006), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536406.3974922508, 7124289.735266647), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287784.5092233249, 6967373.234966884), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364250.4117650966, 6761434.153426668), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(368051.34173368174, 6903769.277959181), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(411509.5113902668, 7504620.377010537), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(508123.58397532214, 6793000.999692707), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487547.7641026859, 6689825.040225056), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(588004.1385494367, 7275140.030537698), 3067), 4326),
        NULL,
        false,
        'Taivalkoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(588029.9084303845, 7275050.103247696), 3067), 4326),
        NULL,
        false,
        'Taivalkoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(524406.7623707345, 6743454.214109145), 3067), 4326),
        NULL,
        false,
        'Luumäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(302665.80358702096, 6654393.87533901), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341270.4579345108, 6820697.381663058), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(496565.4656605427, 6701219.794100957), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(496726.5874104028, 6701320.406270199), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(450447.8678665956, 6792281.406973967), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430158.0360213126, 6746901.589171296), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(549895.7597835207, 6905102.449899922), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(590465.6067806495, 7197015.812904854), 3067), 4326),
        NULL,
        false,
        'Suomussalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(590555.7655380835, 7197039.534287206), 3067), 4326),
        NULL,
        false,
        'Suomussalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448629.06289318483, 7379784.656628738), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(590564.5665103836, 7194902.00925697), 3067), 4326),
        NULL,
        false,
        'Suomussalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(504462.5303019138, 7355081.746975955), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(279460.3637414983, 6722230.121052641), 3067), 4326),
        NULL,
        false,
        'Marttila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443246.74358712405, 7376421.331556395), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446136.4165417872, 7380368.021938495), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(464467.5103401066, 7389483.122713484), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400235.1603384211, 7089303.976525829), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(504988.1247905583, 7554141.425517954), 3067), 4326),
        NULL,
        false,
        'Sodankylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287860.9104868568, 6969098.058453177), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407299.5332254656, 6855364.856145269), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(590584.2525255573, 7196992.090202329), 3067), 4326),
        NULL,
        false,
        'Suomussalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408968.9926224511, 7526427.771207552), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(410547.39771576645, 7486917.382619302), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(401304.6601776074, 7331630.780180615), 3067), 4326),
        NULL,
        false,
        'Tervola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(590236.698384505, 6831860.165866727), 3067), 4326),
        NULL,
        false,
        'Sulkava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(590517.7320452582, 7197010.440686049), 3067), 4326),
        NULL,
        false,
        'Suomussalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358179.2650510032, 6684089.175033468), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506793.8342210899, 6943858.229848828), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(447592.35046121525, 7379913.327533701), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(307430.0262335662, 7024533.195626873), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(452953.2083202373, 6846269.199320618), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453005.31340834015, 6846246.415646907), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(452921.59488058946, 6846112.6107496545), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446649.52939546393, 6775663.090324715), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(622488.0764071188, 7113929.845543828), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274131.5239986533, 6856876.672694906), 3067), 4326),
        NULL,
        false,
        'Jämijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363884.9317827763, 6765033.39328915), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222039.3667704487, 6826948.589070641), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357931.8905052766, 6793372.549282629), 3067), 4326),
        NULL,
        false,
        'Pälkäne',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309208.18092323386, 7081300.860544411), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535537.266217952, 6970134.492126282), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535537.2266299068, 6970139.550306409), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535537.0985752543, 6970144.3178270105), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(101162.70524031075, 6683622.471976923), 3067), 4326),
        NULL,
        false,
        'Jomala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(502434.8335605485, 6948367.737495215), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438570.06469191547, 6900103.296732011), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(511262.1100777879, 7434224.903550498), 3067), 4326),
        NULL,
        false,
        'Pelkosenniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341161.35114538635, 6945379.4380534105), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299667.2245156362, 6645563.703396631), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(89518.2812754208, 6691792.143548945), 3067), 4326),
        NULL,
        false,
        'Eckerö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435732.35352959327, 6902789.909413279), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435733.56813405815, 6902792.293108425), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435735.3918526847, 6902791.478233539), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435738.6347808627, 6902794.781470509), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435742.98096299364, 6902794.64269274), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286881.079834779, 7069342.703380198), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225912.78501419653, 7018913.712609746), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(365052.9798730785, 6706954.345645292), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357787.2792474957, 6684460.352269999), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357731.7038574505, 6684463.880016168), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531787.515613069, 6967141.157057242), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422802.1826740658, 6690515.1378774205), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(637089.7810475469, 7143261.233371439), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380679.5526175876, 7108089.392108449), 3067), 4326),
        NULL,
        false,
        'Ylivieska',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203510.9951320985, 6790483.176860983), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337217.99886168214, 6821838.360998384), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562590.0345860267, 7113008.375645873), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(618192.4834082595, 7260263.895191998), 3067), 4326),
        NULL,
        false,
        'Suomussalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(499637.6671590577, 7252947.171537707), 3067), 4326),
        NULL,
        false,
        'Pudasjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(418783.10313008, 6762626.907490748), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(418740.42221074644, 6762611.050019076), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223231.81036229676, 6826510.436012648), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378957.46225237957, 7502849.489130166), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378520.70941300294, 7501823.722803051), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378340.568427828, 7502466.131008598), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(275543.7206081022, 6831679.846158357), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438610.14906433754, 7047373.882083783), 3067), 4326),
        NULL,
        false,
        'Pyhäjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222658.36410840915, 6828993.397281265), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222663.48866329744, 6829012.169645795), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(215581.12459506642, 6848942.869495963), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(622724.1180286871, 7112882.890844155), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442229.7722309839, 6774924.176785013), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448525.9144156626, 7380841.630148654), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443907.906793415, 6916826.340352352), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430373.51763650426, 6819195.964664043), 3067), 4326),
        NULL,
        false,
        'Sysmä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506564.8246969658, 7141645.757754105), 3067), 4326),
        NULL,
        false,
        'Vaala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506573.6438556539, 7141633.897246967), 3067), 4326),
        NULL,
        false,
        'Vaala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273062.2608721708, 6682586.032371527), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288075.66366984346, 6817574.396704986), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536179.7974307617, 6972363.989544731), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247123.07347743903, 6709760.0161437085), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(245933.28537481473, 6708610.864821858), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353386.1840583829, 7129125.540244548), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434830.8010903821, 6903303.892027643), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439900.11023585545, 7379157.919171563), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238746.0357523763, 6786042.18590021), 3067), 4326),
        NULL,
        false,
        'Eura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319421.5515922704, 6829739.628918187), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533842.8114410983, 6974247.570337671), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(595627.8057964606, 6785528.809237403), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(209171.94277157902, 6838067.542105402), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(307504.6145468232, 7024491.95818289), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(349307.0778100417, 7088172.516232088), 3067), 4326),
        NULL,
        false,
        'Kannus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(335614.3885412889, 7050650.529665085), 3067), 4326),
        NULL,
        false,
        'Kaustinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439355.4431995189, 6961885.77140957), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378282.5728776793, 7502405.70070052), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396506.5168917411, 6698933.681861589), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327006.63592583034, 6813650.180286387), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379304.11151266255, 7106756.1426380975), 3067), 4326),
        NULL,
        false,
        'Ylivieska',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(386619.2527065624, 6737716.168301309), 3067), 4326),
        NULL,
        false,
        'Hausjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427700.2798737741, 7199449.471765327), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510546.01974086673, 7433806.330633759), 3067), 4326),
        NULL,
        false,
        'Pelkosenniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387999.4340967431, 7291675.117865537), 3067), 4326),
        NULL,
        false,
        'Kemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326382.39479147515, 6651051.948874731), 3067), 4326),
        NULL,
        false,
        'Inkoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(272944.020730296, 6986562.43031658), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384467.85172334535, 7492282.590250412), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407841.31314990344, 6722960.351974614), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222363.47643432496, 6828318.594623449), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(450628.27047152177, 7188060.377441634), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(452925.73045264604, 7186941.191544932), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453033.5517090734, 7186911.0407567425), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435375.0847316702, 6901335.702865157), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(489817.66559851926, 6756314.100487566), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370996.7167489321, 7302991.2097389465), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488441.213920792, 6736539.883304464), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(540228.0346452331, 6928954.886284253), 3067), 4326),
        NULL,
        false,
        'Leppävirta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364817.7489449047, 6765749.362885325), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364654.0061410278, 6765619.850451317), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364388.69651010976, 6765594.500379037), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362257.6200481418, 6764054.877210827), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361951.91893682466, 6764756.373658527), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362776.0946885572, 6763042.180909602), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361652.6866917094, 6764072.745899128), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488477.9658737942, 6737880.045787445), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359517.4256549221, 6763379.333636418), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408645.0977354551, 6722552.413462165), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363760.5449472505, 6765451.984374151), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642060.9132816793, 6944336.1474573305), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397721.6836732408, 6698334.3585351575), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397344.8235976464, 6698425.3229252), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(490994.299030862, 6728611.726485094), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397346.7451610252, 6698054.648497869), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393030.6650020042, 6699898.359527794), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(651198.2966134439, 7024996.267751469), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390944.1766906448, 6695967.571349258), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(652037.600122593, 7024418.912466546), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396286.99055830465, 6696832.456460405), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396217.39858308097, 6696927.7569863275), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394999.00283286354, 6697138.4440143695), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563404.7150395782, 6771312.943108529), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(490369.85372006573, 6727615.928440528), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564062.9817258434, 6770189.9077254385), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536601.2893178721, 7119287.178013646), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388024.53790040064, 6716175.222057582), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359959.8306786439, 6766615.539259117), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376970.60308025865, 6695241.860455971), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534873.3209234886, 6974152.820804056), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(349830.23386214516, 6939120.97928114), 3067), 4326),
        NULL,
        false,
        'Ähtäri',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645882.9687131462, 6947108.587059209), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286353.5679726153, 6698115.690198534), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443385.89256259875, 7376229.611406938), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288344.101967223, 6699936.64491476), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375678.98474346654, 6696051.84689909), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599528.8509546277, 7320800.562531024), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598856.7034640475, 7320572.214459779), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599530.5472818441, 7320490.531258152), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478959.8650541098, 6745922.639588252), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(417702.6749689842, 6762826.358600028), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477534.03009987593, 6745251.299204), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308123.8301984843, 6670965.38715556), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(641864.1373417758, 6944819.841527586), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483865.2052204387, 6747613.682381925), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532073.7789206724, 6754549.457702089), 3067), 4326),
        NULL,
        false,
        'Luumäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530731.1337126517, 6754277.125088355), 3067), 4326),
        NULL,
        false,
        'Luumäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432753.07751747145, 6902948.41206957), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(369987.6713130877, 6743646.9293686515), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428826.27123822924, 6761299.986158335), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(406344.1032634485, 6860042.813061728), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390956.60171241325, 6707967.603557454), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643093.9216661049, 6943713.19565269), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(467914.3839285316, 7108536.870813266), 3067), 4326),
        NULL,
        false,
        'Pyhäntä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394836.4764943984, 6705357.336652835), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223513.361070774, 6827728.964485725), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477096.87468516827, 6744678.28161711), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477471.3396727761, 6745859.252293323), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432095.8675427804, 6761428.936199924), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287058.7983155084, 6700995.777017549), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287726.0485580968, 6701832.808889564), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433695.738862722, 6762948.732051939), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390012.19754009554, 6698074.703743942), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389824.3564863271, 6697898.516863091), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286725.91001696367, 6702024.376830526), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389950.4118386818, 6698397.924632783), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(316143.06308089243, 6821573.169344233), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371762.8407989715, 7304514.419788789), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426820.6300469715, 6759422.057500692), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390332.8522340842, 6699608.96004824), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233317.01792713048, 6814586.407970841), 3067), 4326),
        NULL,
        false,
        'Nakkila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381516.83709370554, 6734520.481526042), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223824.86846165516, 6826977.478940834), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222036.3859835423, 6826957.574143013), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224202.25907918374, 6826960.255245852), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394930.7405302222, 6695514.309118186), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371123.4978917454, 7303994.3747625705), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371543.16227394517, 7304372.696319898), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371865.92035049316, 7304080.310055699), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(410490.3084218569, 6953968.071122516), 3067), 4326),
        NULL,
        false,
        'Saarijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429304.25481550256, 7199698.455684921), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371256.1617972458, 7304595.107593418), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394821.09709408967, 6695691.595831989), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(369780.6801064218, 7307357.034795), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394824.01996293495, 6695734.5482551), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227081.3608259208, 7008886.8546798965), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227864.70943967515, 7009636.955785135), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394743.4084327573, 6695540.844842757), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432344.9953795531, 7392240.788681213), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287652.00744472677, 7068677.0493204), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423669.0665828028, 6761396.604611898), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394646.60239355377, 6697642.896375683), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422107.36937153194, 6761755.004963915), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394468.6286252337, 6695221.2229282735), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423888.64920773654, 6761268.083719987), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426498.66997082275, 6764291.477985154), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426532.5444277944, 6764258.760938735), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426560.2324077022, 6764126.210566953), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426445.0836535493, 6764299.391233329), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426667.28998326353, 6764110.917167663), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433024.5286294292, 6762354.257570285), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433020.17195741605, 6761754.147372838), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419241.75548471685, 6762002.702167743), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444948.17353228596, 6756724.847425513), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444542.92779625626, 6756161.056474548), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427059.45625231345, 6760777.402833593), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419586.4753155225, 6763226.397848762), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(420255.7346909993, 6762882.494923324), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205627.4984942996, 6791181.870984412), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644425.7892679899, 6941814.752692464), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644186.7643460705, 6942267.578553559), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643489.7716009895, 6941864.768114871), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434130.1343572177, 6899187.503305808), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434319.47806532687, 6899173.460105438), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426278.58004170755, 6760692.414889207), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442997.54533644934, 7375545.28215861), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446986.38532229565, 6727821.674531852), 3067), 4326),
        NULL,
        false,
        'Lapinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391745.58152727684, 6698472.064364241), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300918.2684654552, 6654110.417190174), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432879.6418248501, 6895699.574103413), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644529.87519556, 6945971.981487993), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645763.639437109, 6946408.7672189055), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645705.3123541547, 6946827.310537511), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645892.900652383, 6947486.364712156), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(646458.3816848645, 6947231.742483154), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644922.8959707251, 6946776.191314127), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645293.5255441569, 6946778.587910193), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644480.1639532816, 6946301.956525214), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643844.1287763312, 6946290.543563456), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431810.78863349895, 7369199.321048059), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559519.2873070851, 6769629.981570164), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559497.6896428411, 6769663.835156092), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559601.8933430703, 6769574.193810125), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644711.0432252105, 6946463.551622013), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643695.5909178735, 6944828.397638633), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(548853.9570465469, 6908977.656213199), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378124.387369393, 6745062.206776201), 3067), 4326),
        NULL,
        false,
        'Hausjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427337.72722520895, 6763078.815767991), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427398.9703268906, 6762856.0783262765), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427284.90808012465, 6763045.810126803), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427446.3201328946, 6762885.5232315725), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643634.1144593781, 6953550.129358395), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643834.981015794, 6952972.630914305), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644094.4985977205, 6945420.601345592), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(641905.6150760297, 6943901.346664683), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644352.1570191511, 6945939.097435148), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644400.0982119412, 6946786.678023039), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644223.4998032603, 6946639.977479138), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644714.2352278306, 6946659.387574508), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644687.4949144229, 6946797.0110982945), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645329.4514286201, 6945504.882042464), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645575.3049477405, 6945769.601591124), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425547.0026319803, 6695639.543326122), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645206.0888687101, 6946969.523179285), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371599.6711997067, 7302377.681106803), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645954.4931536701, 6944173.228977921), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645315.4371504848, 6944234.867451405), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644289.0921088621, 6944137.694425167), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391847.17001284065, 6694700.079021135), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395831.0258863917, 6697884.739060774), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397585.36567502294, 6875617.207570516), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394991.6825462367, 6699920.034109774), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288274.6291374659, 6966882.582026819), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288560.08916014974, 6966101.24582483), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645687.2141862237, 6961751.023907687), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        'Vanha Tampereentie 6, Ikaalinen',
        ST_Transform(ST_SetSRID(ST_MakePoint(292182.8795654554, 6854821.840692798), 3067), 4326),
        NULL,
        false,
        'Ikaalinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(416193.532985903, 6696980.233788253), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370425.6762426793, 7302717.9243182605), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(280878.1468904444, 6808213.244551555), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(336930.88353563985, 6682707.838331843), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431268.0369663653, 6740667.917041268), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643584.935959709, 6951440.818532253), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644051.4555866739, 6950909.003992819), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288019.4223905176, 6966206.315229824), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510459.47219252423, 7048995.963747056), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510185.4437839156, 7048739.474833374), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309599.37349386944, 6745038.86341976), 3067), 4326),
        NULL,
        false,
        'Jokioinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309431.63065245416, 6746093.9584985245), 3067), 4326),
        NULL,
        false,
        'Jokioinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396250.22736633767, 6673070.875808253), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396247.41430491355, 6673096.31793257), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396263.77845209255, 6673093.654906794), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643800.1076730205, 6952197.955201455), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644002.3956357249, 6951820.348308031), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(343037.7401363424, 6664178.585048216), 3067), 4326),
        NULL,
        false,
        'Inkoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(571063.1964122526, 6770860.441363247), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(494230.35454752925, 6707089.721121994), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430720.4726724669, 6742934.105543725), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298326.0855431742, 6943128.425973242), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356329.42700207187, 6703666.673341233), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432343.9292146973, 6901219.673699825), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352519.61347104184, 6700169.022186578), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352472.8789724805, 6699940.466740252), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370777.5859668052, 7303079.860432216), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371295.193108879, 7303227.999156388), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333102.3238292156, 6660472.058287114), 3067), 4326),
        NULL,
        false,
        'Inkoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371200.83268839685, 7307648.85499026), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371027.90588143904, 7307981.78840647), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561994.8261866913, 6772052.791024589), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562606.8732923066, 6771743.222455868), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598839.3006424754, 6860900.650731442), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510575.5663077195, 6714910.8578877365), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563717.2431405201, 6769479.325118601), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598340.7133352401, 6861396.906480401), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559924.1278117372, 7113444.992634403), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(594352.81677138, 6863059.803358551), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371923.3335669733, 7306505.758765104), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225718.6138229853, 6821934.230738068), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315035.08811403805, 6819853.845763807), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338733.2310955683, 6682043.9298958685), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(221798.25098813782, 6827490.960508282), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250350.74215293856, 6706563.358760712), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227910.72333397542, 7009208.239450038), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227927.64257734176, 7009257.020729313), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435014.2000867417, 6898858.557606564), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371423.72747196554, 7306662.495759092), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228224.18754683193, 7009963.845319283), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559986.0401475804, 6769316.306238713), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559747.1455325107, 6769334.268638605), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559750.7114208705, 6769416.93843755), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559722.2847711432, 6768961.847117601), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231729.2524606379, 7006365.477870933), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559743.7991049647, 6769495.183574798), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559742.8234287992, 6769513.849072797), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559728.9912269519, 6769495.467203714), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231710.70456048992, 7007179.748291904), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231630.4683316029, 7007240.442280813), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432164.5269429005, 6902077.945116137), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244620.24554404002, 6712039.667547341), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229187.18488415945, 7007087.931725437), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(406512.4157723757, 6750223.668630151), 3067), 4326),
        NULL,
        false,
        'Kärkölä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233810.0276044237, 7004567.321255908), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388007.93454945, 7292169.101445419), 3067), 4326),
        NULL,
        false,
        'Kemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563559.5420293591, 6769852.862232667), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534273.0067259024, 6972556.4975239225), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(519642.44078421977, 7026647.683239214), 3067), 4326),
        NULL,
        false,
        'Lapinlahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381002.0615809827, 6735324.363366961), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377108.7974595956, 6736304.006985826), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377019.8940705758, 6733469.731764627), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565266.6964606293, 6769063.87946747), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565151.6148723749, 6768973.902170491), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565235.7123169041, 6769024.968300768), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565155.4476141462, 6769059.891269787), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565170.4739634647, 6768948.120323976), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565202.8461218004, 6768984.9523272505), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358815.87393507635, 6766001.732660334), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359303.05227726424, 6764070.648863556), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358483.18477900076, 6764141.622476023), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227428.40171342515, 7012642.605964383), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287604.0131936001, 7068952.050088014), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392249.9338035266, 6708996.238827838), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(386851.49214764126, 6696831.611394844), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388109.876039078, 6714341.670161787), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388134.0833777886, 6714286.02063908), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532855.6985948638, 6978958.138805003), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532894.8714312488, 6978944.438772573), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403531.9699376502, 6694566.935913225), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403746.0134266556, 6694347.620182355), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246189.2295843953, 6713148.368956169), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319652.6145504454, 6826828.79321506), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361304.28258678166, 6723466.635516419), 3067), 4326),
        NULL,
        false,
        'Loppi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559476.3513934016, 6768923.432152827), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559446.28322677, 6769028.886863977), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(197964.20981485397, 6739852.936663462), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231802.70746738103, 7007082.288952688), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(206293.178662779, 6788186.477881018), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231186.59314259153, 7007465.927655207), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430607.2545071439, 6742126.601198533), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430777.99473821564, 6741602.889644623), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432192.3297634307, 6741133.266413914), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535974.2719996985, 6975384.303495672), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246943.52246584036, 6714667.5506054815), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246938.51301390704, 6714497.784704814), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535457.390859396, 6973778.186066621), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353045.33585146826, 6700207.204408536), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534881.0769198859, 6972429.15591666), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371982.2538897128, 7302909.540250801), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427232.67608259653, 6696253.857776375), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395374.496492556, 6711442.172353572), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366535.7257785834, 6761133.445319542), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395096.0853998783, 6698335.198918306), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395145.3152498681, 6698369.992637606), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395186.4871223668, 6698861.399379136), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395047.1110475383, 6698298.050895099), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395236.03089550574, 6698880.223688699), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535160.5285119143, 6983676.300582373), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244633.31120007316, 6705613.441239237), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358292.6296159054, 6761856.486299275), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385601.9833336469, 6899639.6714815125), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397913.0960085898, 6696289.987101319), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565166.029028854, 6770651.1286287885), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565127.2233015513, 6770582.41347169), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565127.0422374094, 6770719.729060575), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565090.0218139212, 6770627.159195656), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389896.41795395134, 7300664.272744463), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565186.2706052703, 6770495.770903393), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(365267.52228475834, 6765335.148127798), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560640.267334798, 6769091.181138377), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560603.9054675318, 6769098.64569371), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407653.64161987155, 6686697.185154894), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407493.1300768018, 6686043.483830293), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533561.6006381887, 6973671.598711476), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432412.07343405555, 6763189.002894725), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534368.0624543091, 6976402.486848077), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(473370.5262168863, 6743102.953740925), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533149.7455904466, 6973516.137517192), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532518.1282786815, 6972251.92731968), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533257.0135653007, 6978463.066985238), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533687.0948967127, 6978361.490858665), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432347.426916504, 6895592.0447711805), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432463.6193083938, 6895719.202305336), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534024.0619174798, 6972684.465416552), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359583.4816217421, 6762927.304781332), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359189.9978581378, 6763200.830107249), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(365276.3623477809, 6766525.32059594), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364975.09977673687, 6766329.619642016), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108348.88211247923, 6685331.658578005), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298101.66331527417, 6943351.221349629), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(365118.0429732178, 6767313.896271974), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273180.606590358, 6963706.514991843), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(280013.24991540436, 6966962.432618723), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364076.6668132176, 6765734.689888492), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288169.50490110554, 6968514.035418993), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338622.68434667325, 6783894.4407818075), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338665.49539109186, 6783831.580728135), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389230.28940251854, 6697809.728959466), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337483.36206473573, 6682315.003330437), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430512.46079146897, 6761446.167699287), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(204601.0320720507, 6788852.845053266), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223639.6595616012, 6828270.262203757), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205521.0558715585, 6788729.829343933), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205521.0558715585, 6788729.829343933), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205141.12574134124, 6787999.243041785), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361029.15939448227, 6767054.114151234), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351329.54340699327, 7129198.242955506), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393935.67900732456, 6698733.985285494), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(365526.28294130845, 6767459.479643446), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389183.78667302214, 6697781.421851861), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(207964.8421241771, 6789356.54707309), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(208982.30151447497, 6784688.035890769), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366058.54964377737, 6766826.357852873), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388868.7616972357, 6698290.342063057), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532326.7601624754, 6975356.438224482), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359616.6786517708, 6764130.020866858), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426421.6814679316, 6760023.359976211), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274555.9332523906, 6963795.061181176), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(275074.0408403601, 6962789.337593411), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233349.24631507267, 7007341.87423529), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233012.22646905362, 7007135.789775733), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(204619.52062891173, 6789155.468674152), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203483.38405953124, 6789794.508265903), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484010.4131370793, 6746464.99257101), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390834.1653341532, 6695941.297449537), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394009.8466130178, 6707627.048246074), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(330979.102339388, 6786478.205607156), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(330797.00997217296, 6786559.789489376), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446114.88271213876, 7377245.355914831), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363453.9896737353, 6766487.5712644905), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643751.6049002191, 6949001.747209198), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438638.2845758545, 6900729.267711504), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205978.3129426994, 6792642.190913246), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205313.46283057772, 6790770.216975988), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(204711.53614167226, 6792049.73456346), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485270.3987063661, 6748540.620862859), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(373687.46580051736, 6756147.100997911), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228165.58458959934, 6938508.23997949), 3067), 4326),
        NULL,
        false,
        'Teuva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327342.3257874176, 6944650.428964099), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231706.09344794083, 7007805.24395834), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(218456.72134579375, 6827401.719626656), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(219189.03950475896, 6827490.38883311), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231943.46542659195, 7007649.284775123), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233488.02240864377, 7006824.840021256), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233742.41292901352, 7006406.732016732), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232230.61886819618, 7006290.350708246), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232185.5306883539, 7006038.452259265), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232293.37985814514, 7005938.9703441), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232197.86815642915, 7006002.000803151), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232244.97566724772, 7005963.794020836), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229622.43852949812, 7006683.159664592), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231117.7285874658, 7007102.454632858), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233151.64074529175, 7006135.249314971), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233505.16437330266, 7005741.312988269), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233916.62448565068, 7005390.2645248445), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233898.1937976142, 7005536.051220959), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233862.05883917943, 7005786.800954576), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233873.78751153636, 7005657.7358788885), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233929.22454184902, 7005276.020043695), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233947.49024513626, 7005195.615495451), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233831.18086022083, 7005169.166720908), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233534.2047997454, 7005229.162492842), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233772.45352313906, 7005075.487302687), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233622.20215734432, 7005245.339119735), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233646.80018810806, 7005168.751528902), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233768.9647659914, 7005174.872642515), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233588.9470261712, 7005163.426742704), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233779.09288676607, 7005020.880932796), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233731.8278647322, 7005227.611669501), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233729.41017080474, 7005142.104194076), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233705.73081497973, 7005070.110650748), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233655.34930512006, 7005121.167411698), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233317.97671094263, 7005023.683239519), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233227.83418029398, 7005542.881884434), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232647.38013631053, 7005553.237899582), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232617.13050680672, 7005763.651462536), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232582.69569764525, 7005995.439313169), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232582.08453722092, 7006047.370435859), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229987.5785315845, 7005543.432975116), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351610.7777521994, 7129924.352456656), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(566398.342492854, 6770637.857790853), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(566391.5272809418, 6770531.832605244), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(566105.1604748752, 6770210.708144898), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564938.8537978455, 6770066.196230326), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564960.9303153981, 6770048.035226838), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564960.8660365054, 6770079.730122254), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564940.0106920828, 6770048.733649974), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230402.08699062697, 7005359.065391959), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230378.34627473782, 7005305.0016739), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230305.5899874499, 7005392.876909977), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230362.75787367474, 7004758.552427134), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230291.5079653838, 7004780.021828867), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230471.40590966397, 7004720.243139198), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230435.93683679987, 7004570.227297234), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230387.93236818656, 7005039.023038538), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230283.58702409372, 7005064.5530321505), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230478.83278082174, 7005000.002646117), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230470.0335296611, 7004642.302858746), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286610.3652313425, 7067987.449462444), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337016.45345940423, 6950141.491764107), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564869.0940845936, 6769789.446893568), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228128.45305211816, 7010422.73965097), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263471.5216890611, 6712429.430952156), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426480.3929831713, 6764177.818462956), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231472.61634268897, 7007000.229276663), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231412.38755651528, 7007046.769649314), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231535.8160847173, 7006951.891667459), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231348.74801908157, 7007094.124027661), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231356.98184774857, 7007421.890092943), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231491.29865522013, 7007246.018037783), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231439.192196813, 7007357.840018693), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231464.83715234848, 7007430.686686776), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231508.28298123943, 7007406.604465426), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231379.31905941278, 7007125.748950263), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453859.9468616267, 7187033.144682328), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226918.4865206071, 6819738.905551903), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226605.6507586323, 6820005.682733172), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226537.2094871639, 6820008.103032135), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225906.40987237904, 6821002.187254677), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563381.4516852282, 6769674.493447167), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226882.4421689718, 6821480.943675281), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227160.3308136161, 6821868.808403019), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(216610.12087849778, 6832684.786001675), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(216863.08085506625, 6834097.063346158), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331417.51011439157, 6787542.069473042), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309059.50792292587, 6745006.505743304), 3067), 4326),
        NULL,
        false,
        'Jokioinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561302.6698972159, 6769161.977142816), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325793.31684468355, 6942421.526915209), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561020.1752992067, 6768952.918179923), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561187.8972645825, 6769121.831201487), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370035.3160310999, 7011268.256306568), 3067), 4326),
        NULL,
        false,
        'Perho',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488441.52459172346, 6754823.323418683), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(216292.5583646185, 6832935.350966958), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(216265.1980368803, 6833045.94909731), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108188.64073425796, 6683635.9492482105), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205684.05885109009, 6843273.392939853), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(204857.2057702305, 6844241.792102855), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332912.9810607714, 6906171.16302677), 3067), 4326),
        NULL,
        false,
        'Virrat',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291711.07454666385, 6881777.350121011), 3067), 4326),
        NULL,
        false,
        'Parkano',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394527.99062867276, 6705795.796573644), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559525.3784608638, 6769784.176687363), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559621.8527352295, 6769490.377247076), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(305729.8036555532, 7085117.145643473), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(625268.3697793185, 6812970.785117382), 3067), 4326),
        NULL,
        false,
        'Rautjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559149.459552057, 6769617.5705998065), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225524.12979356124, 6820966.394269971), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229827.4404239357, 7009049.174332963), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229042.50920337663, 7009385.017807241), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228895.6353303819, 7009448.674107095), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228935.98138305018, 7009615.32680561), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228975.17919264684, 7009428.944198662), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228979.32996300288, 7009481.188021893), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229069.97416161152, 7009470.914360844), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229001.98705750593, 7009388.297612522), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(336858.445529982, 6819188.6009552395), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(473456.5223549807, 6907572.373848872), 3067), 4326),
        NULL,
        false,
        'Hankasalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(473003.955720352, 6906731.107153336), 3067), 4326),
        NULL,
        false,
        'Hankasalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(473147.66957681876, 6908004.386606588), 3067), 4326),
        NULL,
        false,
        'Hankasalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(259623.6457751733, 6739717.56365514), 3067), 4326),
        NULL,
        false,
        'Pöytyä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559550.2942507265, 6769286.907692565), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559476.2865800653, 6769165.731181051), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559436.0344780937, 6769251.845834651), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559504.0022454017, 6769140.936734621), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229722.4455318005, 7009713.88663306), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230255.9040265707, 7009413.059971609), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229523.1102403339, 7009542.125539577), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229051.4570669422, 7009865.9939774545), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230095.93406388408, 7009780.492635729), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362254.9647100873, 6671691.804972275), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559969.4433638765, 6768785.313992491), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227790.6525570253, 7008132.064291011), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227779.43174413644, 7007945.827638777), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227767.74530040944, 7007990.492113729), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228105.73859085338, 7007719.077955361), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228827.1199879274, 7008184.845940929), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228632.90534853417, 7008189.440420569), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488140.52952904085, 6754321.8666324075), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479023.87644420704, 6752518.333600007), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479593.316098947, 6752956.248681116), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559442.2538074024, 6769526.268134616), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479231.0189194032, 6751471.584943224), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419867.74003846414, 6762362.790780947), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478035.2320556785, 6751497.345958307), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230735.6331020367, 7008587.136504173), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360192.29813979066, 6763554.913401329), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(476467.4383609684, 6747217.136879772), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481316.92726524937, 6755719.221388631), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560033.7895753334, 6769229.8745459), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(373050.35691613995, 6720618.607147135), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322389.32984864106, 6969538.085441528), 3067), 4326),
        NULL,
        false,
        'Kuortane',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(350821.9243343665, 6803985.442862127), 3067), 4326),
        NULL,
        false,
        'Pälkäne',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(216719.0729701158, 6954813.293209484), 3067), 4326),
        NULL,
        false,
        'Närpiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(216675.06600784548, 6954783.223394097), 3067), 4326),
        NULL,
        false,
        'Närpiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325498.0366877541, 6947476.515938032), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564171.9814188097, 6769837.693353719), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440903.04697561375, 6936491.808143415), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227744.5282796331, 6823643.141477204), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227790.08504164006, 6823009.478716598), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379420.8841215532, 6905439.916914531), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(470584.2213211867, 6709631.479944883), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559204.0505288121, 6768792.328133219), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227257.55628757566, 6823039.339178068), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599557.7785661035, 7320603.010473058), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599455.3330734252, 7320495.06560116), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599216.8506774828, 7320167.590993868), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598425.464621558, 7320358.757860653), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395438.4283482626, 6697783.678297427), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325130.36436795845, 6944332.7537039025), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(490661.5078982421, 6730066.214340241), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599896.4096944621, 7319974.518691304), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598676.7065756073, 7317778.699777995), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599739.48641084, 7320067.838049105), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599833.1932340297, 7320029.857032578), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561135.9580247868, 6768576.666093438), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561242.8267717082, 6768605.956212654), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561106.8037709154, 6768669.126231685), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561284.694254324, 6768738.577688045), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561120.2193469041, 6768645.9996110955), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561355.0988055514, 6768575.94376889), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431642.17740195565, 6743367.625010578), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484293.34712452465, 6746402.752923624), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484507.2665548406, 6748280.308081955), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484484.7351837272, 6748291.521097987), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291698.8068161678, 6970169.238961203), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291272.0026000667, 6970504.788990906), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(597692.7129990538, 7315761.951019367), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290539.1122822406, 6970817.1089919675), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290310.8497408117, 6969976.750881833), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290358.79844962276, 6969949.190127661), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222563.54834984304, 6827390.675833316), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286379.6462041367, 6966816.128706919), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289050.4090030797, 6965624.586640613), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233595.39685812598, 7009911.229558465), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(539725.2689188487, 6928878.06830852), 3067), 4326),
        NULL,
        false,
        'Leppävirta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228140.22779716508, 7006794.895081389), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225677.3562054806, 6827689.900304806), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(275302.5610631971, 6764438.349581004), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287499.2398160037, 6965191.44296389), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224608.782458499, 6825050.97828367), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(275978.08776975155, 6764815.223293303), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321667.94786305557, 6819223.613751811), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321789.647135921, 6819004.243177991), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321817.1696675007, 6818862.243760856), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322235.7411435268, 6819896.118502617), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481434.1336826468, 6749888.205979131), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431193.7820297588, 6741715.882838528), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226267.4796676344, 6714203.446711544), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484232.7619476706, 6747462.475493201), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223158.64970052743, 6829319.392457051), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388829.1767023661, 6696100.160830446), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428332.55506850005, 6758049.240096747), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222455.08661916602, 6830376.865658796), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249256.95611254527, 6647691.329735014), 3067), 4326),
        NULL,
        false,
        'Kemiönsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285633.9240859938, 6968438.1273534), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284802.6384521146, 6968168.194487162), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225814.47645588114, 6823509.835816911), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532466.4017570572, 6966345.484362846), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532554.7379832995, 6967321.606876978), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287938.9113442979, 6964748.228903197), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533752.3636461146, 6967192.38775102), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532080.9705854427, 6966955.493353757), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(494589.1890594594, 6708795.158587418), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(220268.44327558528, 6826787.309569505), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391418.52269813727, 6697522.917388091), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391394.66819219873, 6697512.077903183), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431745.18557164253, 6761522.633140086), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391129.29424387956, 6697294.1254328415), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224749.91109949723, 6829931.545929486), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(623110.8704667481, 7112724.421765567), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288123.4744222901, 6968017.695690205), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(514950.2313279431, 7003055.856878064), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324721.00261953176, 6819053.247030405), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(493520.3771501612, 6702292.924383479), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(308924.4861751052, 7086740.043779637), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203332.94145683464, 6791588.737656422), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(489086.606618239, 6738043.62719999), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287003.69872073265, 6967983.326088848), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287043.77616483223, 6968016.60887149), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225085.50273720792, 6827121.444932935), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(491677.28585023986, 6727458.013711311), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488972.7334729631, 6728061.023591803), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(494218.21061631147, 6711625.754131425), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478897.08633462293, 6751570.540133337), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426865.3445343884, 6760085.434595554), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320729.6298546751, 6837841.162681108), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395390.3476035641, 7128556.8779998245), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479864.20803118654, 6751405.76966995), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486340.1277643997, 6747182.083727622), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358480.0448725051, 6663366.692107793), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389002.3052112687, 6715273.155758148), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435716.15253348893, 6901203.09931037), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477084.4828438553, 6746718.59667759), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477084.372101421, 6746738.602111472), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477372.60218802316, 6746598.386219335), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487581.28361007076, 6735760.365890089), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(405021.63576670736, 6695781.93797606), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(405129.00018447184, 6696204.899669244), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483804.97621036693, 6748426.244490817), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233294.4403961973, 7009281.61195352), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232979.49395465726, 7009496.636420971), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(470407.73741852987, 6731845.227473201), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(470440.0417847734, 6731668.54569613), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(469951.4044009758, 6731814.310562025), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359210.05992880487, 6668430.62464433), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363875.46554858814, 6670977.993729439), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(495840.1755904118, 6749752.927092051), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(495903.53798067477, 6749748.116959449), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359224.97377683496, 6668365.823824325), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359419.72533981013, 6668275.487182583), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488470.5831056008, 6754365.08683079), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480167.25666316197, 6753315.344701481), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357998.10633500136, 6668485.639458717), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(489289.1382509029, 6757093.698729247), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487806.0466057776, 6690315.607976883), 3067), 4326),
        NULL,
        false,
        'Pyhtää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357592.3578950193, 6667793.215165329), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358161.7428427911, 6668820.148371808), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320686.7631983353, 6819732.885516342), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231679.06675530117, 7010887.9261976965), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358358.08441139566, 6668496.707749034), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357446.240531925, 6667700.125972286), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357389.51643077785, 6667670.844039919), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358713.12040814664, 6667829.190409913), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359493.1044870522, 6667508.862120623), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287723.30702566274, 6969103.316707614), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337127.8782750012, 6820624.861452546), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434805.1626976802, 6906716.378206093), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435173.50293883524, 6907189.091717602), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434887.17349932203, 6906648.325198197), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434790.38671216264, 6906727.428795135), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435266.8776064465, 6907187.272611844), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437300.7859800838, 6901701.573563887), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263428.3989968731, 6711585.521270025), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532292.9596231492, 6971339.479684623), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533434.3673667739, 6974744.80672594), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486061.1089969412, 6705641.158660507), 3067), 4326),
        NULL,
        false,
        'Pyhtää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320711.7477374274, 6818516.682725106), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324132.02466745063, 6819946.380944337), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599257.1699714486, 7318359.478745048), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599271.922178035, 7318312.526627304), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478845.1880921304, 6745339.036551691), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479005.9475660492, 6745528.309861219), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477354.91759352374, 6745815.449816942), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477995.3185156507, 6755423.700641413), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321861.1899386032, 6819031.36166521), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321921.2483673412, 6818987.947505448), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321842.3141338496, 6818943.857474179), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321874.3317554643, 6818918.841530802), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485228.8786337457, 6746498.901408694), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484479.7160690873, 6746005.052751347), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483131.61640239664, 6748512.291203671), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323558.1172166522, 6819903.174046879), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287778.33929359424, 6966823.327943647), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480533.9716935342, 6752801.292837209), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290108.0309521225, 6965856.916593108), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484562.52142954856, 6748369.225293015), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320412.2661316271, 6831199.545179518), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484029.644555539, 6748406.456334342), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482799.65060237027, 6748366.14098149), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484241.2771794002, 6747273.050358431), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485017.5305054417, 6748976.416515974), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485133.32280943805, 6748988.756436924), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487873.89281056775, 6753937.843832852), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226126.86116301751, 6826846.255887868), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370666.0003684593, 6744902.443528086), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287491.54363896593, 6968741.362605189), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226345.42259676126, 6827669.045118939), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419842.29788400384, 6707520.11292391), 3067), 4326),
        NULL,
        false,
        'Askola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442771.7948692466, 6759770.404915471), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222793.42399125293, 6830371.887426438), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289323.5203017946, 6966755.185245249), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290552.9217490475, 6965646.36218228), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290572.99120450043, 6965693.29923092), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223176.36996576475, 6830723.178586807), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286001.2765156215, 6969367.718164371), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292623.290052873, 6973636.534530406), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292653.8605358778, 6973621.893133014), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292929.01084910764, 6974018.182720687), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(591656.2110669466, 6785378.040194875), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422800.89135572076, 6694276.452357934), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391750.22307174635, 6698700.096127147), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(620645.3372582983, 6948573.78933073), 3067), 4326),
        NULL,
        false,
        'Liperi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322480.4222399254, 6818496.680644807), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322600.9045295291, 6818370.707346058), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322379.9128695822, 6818486.442377649), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322353.4177721049, 6818577.093362043), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314714.8768189952, 6831686.281587535), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315089.3871370903, 6832001.46082048), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232104.01194284283, 7008288.890012162), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274585.8827127204, 6962723.5653270865), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231867.6111983532, 7008563.769916921), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232115.3341215678, 7008370.231647919), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232143.32785873752, 7008343.502643825), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232059.5072749549, 7008250.900711362), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441557.66946650663, 7374673.993159463), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231492.9987441114, 7010314.240381684), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232397.1761465556, 7009907.506479102), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320445.6915647205, 6819348.399527341), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378215.62315176794, 6736855.6751345275), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487068.8493501906, 6752280.911591428), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(215997.12635917595, 7036716.742421123), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(272933.5791349937, 6964397.0406521335), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(603543.533737303, 6790953.305558624), 3067), 4326),
        NULL,
        false,
        'Ruokolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289037.24643817876, 6965590.1721652085), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229206.6925311686, 6821329.223306262), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228524.2871703203, 6821985.032812313), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428178.37777847575, 7198928.906124877), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427409.0851787721, 7200014.7115628775), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(566488.5610468443, 6837956.89852884), 3067), 4326),
        NULL,
        false,
        'Puumala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(217716.22444921092, 6683841.872137162), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(217985.97678510574, 6683664.794626341), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227755.33161257685, 6821579.145998644), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228184.4595428533, 6821669.499352721), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227889.63814930228, 6821889.641554954), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432135.03769643407, 6760128.201521607), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509122.9427429892, 6908511.662658039), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434037.2943114937, 6899727.320002063), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291578.4462636923, 6968647.030217105), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432320.13939622673, 6760711.995327626), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482882.8161466931, 6748009.330478968), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289117.3655301241, 6965107.572335783), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439613.50363169, 6910603.243529075), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485685.3256053975, 6749145.402399068), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339889.2383159398, 6818738.749808822), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377307.38133842207, 6733333.106434021), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292328.59911630204, 6974062.724516252), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291657.36529643746, 6973597.036674211), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291665.39766210015, 6973550.517862431), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(342277.73697650654, 6817223.693860938), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534100.1846127717, 6992435.147369038), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407752.3554188055, 6722586.786216717), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381726.38678778283, 6672466.952713604), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381716.92044408066, 6672551.4451376125), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(217656.5966623825, 6827647.625052642), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(302928.9669988128, 6761632.051066033), 3067), 4326),
        NULL,
        false,
        'Humppila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432355.5410441426, 6895917.919116704), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(280115.9002188946, 6966498.024558091), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561045.7317862501, 7114348.278532142), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(462983.2648897875, 6944255.628188037), 3067), 4326),
        NULL,
        false,
        'Konnevesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(463012.6611120347, 6944266.762395281), 3067), 4326),
        NULL,
        false,
        'Konnevesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561522.3342466654, 7114890.082162007), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(411244.2950507486, 6705462.76992413), 3067), 4326),
        NULL,
        false,
        'Pornainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561370.9437374505, 7115394.199795984), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407304.1734746756, 6722291.2515088525), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(537050.4997378639, 7120793.170276591), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536618.6060018148, 7120073.448856218), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(600579.0932418547, 6859969.867643228), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289347.41845961177, 6967519.997616469), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107361.26397202878, 6684993.290945641), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226454.037859082, 6820356.992840471), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506378.22585603123, 6745819.449525658), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(512974.17938116635, 6837980.719382718), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(449319.8508673921, 6736570.263640457), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443685.4593535068, 7376746.693535399), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(344148.5146980397, 6817685.339819408), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291909.018546293, 6969729.726412835), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435819.10570506455, 6898314.154724988), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358514.3421954163, 6684498.051327229), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391833.1099848981, 6698062.936205222), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391985.6400481502, 6698273.08343868), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391794.82741231343, 6697973.262651174), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281172.2298996829, 6962644.75323781), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345822.22258668713, 6816941.943440387), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488895.3896799391, 6755669.496503613), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487843.8324036716, 6754002.421473035), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487011.61081391125, 6753531.576093885), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241133.99214942334, 6734999.828068346), 3067), 4326),
        NULL,
        false,
        'Nousiainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315523.8671300513, 6831451.570726354), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333576.20987879916, 6788084.776698194), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251685.68035963856, 6706920.2890481055), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(491469.8748109053, 6747658.258257939), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488370.2676424888, 6737585.760961564), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(491535.4864108067, 6728450.322618846), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357436.6819688819, 6669332.387219356), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357428.79357402865, 6669289.87560602), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(279786.1384724341, 6712532.252406661), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282723.0667480793, 6707248.858450064), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238032.90910107445, 6784922.125677975), 3067), 4326),
        NULL,
        false,
        'Eura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(272778.57763266546, 6964932.154735778), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290469.39206627465, 6966452.613262395), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227443.68806639637, 6715729.0876157805), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227450.6167679973, 6715717.367794238), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227467.11502222618, 6715552.057628303), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227440.61816530392, 6715554.872152974), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(436597.9843132205, 6758047.698759872), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319350.0547801556, 6825782.1862461995), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390210.0638398154, 6699242.579977384), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390112.5712277441, 6699178.763937763), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230312.6610718367, 7004922.405122276), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(592658.5845508719, 6787696.742507458), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290311.28272010206, 6702859.679906128), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324605.7545818188, 6820432.211468942), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324694.79948019976, 6820428.565530135), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324783.5718130781, 6820433.063466265), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324873.5181979728, 6820212.8914419655), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426956.0861408589, 6761542.632001815), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364431.1698572398, 7074324.4337174455), 3067), 4326),
        NULL,
        false,
        'Toholampi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422866.1792882732, 6760576.294819736), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423817.8946064812, 6764398.534972777), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423556.0442374226, 6765355.944431443), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423556.0442374226, 6765355.944431443), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423281.403913058, 6764549.617961932), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327091.0560079433, 6814270.817926523), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(267502.5148634871, 6960020.223801969), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(342143.6609797344, 6816893.010860824), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323723.0197579995, 6819163.198004915), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477518.33256835036, 6756870.149363333), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289804.2297485849, 6702233.194475757), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(386368.92113054707, 6698143.936083966), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274177.6984070539, 6963020.414872701), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(502367.8654876823, 6756965.71365897), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(490337.9213960184, 6728119.196687924), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319145.50373608345, 6827339.552404072), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(212766.83707403083, 6814995.943260888), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400189.65013811924, 7089961.7098388495), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(505968.1415452405, 6944055.246623809), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(505102.7718372345, 6943752.831772836), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506658.6122529559, 6943488.725091258), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394591.48120685754, 6699641.791748928), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395579.5929258773, 6699418.901157749), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(369955.9478068367, 6879720.163977588), 3067), 4326),
        NULL,
        false,
        'Mänttä-Vilppula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225890.84146137256, 6831021.702832013), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223959.35256615654, 6826117.896082544), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284381.6067425117, 6977943.069576691), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385039.88584595185, 7492693.641102193), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385008.0913989423, 7492287.458062886), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284060.505807908, 6978346.977029957), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488394.2016156526, 6737003.054702959), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(507320.65014115494, 6944063.209941779), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(504993.3260010323, 6943536.994611324), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487316.66539822565, 6750155.596669263), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321901.3982884234, 6819110.844971736), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390037.33994957525, 6699497.274980317), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390562.2430663301, 6699144.2147977315), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434484.5883754364, 6892490.642020781), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(567870.173731241, 6771467.323189992), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(451017.0822875318, 7188601.377634741), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(555978.5897269114, 7271341.259482842), 3067), 4326),
        NULL,
        false,
        'Taivalkoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288712.8879738516, 6964391.056095461), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288384.63356027834, 6964433.748783357), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(507228.70049249736, 6943298.001352759), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408381.2749000329, 6671703.087971631), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(373756.4715008061, 6755992.933141144), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424442.66480120324, 6762124.163754318), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372811.8938966017, 6755887.089025308), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372994.01250624866, 6756987.089328264), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(373194.20674416696, 6755271.106505183), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(374551.23086750356, 6755415.040494373), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(374292.4732332175, 6755574.963848447), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534088.6509802502, 6966575.602349493), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484773.29297205526, 6746721.450622955), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367420.90170256054, 6761691.187598046), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485289.6173690663, 6749041.3190283505), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338855.3018323379, 7044652.225878455), 3067), 4326),
        NULL,
        false,
        'Veteli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338638.6114514994, 7044635.212318554), 3067), 4326),
        NULL,
        false,
        'Veteli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394889.62260447134, 6695427.977037724), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485132.1461628896, 6749064.550803944), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(495110.21112559055, 6750935.842171693), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250272.69482257703, 6722672.828651383), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250629.71292780098, 6722872.121306487), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203041.4758008883, 6786333.982481516), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(348649.087194705, 7089246.555739648), 3067), 4326),
        NULL,
        false,
        'Kannus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262947.8106532167, 6697282.128786332), 3067), 4326),
        NULL,
        false,
        'Sauvo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488431.48147598514, 6735795.982867313), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(204034.04753890104, 6789720.091665166), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375869.0037557341, 6698045.717463388), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376411.1825634126, 6697866.164274057), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375354.93651496427, 6698023.866990863), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287407.42051835667, 6964181.484900624), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395446.5891552035, 6711061.645953277), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370318.8896864374, 7012292.476977867), 3067), 4326),
        NULL,
        false,
        'Perho',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381341.6292656322, 6746032.570920479), 3067), 4326),
        NULL,
        false,
        'Hausjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387955.7765518739, 6715036.863821779), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643951.0790748934, 6953313.145728097), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387590.11344514834, 7300251.4790793685), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387609.881932138, 7300092.590755196), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387736.4434464, 7300547.585952784), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407409.8590522321, 6686119.469586376), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442413.0231351905, 7378144.008846935), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443121.52532387536, 7377106.4782044375), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442775.33924691513, 7374317.965187378), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(202430.80711966928, 6792045.83390528), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(459105.79169467784, 7371070.965189613), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230606.66535832555, 7010559.366942083), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396249.70305480866, 6704453.207122128), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360836.15306559333, 7385068.128827569), 3067), 4326),
        NULL,
        false,
        'Pello',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478640.98023698875, 6756613.5334502775), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312334.55232007743, 6817405.364083509), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310478.4967274156, 6814749.4187939465), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313443.55373806437, 6818647.346939016), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313711.4217772718, 6818356.331688824), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480039.27862784226, 6756270.917003857), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(221379.17154036267, 6704063.079804499), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(220954.34668738735, 6704204.581669096), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(216719.59359302165, 6955007.120663935), 3067), 4326),
        NULL,
        false,
        'Närpiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(659518.2960822091, 6966245.999854342), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(495796.39819609374, 6704297.174137773), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(495953.0265817619, 6703822.62807667), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249759.2682018638, 6715185.372066008), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205521.47866389737, 6791863.929035204), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205521.47866389737, 6791863.929035204), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312988.1503901718, 6818773.120365192), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(208914.85813948055, 6764908.0780258), 3067), 4326),
        NULL,
        false,
        'Laitila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284196.2634787971, 6968615.918419475), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485201.82826207014, 6749010.871740471), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291791.04364680784, 6973131.973614636), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371172.73032047576, 6743871.423165017), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428818.07155955373, 6693319.668048615), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361228.3782465548, 6765456.031785876), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(489697.603631034, 6729134.470501461), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480348.8917130433, 6752533.483059181), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(470428.34773130936, 6731806.124205773), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(470478.77701042464, 6731790.746132436), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379199.5459887293, 7172489.346708539), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(596588.4042241687, 6786679.716229309), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229141.83889322123, 7006910.363623127), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432774.07638833945, 6907863.634207181), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485540.29606226133, 6748845.689076116), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252819.424013664, 6707252.775680739), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536212.5342539075, 6986157.011264971), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532842.5528697957, 6970638.287533883), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441367.4153553133, 6902579.869490948), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435028.29261283256, 6906883.589865642), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433229.064792449, 6905022.684981271), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534793.5694518542, 6974610.618906174), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433193.4065559495, 6907088.747522496), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383593.8065259892, 7176444.65123808), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(640140.6188863707, 6839707.384209132), 3067), 4326),
        NULL,
        false,
        'Parikkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364414.7415722941, 6712674.724799784), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429828.86003934406, 6796919.392834445), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(267537.0096580606, 6687931.217742912), 3067), 4326),
        NULL,
        false,
        'Sauvo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341745.14608519233, 6999518.210655584), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203351.20400094864, 6787130.291773477), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531974.0286015272, 6967820.448494622), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532024.4537028868, 6967796.228435284), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531683.09812853, 6967333.390409087), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532425.2763366507, 6967493.025884575), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323562.9180818792, 6745748.165566687), 3067), 4326),
        NULL,
        false,
        'Tammela',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437134.25872210896, 6726493.2979643475), 3067), 4326),
        NULL,
        false,
        'Myrskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437400.34826374316, 6726799.865003724), 3067), 4326),
        NULL,
        false,
        'Myrskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448556.7521539188, 6735417.369920681), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(449292.37646648736, 6736517.298382006), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(496632.7265995879, 6708941.279624158), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(496375.45051294693, 6709223.223958266), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(496161.2633667882, 6709035.400947489), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(496611.14535669, 6708193.706491011), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(494813.0903455819, 6708200.4454331), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446624.2386447644, 6701682.179911789), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444633.8771094701, 6695302.97776908), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(595781.9228571019, 7330958.048207795), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(204399.59864668053, 6780182.591691036), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300533.24059399305, 7002614.342143199), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532465.7348212515, 6967637.372285771), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(458189.60629229504, 6727577.876645841), 3067), 4326),
        NULL,
        false,
        'Lapinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(347676.86660453415, 6696040.598448341), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(458574.2677426683, 6716482.452595402), 3067), 4326),
        NULL,
        false,
        'Lapinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440614.9103165728, 6739147.3358381055), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229244.70588940868, 6772633.007390608), 3067), 4326),
        NULL,
        false,
        'Eura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327314.84897962224, 6811224.261007912), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(245467.77919327232, 6704437.481161138), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223258.5062666416, 6828818.402196408), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250768.05751942223, 6799883.827674587), 3067), 4326),
        NULL,
        false,
        'Kokemäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441919.2403299021, 6904712.089493157), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226949.3004395314, 6716685.201355065), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226859.30469197096, 6716982.366599886), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352937.3275427785, 6700865.360338387), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255170.8894994467, 7668785.196149147), 3067), 4326),
        NULL,
        false,
        'Enontekiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345984.7478722656, 6669989.111740555), 3067), 4326),
        NULL,
        false,
        'Siuntio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262336.0854852982, 6994062.173417513), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482194.54742968973, 7476434.111312602), 3067), 4326),
        NULL,
        false,
        'Sodankylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285758.49133382, 6968916.617981475), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(522055.6718096889, 7443859.619075789), 3067), 4326),
        NULL,
        false,
        'Pelkosenniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(522184.68204866577, 7443849.193177419), 3067), 4326),
        NULL,
        false,
        'Pelkosenniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(519149.86752559134, 7398654.533318704), 3067), 4326),
        NULL,
        false,
        'Kemijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(517632.75324859703, 7400380.940038688), 3067), 4326),
        NULL,
        false,
        'Kemijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(518834.6850556833, 7398110.535924766), 3067), 4326),
        NULL,
        false,
        'Kemijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(245280.26302479077, 6704779.829579047), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(369358.7828759578, 7451416.556328486), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(496340.0748520705, 7448855.996983698), 3067), 4326),
        NULL,
        false,
        'Sodankylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(340767.93130458903, 6818996.549166514), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(340340.08246262826, 6818706.995673124), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(268192.4936393982, 6958115.832984056), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370930.7834631739, 6707885.2581293555), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379845.3716524629, 6704916.916562156), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484812.4725165493, 6746829.026693851), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484647.29155891255, 6746672.622152566), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356613.32565723796, 6668091.596537986), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356479.9836156274, 6668169.040241469), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483164.01201633277, 6747523.87655585), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(592999.4653155957, 6786287.419750684), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359572.49103229016, 6668261.448506145), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(595230.0595827487, 6783125.020393474), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(412433.878326087, 7504995.462925879), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351825.6004291162, 6691752.75740556), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323034.21804065607, 6819746.653897327), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351837.0764031868, 6691384.916437087), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(489301.5214592816, 6757448.983884837), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352311.5877277103, 6692149.615976981), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286772.5264958963, 6965746.563496154), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351603.2584435874, 6691589.016846852), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(488667.52602183406, 6735571.415414394), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362169.10056810174, 7472129.018910868), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362195.5663321341, 7471671.97812942), 3067), 4326),
        NULL,
        false,
        'Kolari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440823.07839901524, 6937850.858480569), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428680.6756184143, 7421542.914762292), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367404.16970249574, 7410356.681118671), 3067), 4326),
        NULL,
        false,
        'Pello',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(406760.7892971414, 6684682.356313159), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231258.87663094423, 6715965.840121401), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288022.810292455, 6965402.337774043), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381377.26522003126, 6672280.428820838), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(499959.87117832794, 7643902.420164767), 3067), 4326),
        NULL,
        false,
        'Inari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(350800.84153341805, 7359361.618734415), 3067), 4326),
        NULL,
        false,
        'Ylitornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(511431.61086827354, 6714255.150618814), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(456900.5554680399, 6897290.1360709155), 3067), 4326),
        NULL,
        false,
        'Toivakka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324876.6744021381, 6819766.721921245), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(500539.41765964444, 7754160.7221864415), 3067), 4326),
        NULL,
        false,
        'Utsjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(500542.12033083214, 7753949.62929333), 3067), 4326),
        NULL,
        false,
        'Utsjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563455.8437735008, 6770264.977431688), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563485.2279366237, 6770268.47987093), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563834.628968847, 6770004.118905522), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559567.233694769, 6768023.063738442), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361693.2405532312, 7589513.137397435), 3067), 4326),
        NULL,
        false,
        'Enontekiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645912.8156381245, 6937926.353594763), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645738.1584135067, 6937402.208967193), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224340.6761218843, 6829738.26944791), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225106.739396681, 6825467.017468389), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364980.54184353905, 6712415.97402343), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(365015.3795188651, 6712334.434613294), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356818.54006724845, 6695554.754328391), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356741.1056777579, 6695517.476397712), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291501.18712189025, 6971487.844207132), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429875.5985251284, 7193951.152805809), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332926.61830520135, 6660136.082831025), 3067), 4326),
        NULL,
        false,
        'Inkoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446830.30693425273, 6775790.145306421), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407413.49414463306, 6686118.828324624), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407500.941822232, 6686145.199745444), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387007.8245925831, 7300503.687963654), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383032.49180461373, 6723634.823004177), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(620276.8635067785, 7113641.010330169), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(619978.0472411419, 7114220.293781091), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(622928.4549130059, 7114163.819033944), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227548.32579634723, 6821618.3601845205), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360741.35803543235, 6673460.203527757), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360739.3526469329, 6673475.167207616), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312027.9443263796, 6820860.595798738), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228000.74526877573, 6821232.400999457), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383016.7821924566, 6723852.966231819), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(545741.1363822855, 7382721.317260115), 3067), 4326),
        NULL,
        false,
        'Kemijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231307.15099476135, 7007715.601537036), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(595849.1254641125, 7340230.550376005), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598126.6613803747, 7317209.789050501), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431717.36860140675, 6741660.628331682), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429213.9562799234, 6741027.520859994), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(475514.532917191, 7313804.082497314), 3067), 4326),
        NULL,
        false,
        'Ranua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(667427.9849083314, 6933315.153410434), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(700699.3377689661, 6954573.0954055395), 3067), 4326),
        NULL,
        false,
        'Ilomantsi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(701149.7999418493, 6955138.324074486), 3067), 4326),
        NULL,
        false,
        'Ilomantsi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391722.9953726182, 6698594.592888897), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391242.5609703087, 6698234.763695554), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392282.1374659885, 6698192.50934565), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391738.6935048467, 6698662.3977293195), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228909.41539065616, 6822061.0829858), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226277.8275506516, 7013005.436753778), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385490.5248441295, 7298609.535640461), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(641151.9449585314, 6944949.7798093585), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(386152.49325416633, 7298562.612665716), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(386059.7217040704, 7298912.330942673), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385840.7459269565, 7298531.806543167), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(471507.57593651355, 6768794.206387186), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362873.58491635654, 6763205.838084978), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391983.03009913955, 6718867.298552747), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240057.1214255934, 6807525.845958929), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388150.9735376573, 6714050.097712129), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228895.51586447196, 7006694.249372164), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359908.34866047895, 6667886.433277972), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322897.63831720594, 6818567.835299369), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(257607.95411309198, 6861204.653695013), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(257060.6056830942, 6860511.060003124), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378225.13619046274, 6695182.995705679), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(567961.7654210948, 6882564.297423761), 3067), 4326),
        NULL,
        false,
        'Rantasalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360075.81058573344, 6842038.670175702), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388607.43205217895, 6713648.359080128), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388654.7347175373, 6713590.760819376), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388683.88060694543, 6713685.244821895), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388689.6320348495, 6713703.432906171), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360702.4511912199, 6840750.905278747), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341253.6206384183, 6793170.51718631), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(342053.785170988, 6794490.461912484), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(469858.0611722979, 6731535.35746224), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408107.8317626881, 6722141.222356637), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(409123.0149908013, 6723823.269063642), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        'Jyskäntie 3, Jyväskylä',
        ST_Transform(ST_SetSRID(ST_MakePoint(439018.87197043956, 6902096.941672643), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388188.4592767775, 6973734.627640873), 3067), 4326),
        NULL,
        false,
        'Karstula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(243301.5137274394, 6706307.535507408), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453888.12122635596, 6864623.447453535), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535161.908140565, 6977759.552969991), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360364.7647938277, 6841309.819292385), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564454.6166951366, 6769328.1680686455), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359428.1100044967, 6840524.190969937), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360122.6625016836, 6840881.193993112), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359965.2216538996, 6840847.686023223), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394891.449751916, 6695396.6562345065), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437711.3702785624, 6900127.791695798), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506597.6344495982, 6907119.073940421), 3067), 4326),
        NULL,
        false,
        'Pieksämäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376860.5083659988, 6736964.855896041), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(493532.52595450135, 6808981.287591416), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492082.44539082923, 6810213.702151792), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378170.37470815, 6737068.322148774), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351976.4068078655, 6700926.566732489), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353261.8110929163, 6693569.936208826), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(542152.9605418256, 6716296.585851238), 3067), 4326),
        NULL,
        false,
        'Virolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510014.2511960557, 6713803.264416121), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(513869.24136718694, 6710046.86301251), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203320.9898722105, 6790452.588321616), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203343.65904303335, 6790348.373302397), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(204054.31557608116, 6787309.110446354), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(202938.38366536156, 6789082.94284108), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203486.2447274104, 6789199.203338506), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(204645.82287262133, 6790730.52570642), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203275.8236859102, 6790396.274649112), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395925.8292090516, 6697539.399518731), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395888.2648360701, 6697552.472170356), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437255.7403085364, 6899737.14415243), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536287.5545525062, 6785368.818425234), 3067), 4326),
        NULL,
        false,
        'Savitaipale',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536765.8311045085, 6785231.623495993), 3067), 4326),
        NULL,
        false,
        'Savitaipale',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(537418.7805160028, 6784787.5345303165), 3067), 4326),
        NULL,
        false,
        'Savitaipale',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107459.97952617236, 6681633.335848827), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360561.0098562003, 6840661.753389547), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360536.71212179883, 6840713.30582138), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287936.7847649327, 6966329.850576066), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108080.19832270537, 6681071.537193415), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438052.64133609564, 6905317.330767297), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(210326.3452810282, 6839121.768323948), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395475.38609061314, 6712640.504858557), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396500.5932748003, 6712149.007729112), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108675.19212064684, 6681484.747010858), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108757.20958684894, 6681126.350993008), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108739.1444646257, 6680715.102636416), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107229.24378612667, 6686030.548524693), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107657.47568795494, 6686174.658428683), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107904.87682389039, 6686995.875843655), 3067), 4326),
        NULL,
        false,
        'Jomala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423974.2274191819, 7241394.352969096), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362474.725236574, 6695624.479721), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377849.48899600934, 6735329.367604599), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(617554.6902821502, 6858534.55788593), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394999.4462623806, 6695747.190079916), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448481.0227270702, 6787370.208687728), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448458.99827948894, 6787400.412038963), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319391.25465726916, 6830480.4601911), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(450839.38372771017, 7187915.661665251), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(451764.87044689636, 7187243.776210316), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(601779.9200630722, 7315623.652153485), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286712.41842385713, 6751938.883485536), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(663720.2248119112, 6888184.563512719), 3067), 4326),
        NULL,
        false,
        'Kitee',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444053.53320808854, 6901245.420756759), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225768.7621667765, 6821306.488861487), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(354525.3702863198, 6937672.488569745), 3067), 4326),
        NULL,
        false,
        'Ähtäri',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(256230.32938765181, 6859892.654473341), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(257181.12310667985, 6861218.990472955), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599783.2894872518, 7318799.37915863), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(410539.263891283, 6705975.960950699), 3067), 4326),
        NULL,
        false,
        'Pornainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(411118.8795091232, 6704929.101079359), 3067), 4326),
        NULL,
        false,
        'Pornainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(461693.4538889059, 6704558.149222169), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(523198.1997956744, 7616651.139803372), 3067), 4326),
        NULL,
        false,
        'Inari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429489.1611359493, 7027246.730760578), 3067), 4326),
        NULL,
        false,
        'Pihtipudas',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231628.7215457598, 6729771.067995717), 3067), 4326),
        NULL,
        false,
        'Nousiainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232025.42722221575, 6729921.794667226), 3067), 4326),
        NULL,
        false,
        'Nousiainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230758.2090531859, 6729167.362800288), 3067), 4326),
        NULL,
        false,
        'Nousiainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231086.85427565424, 6729653.014107952), 3067), 4326),
        NULL,
        false,
        'Nousiainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230305.29212683754, 6729517.06992735), 3067), 4326),
        NULL,
        false,
        'Nousiainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(454034.025532961, 6772467.777764955), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231160.8176709085, 6728429.547485726), 3067), 4326),
        NULL,
        false,
        'Nousiainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394730.6137969475, 6695824.839165055), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394969.18819294486, 6695083.950184243), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394979.3556697687, 6695119.780824144), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394986.22762481467, 6695158.322144486), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395125.06065240904, 6696542.677188888), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394900.1927101747, 6696823.842241152), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247998.51403705415, 6760097.085979166), 3067), 4326),
        NULL,
        false,
        'Pöytyä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394935.4188466279, 6696585.294370059), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394952.2828791394, 6696554.359786109), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484041.7179263801, 6748252.042256491), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226656.98146568946, 6826968.9831227595), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226647.26735495226, 6826965.736644773), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226652.4580042193, 6826961.476968175), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226652.11611622595, 6826977.572756104), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        'Männiköntie 2-4, Laukaa',
        ST_Transform(ST_SetSRID(ST_MakePoint(458907.83401057095, 6903806.848842314), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(458205.93494526815, 6903694.295516698), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337353.84075323585, 6683035.16329498), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355968.620370956, 6778556.744462718), 3067), 4326),
        NULL,
        false,
        'Hattula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428951.9475898289, 7200234.04410588), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(346603.5616757237, 6877061.0727671925), 3067), 4326),
        NULL,
        false,
        'Ruovesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313146.8793286682, 6822125.546372732), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226880.35710951354, 6715172.340955524), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107607.86007358273, 6682014.2464277195), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642177.4969249337, 6944009.786498373), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429788.92932276765, 6890959.584882401), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446678.68632303365, 6754876.623579755), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444890.1977857149, 6755790.643919906), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299879.0989605552, 6655215.432859468), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299879.94259870145, 6655258.329634866), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441212.3389538349, 6757382.5126562845), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(511421.53246311046, 6714222.149900629), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483926.2201206406, 6748291.026561033), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(248754.84551184214, 6715340.999854306), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(258517.56446182643, 6731814.449899916), 3067), 4326),
        NULL,
        false,
        'Aura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226763.72102052675, 7012899.833824186), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359025.13752108207, 6771962.169394408), 3067), 4326),
        NULL,
        false,
        'Hattula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301721.4020450499, 6653764.913942424), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235132.99311882074, 6714527.171228716), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235148.25396094256, 6714557.844965481), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234605.47120822483, 6713607.247904865), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439085.1956093954, 7095262.939945535), 3067), 4326),
        NULL,
        false,
        'Kärsämäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446560.2636110939, 7065787.398682266), 3067), 4326),
        NULL,
        false,
        'Pyhäjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300834.62944365165, 6655876.147793449), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235863.70429611806, 6714601.678825894), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(354096.85692154476, 6803667.1968925325), 3067), 4326),
        NULL,
        false,
        'Pälkäne',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235898.3666620202, 6714600.593234317), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433611.0404186731, 6905144.438227305), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397408.8869920862, 6688549.675380795), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532516.8238453699, 6968928.524121212), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337335.19694767403, 6682964.749569838), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(268550.34536213323, 6897227.11245269), 3067), 4326),
        NULL,
        false,
        'Karvia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532444.4522538497, 6969501.702438025), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(470030.754483784, 6978221.442315543), 3067), 4326),
        NULL,
        false,
        'Vesanto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384729.90756704204, 6722515.083247361), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435817.860117803, 7183368.625237921), 3067), 4326),
        NULL,
        false,
        'Tyrnävä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533082.6828190692, 6969432.434984409), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228321.69389481898, 6715738.077268166), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227756.28708838072, 6714548.587750241), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(110530.0287916716, 6684154.451147166), 3067), 4326),
        NULL,
        false,
        'Jomala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353384.98010583466, 6694024.720579035), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353412.23348474316, 6694094.181294967), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(248368.58558462522, 6800534.681347972), 3067), 4326),
        NULL,
        false,
        'Kokemäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(125868.11012860404, 6684150.013262078), 3067), 4326),
        NULL,
        false,
        'Lumparland',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535902.77758138, 6969166.485547226), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533930.0132099808, 6973471.000178507), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531845.579731955, 6969943.716789477), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352251.10544599005, 6692000.829927844), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352092.86114493676, 6691050.087031185), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250474.93607758853, 6800303.260269613), 3067), 4326),
        NULL,
        false,
        'Kokemäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453544.8114103996, 7187614.84898915), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(452948.8223313014, 7187152.541322395), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532671.226990068, 6968707.394225887), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533615.7098409438, 6974101.3268771265), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533536.0460777936, 6974099.630996446), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533440.5791931929, 6974107.814029818), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(451594.52391054615, 7186841.3442845), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(242247.89004283142, 6706155.856598146), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(242284.31903176906, 6706139.384312802), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(116757.4761864233, 6678900.820425543), 3067), 4326),
        NULL,
        false,
        'Lemland',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234695.58984838417, 6715606.465027522), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(577930.8611405041, 6777162.555829336), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(451985.5716990486, 7187808.649448023), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(451172.2957684811, 7187778.315618522), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(242298.0758997562, 6706208.0999127515), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(242152.78509042275, 6706374.85810674), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(454146.9693792144, 7187919.938282374), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644926.2502068476, 6940241.325883774), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108011.8025106823, 6681330.828618838), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(110119.24073353352, 6685006.244772662), 3067), 4326),
        NULL,
        false,
        'Jomala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361371.0860756622, 6733539.24322468), 3067), 4326),
        NULL,
        false,
        'Loppi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643091.7004604777, 6943535.423077113), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361735.4048767319, 6733533.307918434), 3067), 4326),
        NULL,
        false,
        'Loppi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643501.201141847, 6943370.940202949), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643434.017598751, 6943432.460106737), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433398.0887452524, 6896366.66428718), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442636.77323194937, 6756650.063864649), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339641.0516957713, 6798120.5153396055), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338666.7884903715, 6798068.841044206), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341209.46460419684, 6795576.181755983), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(303294.647305306, 7001908.055605761), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(450103.60904678714, 6901718.672924067), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(591071.4792517669, 6785789.717647942), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(590993.5582891325, 6785358.803044865), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107920.84518384104, 6681496.924791726), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(235857.50666403415, 6715422.62391419), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(236175.04169747286, 6715082.297861136), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(268746.04234127933, 6897425.198251873), 3067), 4326),
        NULL,
        false,
        'Karvia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(269076.7606796339, 6897348.641447533), 3067), 4326),
        NULL,
        false,
        'Karvia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274273.04431498924, 6639143.981112116), 3067), 4326),
        NULL,
        false,
        'Hanko',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433371.25409893546, 6894614.456395828), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238366.5606766562, 6721313.09570258), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231776.63295227432, 7007101.039664931), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273883.9176304136, 6639333.190599443), 3067), 4326),
        NULL,
        false,
        'Hanko',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285115.9702254346, 6681340.959047217), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285218.73364636325, 6680311.098390677), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286228.4528199668, 6701454.34733065), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285265.48598541244, 6701607.285908854), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339234.1381653236, 6798903.615669253), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286778.3311023035, 6699946.414231355), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288813.734938146, 6701510.025759564), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286934.00791395974, 6702083.9982937295), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286952.6119361041, 6702068.033950593), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287062.23154868325, 6702069.357688168), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286965.744271136, 6701974.162925163), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286933.2867269937, 6701962.693398366), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287134.5699149125, 6702202.774352996), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287164.68386730703, 6702173.489325873), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287104.09290959925, 6702237.166883139), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287216.6908449814, 6702291.3490532385), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287186.40910587553, 6702320.128506951), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287248.93887129135, 6702258.735949318), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287227.0187175963, 6702360.435218148), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287259.1257956866, 6702330.966917439), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287291.0274422638, 6702299.592803354), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287197.9627460295, 6702390.246229806), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287378.54344500066, 6702392.060845054), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287346.19463661796, 6702421.0213114135), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287312.86530359066, 6702447.52825667), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287283.7565698712, 6702481.022931835), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287165.5879916028, 6702360.228261702), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287512.8295239413, 6702490.278968325), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287387.0242020636, 6702499.298741469), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287415.21798024885, 6702458.428028959), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287708.38033605786, 6702691.873867083), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287668.40030727384, 6702670.59493456), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287665.8326249436, 6702644.116551045), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287321.2897733863, 6702058.707525758), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287347.08671659953, 6702085.279358054), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287261.792100043, 6702095.354774308), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287335.87656178477, 6702233.889776817), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287636.8540015706, 6702490.579705138), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287696.16991380655, 6702300.024960192), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287090.9642993586, 6701619.5342595), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(411836.61619110283, 6954582.765791729), 3067), 4326),
        NULL,
        false,
        'Saarijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(410820.40339329647, 6955164.203068783), 3067), 4326),
        NULL,
        false,
        'Saarijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408157.55964495975, 6954897.809327291), 3067), 4326),
        NULL,
        false,
        'Saarijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(412225.1965754925, 6952505.863113353), 3067), 4326),
        NULL,
        false,
        'Saarijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(409782.3078512082, 6953732.012456156), 3067), 4326),
        NULL,
        false,
        'Saarijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408485.04057814635, 6955026.23926258), 3067), 4326),
        NULL,
        false,
        'Saarijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(184102.55634276912, 6640929.572223631), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234627.83338289105, 6714236.248465551), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(258221.85853692138, 6860268.405328535), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443364.20267862035, 6916078.892476832), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287682.86786145484, 6701912.918642625), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287743.21591145743, 6701944.526489314), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287766.40307817404, 6702094.736415581), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287691.70668714156, 6702054.54936819), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(271454.89098423504, 6801366.534496785), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407302.14326687786, 7522564.382548743), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(411800.66519260133, 7505354.92621922), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(411454.3735044815, 7505419.035488119), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(411512.72716580384, 7505442.888576506), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(411375.44055316766, 7505647.085010939), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(646145.495543372, 6937700.734464171), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287472.05816805223, 6701398.9171393365), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510781.6405261225, 7048626.291436527), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509515.64820269326, 7047978.732365285), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509143.7484116227, 7047457.283303513), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393459.9643797287, 7128515.194748127), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394702.3197970859, 7128994.445096511), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394773.439445589, 7129201.5911045335), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394993.8912680245, 7128563.085016848), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395021.4680981944, 7128548.350534499), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394229.622096804, 7128354.200803692), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394742.3580116059, 7128513.44636985), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287236.98159731104, 6703122.258607556), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509055.6268115829, 7051236.919406789), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286655.3170174707, 6702666.244678026), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286753.15729994077, 6702750.5245817965), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287127.56439157936, 6702849.45193353), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286620.68871586636, 6702885.509694496), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288390.32748495915, 6701033.24599862), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288571.82416879805, 6700985.996013325), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288602.27314766886, 6701172.675531246), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288445.3960519716, 6701172.1387589), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288024.1058670533, 6701283.407771486), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288062.33699623524, 6701290.493271067), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288051.87764697167, 6701301.94607457), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358203.94664021564, 6771424.8652445), 3067), 4326),
        NULL,
        false,
        'Hattula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(302250.39085449785, 6653615.119221879), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288994.980745121, 6700920.517542649), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288643.7421646238, 6701548.823742952), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288876.968051711, 6701790.142724485), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457251.4678858887, 6700475.500330858), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300267.98344950826, 6655468.014775083), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298486.5189002966, 6654238.940028294), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(467087.8702163114, 7107480.579476292), 3067), 4326),
        NULL,
        false,
        'Pyhäntä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284808.81992059585, 6701880.248528849), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288336.10602130264, 6700089.505075282), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288150.42438585404, 6700180.358874931), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(329787.3534161778, 6785550.283591426), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(558303.3090777368, 7153842.249755538), 3067), 4326),
        NULL,
        false,
        'Ristijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(452991.6563789386, 6845800.164974567), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(558067.9908890245, 7153819.4233365245), 3067), 4326),
        NULL,
        false,
        'Ristijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314219.12154784595, 6664251.894301199), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315689.86177779414, 6664525.383208266), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(293779.10198857024, 6664038.3369895015), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288812.9469467748, 6702619.344547263), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288751.9033940949, 6702553.734414506), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288717.29482973105, 6702481.049099853), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232985.51619043716, 6713092.339628786), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238763.69178509622, 6721549.066339267), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238569.57502271776, 6723517.403883698), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(112677.5601300679, 6697813.248195688), 3067), 4326),
        NULL,
        false,
        'Finström',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404230.8794460656, 7545145.856037978), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300631.161441755, 6655889.325795531), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(452678.13553364587, 6845975.754375569), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509079.8794627407, 7049973.570383378), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233585.2128420535, 6715301.274975215), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233857.12598018788, 6715277.104821901), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234011.72870386756, 6715251.173452437), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234049.46045012216, 6715136.99354377), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234152.91982450118, 6715246.257188603), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439659.24454724125, 6901230.738427611), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434412.5647919676, 6906937.927705246), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434105.55977761827, 6907147.94592999), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434137.37813220994, 6907089.821071143), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486091.59721588297, 6752936.854038709), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337745.7216546171, 6681451.437413177), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337547.1544758092, 6681298.247627904), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(294260.0423553971, 6663674.657897161), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439754.12968215765, 6910747.019741269), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233172.2230150278, 6716006.931069146), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233157.07558477425, 6715894.937290595), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233175.32827229932, 6715846.2228053855), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233610.07413750232, 6715471.920147908), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234815.2575248614, 6715490.731313723), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234724.2754618319, 6715424.307617765), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234732.47770348017, 6715484.059945495), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234714.55085987796, 6715476.520245099), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234688.85176860655, 6715464.3491985975), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234666.36013585763, 6715485.170422863), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337554.67942868674, 6681360.379620688), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432397.05856774945, 6903797.271677353), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339039.6573621167, 6989856.065540302), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(305535.8386846198, 6655741.001547501), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(305702.2081165021, 6656312.227689606), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(305887.8236014917, 6656345.394518261), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(303031.57383649587, 6652178.734190084), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(302605.84705843637, 6652327.073775087), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(296281.3942408387, 6987905.485243807), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274246.3461499404, 6805524.258194725), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(296317.69553433574, 6987638.97876215), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(296208.3802211084, 6988185.459786966), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(295940.81230334303, 6989178.390163289), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(296661.6901166387, 6988732.7039881265), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297231.41767229803, 6988708.613394768), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297417.0505503728, 6988945.469469912), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297346.52211841685, 6989065.620126683), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233560.13404258146, 6813707.397974602), 3067), 4326),
        NULL,
        false,
        'Nakkila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233555.70761009963, 6813165.060102411), 3067), 4326),
        NULL,
        false,
        'Nakkila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234292.28690902234, 6813366.941790824), 3067), 4326),
        NULL,
        false,
        'Nakkila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(242590.35352444832, 6806747.665633295), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240741.54474540838, 6809350.95277483), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240991.67427997457, 6806507.53989683), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251446.58265430154, 6799427.169778845), 3067), 4326),
        NULL,
        false,
        'Kokemäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251086.7268137388, 6800740.142806762), 3067), 4326),
        NULL,
        false,
        'Kokemäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297327.68268710584, 6986738.70024895), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298618.8112408773, 6987442.818779353), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298134.9933158256, 6987986.5380910495), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299508.539776844, 6989702.842164676), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298458.8456342641, 6988360.090339784), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492917.2078684061, 6701595.560326309), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(493405.78366092825, 6701489.21578911), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(497027.5137610191, 6701846.429057713), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(494721.0248458869, 6704824.925999501), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(497021.92352939874, 6710915.382289988), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(498365.6540226456, 6710958.180230109), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230306.7668765171, 7005208.640312739), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228510.88223700377, 6821200.05742503), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228361.03660554608, 6821473.947781193), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403927.05410630244, 7151537.5867045475), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403839.2403134654, 7152407.680001835), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367378.24922774715, 6762076.946639472), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(207842.98515028515, 6939660.39599223), 3067), 4326),
        NULL,
        false,
        'Närpiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359567.66597653326, 6838897.4690584345), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360068.74916479766, 6839127.811391202), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(398094.71128202544, 7053624.936170419), 3067), 4326),
        NULL,
        false,
        'Reisjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396699.3168026476, 7054880.63577151), 3067), 4326),
        NULL,
        false,
        'Reisjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(237408.29719571746, 6851519.727685533), 3067), 4326),
        NULL,
        false,
        'Pomarkku',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(350934.9257524679, 7129018.86674702), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353489.6423829769, 7129469.900146754), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352524.6754033626, 7130487.721541723), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381120.9275148981, 7176410.281132232), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427475.71863877337, 6766329.350836603), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427476.80857993057, 6768110.254462513), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433326.99523442355, 6765696.71293215), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432549.50406040973, 6765455.826826102), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432288.9746996382, 6765207.138266602), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434250.39721338975, 6764322.174967521), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435421.02188987174, 6765117.702311477), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434765.15077483276, 6763866.686663995), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434034.1230880723, 6762325.831419004), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433211.8672070961, 6763969.809049684), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432909.6946055036, 6763483.547055647), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432745.28007989225, 6760188.191916079), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427594.9422664192, 6760575.0139150685), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423533.2115564714, 6760646.616570629), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424485.8607945419, 6759017.773973042), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424946.72657254414, 6759114.788544087), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425713.03444257664, 6760646.945575462), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422088.351458084, 6761426.835803546), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434345.9437821344, 6894978.270012907), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380706.9339360173, 6705887.117945565), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380309.86358761135, 6704985.080661272), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380233.6759647969, 6704571.885966866), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642103.6662458532, 6943543.01765386), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(208352.72329026155, 6939413.803408446), 3067), 4326),
        NULL,
        false,
        'Närpiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289286.5626173558, 6702456.061821705), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289215.5646683117, 6702457.506829189), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289190.8031515329, 6702468.5371670425), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290662.16975233593, 6969445.649719613), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290683.609606008, 6969739.835498435), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288251.29493563867, 6969596.815370056), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380627.2633209274, 6704689.685159679), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380629.4435762376, 6704524.777326262), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196377.3177499186, 6753210.83088768), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196327.32296859194, 6753210.175875124), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196405.51382282234, 6753240.749969094), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196329.65148824526, 6753229.524433189), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196421.48681196375, 6753225.516532252), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196348.8950131642, 6753210.1206473885), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196386.29847945285, 6753846.16869027), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(197504.7193213243, 6753846.3191418005), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380849.20120219176, 6706220.45978916), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333279.26557991514, 6678101.797660797), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333266.6385140206, 6678123.423093249), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331279.4214080933, 6675507.312143108), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(334690.0773146763, 6678673.367841935), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(335479.630938817, 6681202.657871201), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289553.1411720943, 6702711.464402996), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290058.4231194894, 6701752.426481772), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289548.6323135914, 6701428.105386648), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380417.0862401892, 6705906.092796369), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(203292.01955176992, 6794891.818948403), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362321.7728427067, 6706038.857188103), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362173.48521922494, 6705844.518705177), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362153.7574560323, 6705810.258172667), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379472.63690284034, 6705914.924401152), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376619.8206406107, 6713048.94355317), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379074.7193847104, 6712485.877717363), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378108.8637241873, 6712992.436051192), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376973.27538884804, 6711826.0926152), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(377191.5477419403, 6711321.496824585), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376524.02217807755, 6711400.672857475), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380884.2397914587, 6705437.4258897165), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380563.87504959566, 6706298.573204221), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403344.02372737287, 6826890.608382636), 3067), 4326),
        NULL,
        false,
        'Kuhmoinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403688.1557881723, 6826768.490558726), 3067), 4326),
        NULL,
        false,
        'Kuhmoinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227552.38418726125, 6838685.828898463), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227083.84309415286, 6841000.177421102), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289728.2118550145, 6702138.605334067), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(568470.5904467265, 7112899.2170008), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289712.10265503055, 6702184.188942515), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289450.0583888884, 6702170.478242887), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289460.34451485105, 6702183.384428003), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289534.09272069775, 6702119.640226406), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(568338.6983650577, 7112291.050880116), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(567963.2636706331, 7112755.763230102), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(567977.6974467753, 7112797.034624174), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(568994.122490879, 7113275.807971488), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564906.3725381249, 7112553.493167238), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598760.7693830081, 7317787.414362264), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289937.28465869685, 6702059.00018866), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289876.927654644, 6701991.992926162), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289952.2190139353, 6701934.574973673), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289784.5185528207, 6701589.160981745), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289892.74329526, 6701761.402699853), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262455.86142557533, 6706857.434621568), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289928.8248148507, 6701385.825760168), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(215653.1019531248, 6709358.186354791), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532751.0014217284, 6968903.042764966), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(470247.1004023773, 6977949.787344274), 3067), 4326),
        NULL,
        false,
        'Vesanto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533257.0686959653, 6968971.616827685), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532741.5049785818, 6969089.894697844), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532994.4232311514, 6968398.789891965), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(638267.8533918366, 6946638.461327417), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289324.3843085804, 6701073.150809881), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486805.15191392956, 6752263.887634491), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246916.1489260802, 6713964.180168849), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(196013.91047312765, 6753557.172234616), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481630.7257022182, 6874616.37561257), 3067), 4326),
        NULL,
        false,
        'Kangasniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289349.18695323664, 6701357.751942152), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422215.5942760435, 7245068.734305233), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422187.3155882466, 7244867.029546064), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(603861.4430026959, 7048995.435544219), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425497.18605354737, 7245430.113613216), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371478.6443524947, 6707460.54270253), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370545.2277599429, 6707331.430182165), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375214.3787756484, 6694316.73562966), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375537.5048172016, 6694428.761035542), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372738.97364172986, 6696143.182615979), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372200.33901086764, 6696281.09049585), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(371672.9308523231, 6696484.28725341), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372927.21970423847, 6695899.493121271), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(374464.2153781521, 6696873.282808391), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376054.0936240984, 6693841.61975954), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376137.71078943455, 6695041.954041458), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376463.8013147588, 6695853.385901791), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376136.2487854994, 6695604.779798445), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376215.0697432637, 6695466.067642832), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375767.0649353164, 6695713.6801992105), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376806.5056236646, 6698086.613521747), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(543735.2013185769, 6769854.676024102), 3067), 4326),
        NULL,
        false,
        'Lemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(543581.5829988401, 6769952.500476162), 3067), 4326),
        NULL,
        false,
        'Lemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535770.6667927098, 6969286.761621052), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533285.9869644175, 6978341.677334986), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533323.9838078642, 6978292.014289913), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533376.27666633, 6978242.302458745), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432776.9942667492, 6900049.481283168), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432679.80754607334, 6900145.562392354), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432727.2735729735, 6900081.055663126), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487875.33279474755, 6754487.150573044), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430765.05778242066, 6764671.75490693), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301815.03303930454, 6653418.213720466), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(609492.2135061767, 7046658.685234943), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370678.68151611084, 7303596.822357952), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370384.6290166262, 7303559.833354492), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(217147.19810976597, 6796275.749252101), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387966.54085427674, 7294863.5093149375), 3067), 4326),
        NULL,
        false,
        'Kemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423855.10754363466, 7245102.4185965), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389677.9978872819, 7293525.983719279), 3067), 4326),
        NULL,
        false,
        'Kemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238671.70089227104, 6786630.895160482), 3067), 4326),
        NULL,
        false,
        'Eura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(239087.68088622738, 6786550.799709961), 3067), 4326),
        NULL,
        false,
        'Eura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(612859.9197808803, 7014436.028826029), 3067), 4326),
        NULL,
        false,
        'Juuka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(613252.1910692544, 7014646.351412562), 3067), 4326),
        NULL,
        false,
        'Juuka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(558428.9482403416, 6976674.396111709), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564415.0498148099, 7041605.55049897), 3067), 4326),
        NULL,
        false,
        'Rautavaara',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564552.3031486162, 7041578.568655383), 3067), 4326),
        NULL,
        false,
        'Rautavaara',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(483638.76553351816, 7488154.443342947), 3067), 4326),
        NULL,
        false,
        'Sodankylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359618.63084445416, 6841249.732597195), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234536.3559770539, 7017163.0174289), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384803.4386957774, 6776436.847668226), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(242051.19786740615, 6706342.700365142), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(375688.6616616784, 6880411.90478788), 3067), 4326),
        NULL,
        false,
        'Mänttä-Vilppula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376052.8260069352, 6880024.872198488), 3067), 4326),
        NULL,
        false,
        'Mänttä-Vilppula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387844.6964023682, 7292883.673791858), 3067), 4326),
        NULL,
        false,
        'Kemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391189.77813631156, 7292082.261516249), 3067), 4326),
        NULL,
        false,
        'Kemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290535.52960074943, 6781880.547826483), 3067), 4326),
        NULL,
        false,
        'Punkalaidun',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370435.8920176014, 7012004.031534653), 3067), 4326),
        NULL,
        false,
        'Perho',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370580.9682434953, 7011966.64375813), 3067), 4326),
        NULL,
        false,
        'Perho',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(636339.3405895974, 6911744.030426676), 3067), 4326),
        NULL,
        false,
        'Rääkkylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(436797.88197399233, 6904248.446794648), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(259752.5441930715, 6731628.7509166915), 3067), 4326),
        NULL,
        false,
        'Aura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(257996.1740433642, 6731785.673054551), 3067), 4326),
        NULL,
        false,
        'Aura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345321.62084104924, 6673611.858235849), 3067), 4326),
        NULL,
        false,
        'Siuntio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250379.5209884144, 6723778.882420972), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424228.21967083146, 7245301.172221523), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394063.82518644043, 7128611.418346997), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394029.6459443388, 7128621.843479261), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394012.0520457644, 7128654.952663162), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425729.3660112931, 7243830.319463026), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(215178.5082324794, 6915010.535276961), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290972.7360165799, 6881370.622223695), 3067), 4326),
        NULL,
        false,
        'Parkano',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291094.78378372535, 6882904.007347937), 3067), 4326),
        NULL,
        false,
        'Parkano',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315923.31080247916, 6747574.849809315), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(317329.731805811, 6746816.547009337), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356257.2111681331, 6773369.6893310435), 3067), 4326),
        NULL,
        false,
        'Hattula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325082.93745629996, 6819759.2780052535), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535121.7577653356, 7122819.51776722), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432206.7899218016, 6906573.957101868), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432734.0790879454, 6899159.222976066), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233772.1413903481, 6723154.924464989), 3067), 4326),
        NULL,
        false,
        'Masku',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233815.8176983048, 6723474.479323897), 3067), 4326),
        NULL,
        false,
        'Masku',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324703.2492715247, 6820406.1351697175), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313925.04909218807, 6822705.88829014), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423894.92844420404, 7245541.453765228), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379686.4452795673, 6705203.043009319), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(543539.46737219, 6911117.25870227), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(500076.83551065874, 7248999.524657729), 3067), 4326),
        NULL,
        false,
        'Pudasjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326453.63859405415, 6671005.621891301), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(316783.6929344865, 6748090.465433159), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315217.9793530582, 6821909.529244372), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315168.1014467853, 6821985.464111002), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315256.3831397062, 6822164.921636186), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315654.24999002455, 6822200.219600636), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314988.84837740444, 6822615.887640845), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313533.8343454401, 6822934.602566842), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(316682.40327294846, 6822405.835175978), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314181.0693014462, 6821725.813788142), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314154.42867548054, 6821669.296334629), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314983.48272607377, 6821414.921729238), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314711.72050467826, 6822687.382917212), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313393.25112541206, 6822817.841687385), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313316.4443635555, 6822825.007796303), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313222.6508343994, 6822848.460442299), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313251.3601605855, 6822892.659105752), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427609.60201467364, 6770918.848238458), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292708.7743989448, 6715307.530094821), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314354.76835185476, 6821168.307215662), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229237.48733053316, 6828862.784976294), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(524529.4321472385, 7397095.7319996115), 3067), 4326),
        NULL,
        false,
        'Kemijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532469.358363987, 6972334.681571037), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313975.70330686873, 6819887.62919227), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313118.88270764577, 6821883.743577927), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(302446.94903312845, 7002319.038060171), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312787.2584019298, 6821852.055426559), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532446.4353358549, 6972443.811674971), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310929.2320667407, 6820498.9069881635), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310829.12659108744, 6820532.12448743), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312492.0603814634, 6819677.792696267), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(513001.4458653247, 6839084.493503757), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407586.72371828626, 6803143.884665099), 3067), 4326),
        NULL,
        false,
        'Padasjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314353.9412826506, 6821423.108774779), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314433.4818257652, 6821449.539039447), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(552672.5940526997, 7135080.778205772), 3067), 4326),
        NULL,
        false,
        'Paltamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314860.4533935218, 6819740.002123918), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314958.28499754594, 6819704.273106741), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315050.25167705375, 6819630.007231384), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314985.40068698983, 6819748.287827839), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322986.2314649641, 6828551.272046747), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322953.18052871106, 6828573.694578447), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323001.38383207185, 6828585.263539831), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323065.66841321485, 6828561.392484763), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323091.2219715923, 6828588.757849296), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(420860.01788849104, 7113095.203877517), 3067), 4326),
        NULL,
        false,
        'Haapavesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432894.37350514636, 6902675.273866806), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107957.98899651447, 6681656.899803896), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407291.2820903969, 6725490.2115100995), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(405787.89580930554, 6721297.730380125), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285854.3244048383, 6968360.582489307), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362065.18547299795, 6765214.420819446), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358493.1214140919, 6770550.361049067), 3067), 4326),
        NULL,
        false,
        'Hattula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426539.2177436675, 6760181.668292589), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397405.59745247895, 6697708.139967603), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397377.00768695556, 6697722.694387157), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397319.7456752081, 6697705.90511049), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397430.12232321006, 6697657.3345906865), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(646877.4813189602, 6944560.582439034), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643140.0398327408, 6951377.383784172), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644039.7594989164, 6951113.9881387325), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643373.5059554733, 6949811.004733394), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(597302.5653075156, 7316595.064466295), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645723.4739629244, 6961373.659675987), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645268.3620913008, 6960895.149040665), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645045.8489197536, 6961089.389976066), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435089.0219844112, 6943773.98774889), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249165.06790446455, 7002800.185315256), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244973.46669132676, 7003650.84929564), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244746.5262519892, 7003445.568334832), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(542269.2184160706, 6863039.529153793), 3067), 4326),
        NULL,
        false,
        'Juva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(543265.4271352506, 6862459.770865426), 3067), 4326),
        NULL,
        false,
        'Juva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(544497.0315624474, 6863248.758558362), 3067), 4326),
        NULL,
        false,
        'Juva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(313959.01112044003, 6664301.837378116), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252597.94229806805, 7000868.311602192), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434412.21315156244, 6764867.713432238), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249693.84820798502, 6987913.989879672), 3067), 4326),
        NULL,
        false,
        'Laihia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311976.7729029616, 6818068.982427577), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510879.7510516933, 6876370.345325607), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222243.9331270991, 6826708.976135957), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253682.12434336837, 6995528.606969299), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(267886.8591655373, 7026358.788208315), 3067), 4326),
        NULL,
        false,
        'Vöyri',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291759.0957758525, 7019952.676180781), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292089.12676881393, 7020670.166541502), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292217.1470129762, 7018811.905202937), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(568178.4710706839, 6771643.21095154), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510362.6842150036, 7049941.608672053), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(508563.78954124416, 7050550.32509571), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509196.89583484136, 7049483.156232099), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321453.6135459643, 6745952.624550143), 3067), 4326),
        NULL,
        false,
        'Tammela',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301424.7475075823, 7002635.550542955), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301476.32523304125, 7002650.827829744), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301408.55268112064, 7002674.137210967), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301408.55268112064, 7002674.137210967), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289798.3745571471, 7008156.3532108795), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326466.10903465963, 7051129.084063851), 3067), 4326),
        NULL,
        false,
        'Kruunupyy',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(329031.3330368973, 6800356.083875711), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395258.34684333054, 6695263.042700373), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395142.49498349143, 6695103.650988689), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532914.8208050325, 7121575.906476334), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535501.2795821215, 6983018.98122821), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291376.406104962, 7019545.266745634), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645537.1593824481, 6962492.665066695), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(646104.718910982, 6960389.519147484), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315825.7193977065, 6746094.707845836), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(346838.4752397812, 6876393.231193613), 3067), 4326),
        NULL,
        false,
        'Ruovesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315555.60135315877, 6746773.090555107), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288036.4853717859, 7009263.6013628105), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(296443.61626021774, 7002002.028920559), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310690.1533923116, 6746184.402109219), 3067), 4326),
        NULL,
        false,
        'Jokioinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(310656.47327660496, 6746538.129962765), 3067), 4326),
        NULL,
        false,
        'Jokioinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534077.7693468796, 7122453.816529036), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(620169.9033051076, 6854302.610460844), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222777.82362554575, 6829514.509661836), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288424.05934729445, 6816862.074532335), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255259.06075465056, 6979958.340900384), 3067), 4326),
        NULL,
        false,
        'Laihia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486414.4536232576, 7361795.911829384), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486359.5815891359, 7361742.28708857), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(421905.1543887522, 6923397.448124947), 3067), 4326),
        NULL,
        false,
        'Uurainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(420180.0821908346, 7114001.455978034), 3067), 4326),
        NULL,
        false,
        'Haapavesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(420099.04986736365, 7113375.774238147), 3067), 4326),
        NULL,
        false,
        'Haapavesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(233934.91192463634, 6715202.088492019), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300029.75343722507, 7003444.377518617), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222765.6174453384, 6829660.169352651), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(208940.33998494895, 6838489.874870258), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(260964.8184289966, 6995702.768641962), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301129.85137510544, 6654171.766372358), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301272.62155839533, 6654257.437140831), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315544.2745325822, 6747352.554689914), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(373375.122643826, 6754991.659671051), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(245180.47973667618, 6706514.614858106), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244182.6534034979, 6707246.905575749), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(443685.1564051975, 6915814.577974164), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(248443.8160348407, 6992792.076780176), 3067), 4326),
        NULL,
        false,
        'Laihia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255880.03351613862, 6995686.0913680075), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255080.58793229208, 6994470.337121077), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(248940.46345863663, 6987688.374938255), 3067), 4326),
        NULL,
        false,
        'Laihia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425935.9137808003, 6762632.374593414), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240601.87257032815, 6694059.6166584985), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(639852.3810612862, 6945710.367573125), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(640072.3109489297, 6944349.870817305), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299947.0923783297, 6655267.88084017), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(604687.7160009781, 7050475.364148872), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325011.259184502, 6745293.94926469), 3067), 4326),
        NULL,
        false,
        'Tammela',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320968.8245930696, 6745365.135709924), 3067), 4326),
        NULL,
        false,
        'Tammela',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(293184.7955990628, 7018666.999148902), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(405816.7791555361, 6860546.851760558), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(406093.16524527554, 6861116.114855945), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404382.7890271046, 6860769.193543301), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404443.37712458766, 6860406.178876704), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(405513.85867239546, 6862015.633807535), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331602.8993480446, 6784948.714380001), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404422.0092367459, 6859890.607565757), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(405092.7969943179, 6860132.163025457), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404256.0989068325, 6864856.129635872), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(491209.76752184005, 6734806.358547362), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(460707.70411537756, 6753042.221518826), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530906.6096844171, 6964275.238163766), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530889.45310453, 6964280.353112454), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530859.6055875083, 6964283.1898579905), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530893.3752361088, 6964265.864627682), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530921.735623347, 6964256.054824074), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530938.347089, 6964256.145472194), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530958.1814742429, 6964240.460654525), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298865.6494834916, 6989931.579851316), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299351.9309290032, 6990170.285968741), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(330555.88984273025, 7014225.097684939), 3067), 4326),
        NULL,
        false,
        'Lappajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404531.6256145094, 6861254.3266875055), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404271.3474572026, 6860338.1109853815), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(406010.74020275124, 6860722.134696974), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(406629.9427149308, 6861602.255655512), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(406290.8554320814, 6862094.672533753), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403153.00923666114, 6870111.521315966), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404909.0715450666, 6866452.40870676), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403230.16702696175, 6861577.14147567), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(402845.65152494644, 6861665.121681432), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(402555.9925936255, 6859659.536872454), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(406952.77411210863, 6854999.507318856), 3067), 4326),
        NULL,
        false,
        'Jämsä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(318801.82871575054, 6826486.113730352), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531207.7745565298, 6964171.887344036), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530992.6341989854, 6964217.203080816), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(347555.0291487141, 6804658.494161143), 3067), 4326),
        NULL,
        false,
        'Pälkäne',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285024.59275503637, 6920571.290529143), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535016.9489619666, 6973745.323498721), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535010.2158590972, 6973705.18638069), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534064.8259354999, 6967559.191699724), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533990.6181985042, 6967592.806412805), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534040.8345979727, 6967561.474380514), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535371.4438569135, 6975691.194855826), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229439.8151407538, 6689478.206780466), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291558.5155563072, 7018606.335133015), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291454.78808307525, 7018433.044952597), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241772.37033361138, 6706590.25101542), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333365.83110108343, 6785716.199676328), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(504154.7878949818, 6946063.535015399), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531065.311667563, 6972762.905634975), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534774.5512440214, 6967801.493534933), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331958.1030525237, 6786295.382101269), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394929.1977233432, 6706268.256703551), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426941.9989091085, 6763704.997651001), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252474.07423028004, 7001069.635285641), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252483.24674737008, 7000846.311281822), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253125.7550230573, 7000920.810202672), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395720.90136165544, 6697452.138192483), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(243392.97497978667, 6651541.357202684), 3067), 4326),
        NULL,
        false,
        'Kemiönsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397329.50771382335, 6697852.034382237), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255899.15509486684, 6995689.294957568), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255894.1087486541, 6995674.718910769), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255897.5790471512, 6995665.724307372), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255917.3381024346, 6995693.872292626), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244925.35681468263, 6994583.604743942), 3067), 4326),
        NULL,
        false,
        'Laihia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598869.4058949901, 7317595.611488151), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252625.23817805471, 7000978.499779745), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(205219.60280639122, 6789446.191538916), 3067), 4326),
        NULL,
        false,
        'Rauma',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300480.8138306226, 7002305.469279328), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332395.585908683, 6786117.117193146), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598097.5181002963, 7316610.478701553), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(601688.9404132613, 7315827.37975683), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(601213.963821053, 7315932.992715961), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560329.1348807716, 7114082.2407194115), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363395.3986052935, 6763068.457893914), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253759.30788067463, 6995479.201066047), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250025.62103731817, 7028030.676985012), 3067), 4326),
        NULL,
        false,
        'Vöyri',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431048.05111906497, 6764765.330259765), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429198.82641409326, 6763138.52228973), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428661.37684304407, 6763249.671698183), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429210.30516807415, 6764134.408852923), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429576.0503768311, 6762695.425674742), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430589.04787752527, 6762094.897030142), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419096.7675800942, 6762751.313734633), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(87576.46649625622, 6701233.492155456), 3067), 4326),
        NULL,
        false,
        'Eckerö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366705.0610922273, 6670660.202136327), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227142.73374260485, 7009152.488691067), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227071.4198395836, 7009154.696083182), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227039.43475830933, 7009191.526696993), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363638.7288934692, 6765860.89900455), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408058.69852015545, 6725065.090674621), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(420451.9425805586, 6761841.908186734), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(260700.0615776653, 6996036.75764539), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(505812.2820219316, 6944569.3924113605), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(613165.2766435425, 6896101.123259121), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442251.3802043675, 6775800.310170057), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321724.28292355477, 6968511.092408911), 3067), 4326),
        NULL,
        false,
        'Kuortane',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(462020.8678117151, 6753419.177928657), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448949.44164934615, 6736200.9054362755), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492460.85498004727, 6700075.345397877), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364110.0433488029, 6671131.834875935), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486692.0699206518, 6837717.497693641), 3067), 4326),
        NULL,
        false,
        'Hirvensalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(524692.9913972903, 6743359.027202884), 3067), 4326),
        NULL,
        false,
        'Luumäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419527.9730943463, 7268010.619766019), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395421.13275333977, 6706937.947469075), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395485.69492829044, 6706837.780295824), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395548.6101700693, 6706744.582681452), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(302453.6057676201, 7003827.200752375), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433425.1183942662, 6896264.411585072), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433528.84384219645, 6942910.018866683), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(317579.0408976942, 6747346.13883408), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(208387.778743034, 6917241.964450184), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434789.60423126625, 6899682.78802182), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(209352.27054698305, 6838439.716503665), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288423.9431747547, 6967577.213291077), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289667.9539806204, 6966565.192886173), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289704.062926072, 6966551.3802838605), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290367.49640450726, 6966422.014806052), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284803.3081418553, 6968645.535306545), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289778.72155987186, 6966581.506957102), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288938.2483048015, 6966947.032139739), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246746.84828992616, 6708272.615590869), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363063.1055477879, 6763722.45765781), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492384.60907123017, 6754722.591269595), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492332.1936854667, 6754881.426546315), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300053.1856357648, 6656647.20477711), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301699.97346192255, 6654606.612965912), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301699.97346192255, 6654606.612965912), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(302536.9122782949, 6653490.467252381), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249439.2004386548, 6662353.415271412), 3067), 4326),
        NULL,
        false,
        'Kemiönsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249435.93564285123, 6662328.289860583), 3067), 4326),
        NULL,
        false,
        'Kemiönsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249454.78351483046, 6662344.120042633), 3067), 4326),
        NULL,
        false,
        'Kemiönsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225651.8175575202, 6711959.11599873), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225306.45700902955, 6712426.036532366), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(609450.25639383, 7046554.3168069385), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364968.1506031325, 6762780.337381048), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(416640.6842084179, 7239888.406501957), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288283.8535447875, 6969584.233248336), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394453.1496677794, 6696545.963723569), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564802.6836820032, 6770823.959325476), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564868.4179718872, 6770725.959417802), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564654.1847728979, 6769916.587063801), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341882.58010011405, 6795437.681990394), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427701.62149438076, 6760457.148414635), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324013.4429725207, 6828488.503647954), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323820.19275323563, 6828395.144852014), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323724.73802092357, 6828392.180789605), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290631.3776981547, 6970010.535566447), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355988.221014449, 6663799.698005765), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356021.0263908761, 6663807.8999737445), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356037.30589125876, 6663838.090782572), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(447631.55406996165, 6827265.744762236), 3067), 4326),
        NULL,
        false,
        'Hartola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299323.9612945678, 6988445.582389663), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(447748.8655522529, 6827144.893153041), 3067), 4326),
        NULL,
        false,
        'Hartola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395077.33429700823, 6706460.62646124), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(636499.6927749476, 6947234.005339955), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434024.30219313916, 6942321.238344235), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321699.9769950327, 6826477.884033494), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297108.6839376622, 6980229.760937234), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360869.09863552, 6698699.219742343), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331493.881205471, 7017646.641681185), 3067), 4326),
        NULL,
        false,
        'Lappajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532591.5076663557, 6968750.844099396), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382285.5842418572, 6723184.270704679), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478715.9632835976, 7311922.064387558), 3067), 4326),
        NULL,
        false,
        'Ranua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394946.7467718899, 6695044.152579039), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381299.3064976444, 6672224.070482246), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(329426.1397226425, 7014577.398633821), 3067), 4326),
        NULL,
        false,
        'Lappajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395054.37250977964, 6703725.15209549), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395052.24297627824, 6703800.0168931475), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533118.0448195911, 7775316.997560518), 3067), 4326),
        NULL,
        false,
        'Utsjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241855.76297005825, 7005287.665642637), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286485.80826997326, 6964591.00816793), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(528257.4875347672, 6958008.524116906), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530825.9195254422, 6994265.855203198), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397431.98517240345, 6697923.137058364), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533803.6859273742, 6994569.308820841), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(550389.0439368404, 7463820.2604765305), 3067), 4326),
        NULL,
        false,
        'Savukoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536499.2441793713, 7122113.214211651), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536549.9494757866, 7122145.229049737), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360342.56604181806, 6840531.061344694), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(105857.50014901956, 6683759.215529604), 3067), 4326),
        NULL,
        false,
        'Jomala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563744.4998042466, 7114106.229352107), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561873.3978810294, 7114152.324578396), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560115.7927342256, 7113875.721921197), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560096.5800642461, 7113820.787170494), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560075.6681037451, 7113768.23178194), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560089.5686826007, 7113711.136227457), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560129.6356060542, 7113678.014587974), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533905.3475738444, 6994317.906418361), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(558789.9080037279, 6976958.343105105), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(568960.44804949, 7113124.549565707), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(569412.3485392912, 7113719.018358891), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(568815.1335987382, 7113055.056790918), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536206.061556876, 7120214.66580953), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446034.2766591385, 6873925.1299658), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(552382.3360985934, 7018427.915730231), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315104.0283867291, 6747437.223203106), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315591.7533112782, 6748456.586528055), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(195311.3510318007, 6754422.081364554), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372256.3779301576, 7303983.29197315), 3067), 4326),
        NULL,
        false,
        'Tornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560335.6328433154, 7114210.979534065), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560557.7836228107, 7113976.681707805), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(560535.4786846079, 7112845.867198624), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383760.64314000186, 6670749.715548061), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561145.8182675438, 7113131.716715732), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(215892.7391369062, 6914516.723382192), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(216035.39265688718, 6914648.770830591), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366224.8193044633, 7409617.626257745), 3067), 4326),
        NULL,
        false,
        'Pello',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366583.86542079184, 7409360.879751582), 3067), 4326),
        NULL,
        false,
        'Pello',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367800.2000142576, 7411257.096050858), 3067), 4326),
        NULL,
        false,
        'Pello',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367821.6742531345, 7411238.009877247), 3067), 4326),
        NULL,
        false,
        'Pello',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367795.7128409504, 7411203.78816753), 3067), 4326),
        NULL,
        false,
        'Pello',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287687.7618508926, 6968657.578813401), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(195668.6058049685, 6753266.326766475), 3067), 4326),
        NULL,
        false,
        'Uusikaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108250.87463245029, 6683497.097285015), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(283926.124658877, 6702217.684275225), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(107575.95377611986, 6686474.608998304), 3067), 4326),
        NULL,
        false,
        'Jomala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429842.15374633507, 6819853.049543624), 3067), 4326),
        NULL,
        false,
        'Sysmä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429785.2702755592, 6819881.51991286), 3067), 4326),
        NULL,
        false,
        'Sysmä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(609476.5007296796, 6854509.3700258555), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320983.70004369883, 6837612.923517904), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321042.3842358288, 6837668.221513922), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320596.59803619125, 6835735.7007703995), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(571320.1508500524, 7173040.124541538), 3067), 4326),
        NULL,
        false,
        'Hyrynsalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(571348.1971832116, 7172874.306988988), 3067), 4326),
        NULL,
        false,
        'Hyrynsalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366267.1891258124, 6670395.6300671715), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387993.7399054392, 7301013.277507758), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387735.4967567247, 7301152.726917611), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372497.7761760601, 6756281.829341487), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395223.94343864854, 6695077.551176362), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408174.6581055022, 6686821.850443935), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(445562.2020734942, 6920547.959059178), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(600781.5462052104, 7336292.952836228), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337701.02702902665, 6687627.034838784), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312978.41907346505, 6800618.910810823), 3067), 4326),
        NULL,
        false,
        'Vesilahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319734.6645487119, 6831196.325103278), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(561165.2771107274, 7114065.364150248), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345351.63929432654, 7126724.307266992), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(513919.89572353516, 6835564.359876038), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(513860.9061519885, 6835361.509698368), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534431.1827263087, 6994478.655664816), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301648.3475681495, 6653823.496789669), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359548.5086980564, 6667407.117186261), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363938.5122586288, 6671547.437936124), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533953.4346823497, 6993159.09596822), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533851.954276152, 6993385.701271644), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(442414.01189334353, 6775282.291666226), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533489.1017620807, 6994298.204322005), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533466.6297428253, 6994301.923752445), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(368606.45353933005, 6903167.347268263), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(346108.976409674, 6702353.703602699), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301446.53570590843, 6653871.901149068), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440806.8761732563, 6992949.121321803), 3067), 4326),
        NULL,
        false,
        'Viitasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(344808.3924882518, 6686864.020363024), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441623.58839355427, 7373448.214657106), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533904.0891242112, 6993282.866080529), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536049.7314370864, 6985887.357115894), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229104.5118847472, 6998483.614388452), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345840.09249351616, 6669984.09105933), 3067), 4326),
        NULL,
        false,
        'Siuntio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534707.5047369526, 6995111.384265186), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(335333.66975057975, 6680991.13956563), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(519179.1823602216, 7399012.894847673), 3067), 4326),
        NULL,
        false,
        'Kemijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379692.95711822785, 7175336.553676407), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535346.3110412089, 6969019.35366706), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319445.93958521297, 6819243.06277316), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319656.7208318911, 6819128.898912915), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(329806.6021140343, 6784695.385628963), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(462292.6258994065, 6704184.78602894), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534869.4108271968, 6974180.797619317), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299041.22780246445, 6988081.170612061), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535808.1556109986, 6967777.028744444), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379396.58602721454, 7175831.144551225), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429263.8112950235, 6917781.517560532), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327595.0800239799, 6810600.294137567), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327642.44703325693, 6809838.579967769), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(457200.12441002985, 6702249.784203694), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433889.9262585796, 6904911.625756785), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379870.9090315121, 7175671.590436694), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(418547.0537779125, 6763392.983067236), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(415763.05801059713, 6905836.438942484), 3067), 4326),
        NULL,
        false,
        'Petäjävesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(576067.6895099818, 6965175.426287938), 3067), 4326),
        NULL,
        false,
        'Tuusniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431665.1367171859, 6900422.051138936), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429157.31642746576, 6751408.230590457), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430166.1782827591, 6751504.056933649), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435367.7928298206, 6906497.829158799), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435492.1310352858, 6905722.904102887), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(108669.38473665988, 6680385.598063752), 3067), 4326),
        NULL,
        false,
        'Maarianhamina - Mariehamn',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287874.2949833522, 6968769.01506765), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434440.71339062793, 6901090.645023264), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434389.01156509406, 6901029.634829697), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(637162.9356733774, 6949313.982960089), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395010.52202071913, 6697836.893707978), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288525.3590963183, 6969706.339778846), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448714.5227858697, 6787042.911356961), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395254.61037557764, 6699232.427326772), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395273.28720512235, 6699204.342935945), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395270.72340577206, 6699017.620482493), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395221.60507175466, 6699008.456383912), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395185.84857807105, 6698980.195664167), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333115.38297462306, 6945455.508160187), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333132.53059597564, 6945472.398564083), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397470.3372352199, 6695517.28114433), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535582.7506333356, 6990851.884346876), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534590.8692725206, 6993773.140769633), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534741.2009728128, 6993491.562685258), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444213.7685785106, 7378353.288218885), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358521.0027616477, 6684122.681320609), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444400.2132746778, 7375720.614838664), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444006.5932316971, 7375931.117143777), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444346.68757311243, 7375259.370416765), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484335.1170600373, 6746255.048398584), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484337.28786910535, 6746164.319911466), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484339.94043571595, 6746064.192401459), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484705.6978333013, 6746240.064857629), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484277.0835557006, 6746078.171453578), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484793.33685975836, 6746264.63738592), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485360.65933275473, 6746218.293364871), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485254.4595657216, 6746483.755690818), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485252.80142581795, 6746452.975517292), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(444547.3027513533, 7375768.7635584455), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485155.13823485584, 6750635.956441142), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484650.37113582215, 6747359.653736644), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325265.8106069101, 6745740.86847174), 3067), 4326),
        NULL,
        false,
        'Tammela',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440277.2793782243, 6899944.21609011), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(477890.0391985078, 7312152.875134418), 3067), 4326),
        NULL,
        false,
        'Ranua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478772.1686906951, 7312159.203100183), 3067), 4326),
        NULL,
        false,
        'Ranua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478672.04815952835, 7312078.353846884), 3067), 4326),
        NULL,
        false,
        'Ranua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395405.8615810121, 6697983.191337486), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(630635.5127744437, 6946696.891128835), 3067), 4326),
        NULL,
        false,
        'Liperi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532422.0708356719, 6994896.113366671), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438644.63727287966, 6900607.998477982), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438642.12181790575, 6900675.677720395), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438601.9801824037, 6900671.01162998), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533486.2791964486, 6994213.325442402), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394983.47152939194, 6695544.06897436), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372368.2392942641, 6695979.773240422), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(630801.52223352, 6946700.747922454), 3067), 4326),
        NULL,
        false,
        'Liperi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437379.99026019225, 6903931.2817550665), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437317.29623066634, 6903870.538563867), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437911.8815434802, 6902333.667379394), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645294.2114456309, 6939505.5622746525), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435436.43874917255, 6899005.159423078), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435689.07311281946, 6899316.298638456), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362168.2750580778, 6671678.775972294), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362666.2497281428, 6670844.964735721), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362547.72093786375, 6670808.819219544), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362526.0827378818, 6670928.51220128), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362478.9256221292, 6670851.035885597), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(652467.2496226173, 7024366.255273559), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362706.7446680535, 6670928.472478726), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362649.98208401934, 6671016.555725315), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362684.49659890373, 6671172.760403143), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362540.8759895713, 6671345.847961933), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362614.8675157737, 6670865.257240725), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362357.69236613956, 6671351.569957982), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362787.6596049044, 6671365.9451913545), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363057.2377430808, 6671643.934364178), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362716.40303373133, 6671666.475150189), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(651191.9374275241, 7022972.35387525), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(651017.3810185962, 7026506.23762411), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432573.0909126843, 6895446.58471784), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434984.4585235346, 6892852.571488909), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(664866.3553439362, 6979953.9669298185), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(436785.83218701114, 6904334.346826176), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644776.7830147045, 6963014.513352863), 3067), 4326),
        NULL,
        false,
        'Kontiolahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(672560.0281172731, 7033682.002095901), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381252.8621765936, 6721371.748069294), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367295.835366105, 6670999.665149171), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408382.8758915422, 6685982.2437870605), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435735.9972974184, 6890575.613422231), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435724.77106549026, 6890491.904473243), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435738.74750747683, 6890491.94211379), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435767.7024560773, 6890616.749949074), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(641924.1738959643, 6843172.236546859), 3067), 4326),
        NULL,
        false,
        'Parikkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(653068.9904905615, 6850382.841577882), 3067), 4326),
        NULL,
        false,
        'Parikkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363632.2277539041, 6763201.406716657), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(626115.3613847271, 6850075.145641945), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(626140.8537729885, 6850117.898207379), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435925.1088711919, 6890780.1710877055), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562573.306347575, 7112481.026130652), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(513784.50246820244, 6815218.110448376), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395254.57707650366, 6696642.380623637), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(402324.5269281017, 6681514.952030283), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(515044.8402551631, 6838068.022080829), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(515030.76366831287, 6838096.471343014), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425021.35789889167, 6695028.415759987), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(559948.0593175724, 7117862.22118567), 3067), 4326),
        NULL,
        false,
        'Sotkamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562605.9271955608, 6821914.081247202), 3067), 4326),
        NULL,
        false,
        'Puumala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362879.5991386688, 6766704.214458532), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(472236.13699934504, 6819068.868653606), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(556653.9743962869, 7152144.853218689), 3067), 4326),
        NULL,
        false,
        'Ristijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366882.1201567718, 6670665.123686969), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291366.5006890822, 6880891.159018448), 3067), 4326),
        NULL,
        false,
        'Parkano',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(475216.2332993996, 6911072.821480699), 3067), 4326),
        NULL,
        false,
        'Hankasalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(572161.6319916178, 6851412.785054673), 3067), 4326),
        NULL,
        false,
        'Sulkava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(572376.5646256873, 6850877.033970208), 3067), 4326),
        NULL,
        false,
        'Sulkava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(445870.1462843794, 6921601.29431672), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(238941.19435249624, 6776047.752802282), 3067), 4326),
        NULL,
        false,
        'Eura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301903.5808430928, 6654302.301262457), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397316.9388485231, 6698445.809802695), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397307.7007474349, 6698477.688075436), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357532.81785318564, 6666474.250200812), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(220640.92500892177, 6676646.590692528), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(307405.297808205, 6772918.072719624), 3067), 4326),
        NULL,
        false,
        'Urjala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(641661.6450782281, 6943546.244800894), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363069.3490457481, 6671296.688249695), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404347.94595398236, 6694583.62938435), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404640.123118212, 6695166.84738625), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534348.1325399518, 7121199.4413414365), 3067), 4326),
        NULL,
        false,
        'Kajaani',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301456.2299456928, 6653874.219036602), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381410.274023152, 6723544.015267203), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534443.2797920306, 6975951.442664983), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534460.4741908546, 6975878.815015045), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379267.48126629257, 7172394.516590558), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378305.4271418002, 7171813.16279679), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(500162.9101682209, 7249709.781780516), 3067), 4326),
        NULL,
        false,
        'Pudasjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(500203.41451419593, 7248249.070535376), 3067), 4326),
        NULL,
        false,
        'Pudasjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534530.2464716738, 6973732.967305042), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(649012.0257499275, 6851599.971456809), 3067), 4326),
        NULL,
        false,
        'Parikkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533858.9736217406, 6972847.955999525), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535237.7628630822, 6965074.289330211), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534442.1263252452, 6965920.206966671), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(284065.3546816537, 6967854.900417402), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230541.60407104297, 6797872.633545028), 3067), 4326),
        NULL,
        false,
        'Eura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403962.29679209227, 7090884.355410378), 3067), 4326),
        NULL,
        false,
        'Nivala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532979.3011914977, 6994505.899798212), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427380.45798128546, 6762326.409995115), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380216.65344747604, 7176117.180951511), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380265.79355355643, 7176080.322979826), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535704.1892348378, 6973829.410527343), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(420005.7632675492, 6763005.161666402), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379180.3869315756, 7172432.975288711), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263917.8142865299, 6708087.143426185), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263955.2622513557, 6707966.571980451), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387285.6393497069, 7300153.206432628), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379741.6258369215, 7174365.740058783), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429693.296121191, 6820496.035639913), 3067), 4326),
        NULL,
        false,
        'Sysmä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380033.1224355557, 7175882.044519623), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381606.24330911733, 7176202.659336907), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435708.73372454796, 6902714.832893483), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434513.6848738924, 6902645.506444952), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434485.10656631633, 6902659.56238745), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434978.4155377125, 6902629.821939882), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434997.2363332128, 6902561.697669734), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434150.68716132274, 6902726.5208201315), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435408.3965838992, 6906055.333614886), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435401.61575502617, 6906014.127201111), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435374.1702534102, 6906511.704238653), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435028.6714122069, 6906742.32646181), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434979.4495443828, 6907315.611085423), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434076.862460045, 6907348.185435076), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434065.58615595737, 6907311.8637459), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433119.9387770515, 6907038.194086542), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432988.86501974025, 6906981.788647528), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433368.0495794979, 6906256.065729827), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432938.7811251416, 6908369.5332564), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433367.7559376347, 6897200.008161964), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383784.0281155144, 7176246.90561493), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382910.9857939879, 7176031.307292562), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430549.03162326245, 6761046.165456121), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430556.3839831752, 6761062.9603154), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430487.57814658503, 6761069.056128461), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430526.87086065806, 6761099.796657837), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430562.24958985747, 6761131.800275994), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430412.87265691836, 6760980.051383767), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430427.9482770738, 6761157.855028295), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430420.1515510104, 6761190.724095873), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430469.90105524193, 6761237.351176088), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430530.3565878468, 6761310.37994445), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430579.70986051694, 6761133.769608597), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430610.9276338194, 6761259.964164585), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430649.25106813345, 6761511.475504891), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430564.3055108659, 6761447.596233146), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430643.03222031257, 6761410.956170173), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430304.941068264, 6761295.382702697), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430178.33427460643, 6761323.674817736), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430122.1169653156, 6761233.654812715), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430320.0485165236, 6760894.493226946), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430264.6103777138, 6760918.472045871), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430139.29111708567, 6760960.722563325), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430331.5291566749, 6760874.25666243), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516337.7065373501, 6842310.157555835), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516398.64528898685, 6842332.345426417), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516454.35460380337, 6842347.843000122), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516207.77570961445, 6842274.5761425225), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516183.5863477225, 6842679.482640383), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516225.32246189844, 6842721.780087599), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516048.85800894414, 6842259.202542758), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516087.3077480588, 6842203.183869573), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516190.3238616676, 6842803.877587262), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516266.76337934076, 6842339.220167906), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358133.89243977313, 6669473.2462035585), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534589.621009824, 6994385.876636213), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534505.7632304684, 6994402.049353536), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534453.8246926066, 6994427.840125019), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532703.9145432081, 6969761.61826305), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532665.1590170433, 6969726.16820348), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532685.469819157, 6969733.351575546), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532648.5782943873, 6969711.938682368), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532728.720315967, 6969720.649643768), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(213893.05289903493, 6721032.306148952), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321726.9097207691, 6929156.727095827), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356116.78918490134, 6680363.501605683), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(329838.6602516391, 6698313.766432346), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(317550.56876231084, 6939477.579562312), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297457.033132741, 6988062.019480104), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228021.9991312537, 6716349.046243746), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227726.70961126828, 6716256.375027072), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(299240.740302175, 6964558.818554352), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356623.07718378655, 6685234.273147456), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337226.28747004655, 6684605.146026502), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390079.9852759093, 7163600.556264722), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(303395.32435477455, 6654825.900616422), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385662.34312888846, 7173888.504520193), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337338.3516511057, 6680952.906841074), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534524.5568993032, 6966790.257085355), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534394.1804251117, 6966876.28853268), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534805.6481443173, 6966537.581952303), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535751.0384185865, 6966352.835307516), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535624.8001265737, 6966344.448211241), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535660.0355271783, 6966418.551668282), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437404.85988835304, 7191245.4385899445), 3067), 4326),
        NULL,
        false,
        'Tyrnävä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352411.0800540257, 6700679.679853599), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352434.30490978074, 6700704.72476494), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408704.20337272424, 6723694.266201108), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(316323.38047078875, 6665097.14090371), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(405269.4468315681, 6694558.3483615415), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(405128.56323977635, 6694048.926661153), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290151.3923366776, 7076493.76569243), 3067), 4326),
        NULL,
        false,
        'Luoto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(571905.432139936, 6909996.087002736), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440071.6455703189, 6901684.506117968), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440979.1318276865, 6901871.270567262), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440985.19093140843, 6901803.2803895185), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441006.8568344236, 6901789.053803834), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(209168.77085182027, 6869720.100974112), 3067), 4326),
        NULL,
        false,
        'Merikarvia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(209181.3236837042, 6869754.8812833885), 3067), 4326),
        NULL,
        false,
        'Merikarvia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437961.2680186445, 6904832.189339441), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437835.00909173023, 6904676.481224531), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437865.28673378803, 6904694.486020163), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437918.2336941778, 6904814.327201755), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437912.1507790266, 6904789.148731), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424649.6144899856, 6696638.080193902), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385804.89961434365, 6719454.173367452), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320591.50550770893, 6819450.573595005), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(264073.4660292389, 6951378.790170545), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429983.2442299025, 6890262.96010482), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301512.48417973885, 7003245.617297012), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301142.4037057539, 7003053.029409056), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521521.45766976895, 6973998.034987477), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521513.9435005802, 6973992.709574376), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521511.1059202333, 6974003.285722532), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521501.292053182, 6974002.340064175), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521499.5411123301, 6974015.741112195), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521504.6566761341, 6974025.838346667), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521523.8012981646, 6973970.265360467), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521526.9106168354, 6973981.7490357645), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521525.72116373555, 6973986.370645829), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521531.8165612249, 6973988.783868095), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521539.58343438734, 6973978.683625958), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521536.50643301406, 6973963.359135843), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535530.4590370093, 6970147.446523025), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535526.7432066511, 6970139.375700887), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535546.3792692713, 6970140.39145882), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535548.2411030058, 6970131.80128658), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535546.5655957138, 6970123.903090477), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395702.6252085256, 6699088.063595691), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395689.1667485507, 6699022.168059591), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395720.5922357421, 6699008.893065329), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395651.38720075635, 6699028.656256844), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533304.2111311, 6968538.987565721), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429111.0829911394, 6885603.106376712), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230070.44028737824, 7005845.354203263), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428869.30966525286, 6760997.386414798), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226893.07404492408, 6713980.631721596), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226501.7466567955, 6714052.895619261), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435065.96236756083, 6906953.736822825), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325986.90925978095, 6894465.5651166), 3067), 4326),
        NULL,
        false,
        'Virrat',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429568.4040680795, 6889093.764765545), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362942.1108353633, 6671774.712407504), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363287.78512881696, 6671545.332055366), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(386465.2166451089, 7296377.797310203), 3067), 4326),
        NULL,
        false,
        'Kemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(493094.9123435758, 6808767.682492372), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492832.87080653117, 6809724.305091782), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492892.40197033255, 6809688.033339387), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492868.7989916906, 6809529.782618271), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(491857.88106453326, 6943292.990795542), 3067), 4326),
        NULL,
        false,
        'Rautalampi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(519255.4062769964, 7025269.71550524), 3067), 4326),
        NULL,
        false,
        'Lapinlahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(520056.6856844557, 7025741.583792535), 3067), 4326),
        NULL,
        false,
        'Lapinlahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(520048.03823558445, 7024779.203221566), 3067), 4326),
        NULL,
        false,
        'Lapinlahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363219.6449020435, 6672178.975612421), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363303.2649058798, 6672164.749052964), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372387.2437224196, 6756461.4409596445), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(645587.7394985723, 6938189.082358139), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(520505.8727933658, 7026399.410893527), 3067), 4326),
        NULL,
        false,
        'Lapinlahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376585.03512146365, 6698175.318068457), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(518442.3363037295, 7026238.754641521), 3067), 4326),
        NULL,
        false,
        'Lapinlahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(330808.1381078392, 6675865.6505482625), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448866.99978430226, 7380992.149139784), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331428.1428299445, 6675664.463001538), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(525096.8325578116, 7061324.889051669), 3067), 4326),
        NULL,
        false,
        'Sonkajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331857.7292785461, 6675706.411692408), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(538906.60392028, 7024979.931384861), 3067), 4326),
        NULL,
        false,
        'Lapinlahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(567427.5042302739, 6993483.099416101), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426287.70339087455, 6760387.479253631), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395281.0435779285, 6706890.124014985), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395355.3316233414, 6706746.230288615), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395327.8292359492, 6706794.398147353), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372229.1475437396, 6756406.068832564), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(365978.3757164743, 6761808.567960445), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(518863.2698587382, 7026560.256713834), 3067), 4326),
        NULL,
        false,
        'Lapinlahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(512076.5320970156, 7043570.607264874), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(512123.0870465675, 7043450.967277415), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(511801.12197833945, 7043192.841973394), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(511789.97688209754, 7046120.314306713), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(464232.6494831626, 6750238.036288199), 3067), 4326),
        NULL,
        false,
        'Iitti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(512252.0413680732, 7046390.169684938), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(467573.89281037333, 7107971.42850471), 3067), 4326),
        NULL,
        false,
        'Pyhäntä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480708.9530076271, 7057445.312718491), 3067), 4326),
        NULL,
        false,
        'Kiuruvesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396593.46322406916, 6712106.042769259), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(467888.1928949199, 7108607.162423035), 3067), 4326),
        NULL,
        false,
        'Pyhäntä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(449650.6086507513, 7116576.674372793), 3067), 4326),
        NULL,
        false,
        'Siikalatva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435255.13388164213, 7155381.197314833), 3067), 4326),
        NULL,
        false,
        'Siikalatva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321437.7541741038, 6817604.830313505), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(243132.49381329768, 6728653.308889024), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(414416.3872448458, 7165853.115133134), 3067), 4326),
        NULL,
        false,
        'Siikajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(413680.01318869344, 7165987.308840335), 3067), 4326),
        NULL,
        false,
        'Siikajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408852.37678189296, 7172679.278722028), 3067), 4326),
        NULL,
        false,
        'Siikajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(409304.190999538, 7172773.445706972), 3067), 4326),
        NULL,
        false,
        'Siikajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408333.8699709978, 6685933.6079332875), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408316.7018522608, 6685931.504712691), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(409501.6515959761, 7144010.389541815), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408345.86556068005, 6684054.655866323), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408315.4499737046, 6684010.920748781), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408334.98135737947, 6684024.684618575), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408302.89453411096, 6685948.842126794), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492115.2176139331, 7159541.4175520865), 3067), 4326),
        NULL,
        false,
        'Vaala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492082.04461216764, 7159865.096042344), 3067), 4326),
        NULL,
        false,
        'Vaala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492580.4651404542, 7159635.010824409), 3067), 4326),
        NULL,
        false,
        'Vaala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362394.75514707045, 6766235.446136242), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(666554.0730158584, 6980392.06455356), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408433.6341680087, 6723672.168399383), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407022.98807462986, 6722969.245634126), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533626.5921808658, 6972874.802427508), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533857.076998622, 6973091.071522102), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533856.7741045109, 6973108.560589497), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(473343.34117961716, 7182231.743496532), 3067), 4326),
        NULL,
        false,
        'Utajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(219107.84083415792, 6828450.9291116325), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(472511.20247553627, 7181567.794424619), 3067), 4326),
        NULL,
        false,
        'Utajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(472276.5857008868, 7182084.443247051), 3067), 4326),
        NULL,
        false,
        'Utajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358799.3171411095, 6762573.219204262), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533559.8412659384, 6973147.1743641645), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(472231.8373441745, 7182297.74626582), 3067), 4326),
        NULL,
        false,
        'Utajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352699.1310683818, 6690852.421901939), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535373.6479323033, 6974312.237162625), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535418.2223322603, 6974327.393620052), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535474.9920801298, 6974334.56522431), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535418.086913497, 6974254.972749454), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535036.2718049592, 6974182.38740921), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535045.439867356, 6974261.207172765), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534378.2831231304, 6973322.494149371), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534451.9473278765, 6973288.366693019), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(473145.5010571441, 7181091.346474684), 3067), 4326),
        NULL,
        false,
        'Utajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(576545.7803719089, 6964388.946221213), 3067), 4326),
        NULL,
        false,
        'Tuusniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(451436.89174840343, 7187481.4361369675), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453207.8079035064, 7185972.38295409), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453561.90373525914, 7186663.731365881), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(283939.6742613014, 6752612.883389013), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434171.77650703967, 6901615.5099835005), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(452732.09185956785, 7186603.423849565), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438581.0234315393, 6900117.113475123), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438558.20190665114, 6900124.356553311), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438553.12584605237, 6900098.421583463), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438571.62031817075, 6900080.298419755), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(454229.183429436, 7188303.435604784), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(436317.36455698824, 6899720.4358808985), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(436284.14305448113, 6899721.959700934), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(436378.5118602705, 6899762.246881478), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437922.83315142425, 6900647.06709343), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(450382.89024157525, 7189057.031720779), 3067), 4326),
        NULL,
        false,
        'Muhos',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433982.4243433937, 6901244.617080609), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531667.5924407736, 7194089.625438059), 3067), 4326),
        NULL,
        false,
        'Puolanka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244429.34963413447, 6705704.493366339), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433159.7275501017, 6900329.653442577), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433217.374646085, 6900440.894843714), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434414.1596361207, 6901186.50957671), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338531.824096992, 6683208.087310413), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327392.8847032995, 6800220.901280294), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433829.86756768875, 6901597.346502733), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433894.9078291869, 6901566.489456558), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433481.072248281, 6900748.219821049), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438618.25456446846, 6902976.373873679), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(349713.74507743993, 6691610.229581779), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352514.38658560766, 6691600.622736132), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352514.02228575153, 6691543.233843353), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319414.0050014441, 6829731.8581231525), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228708.96352725656, 7011547.777314733), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(296308.4105418315, 7084665.521476191), 3067), 4326),
        NULL,
        false,
        'Luoto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435484.7633013361, 6902723.065093124), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222142.69887027083, 6703449.1182153495), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424189.25760966394, 7187032.359492072), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435637.6449434835, 6899241.820712566), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(515267.2427501601, 7002452.040201688), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434997.20963777945, 6902287.407759791), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434980.4037728258, 6902268.187753351), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434961.30517784413, 6902290.545926028), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434976.7636437881, 6902285.227772374), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533237.1346556583, 6973632.812252494), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(497100.5540771143, 6703553.957993862), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(554962.9699770417, 7008566.314413082), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(554759.348331976, 7008742.47254496), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534612.4951458296, 6972432.376886297), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534630.6471711616, 6972379.756598217), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534724.8278445702, 6972373.298311665), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534671.4854018048, 6972555.980827738), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534818.5918676041, 6972462.144355939), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534730.9965814913, 6974672.90069846), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534522.8249682232, 6974661.737023639), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(577581.5284350666, 7051864.714529303), 3067), 4326),
        NULL,
        false,
        'Rautavaara',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(577467.5796103851, 7051533.32443258), 3067), 4326),
        NULL,
        false,
        'Rautavaara',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419676.09666789556, 7113414.490393114), 3067), 4326),
        NULL,
        false,
        'Haapavesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287570.12968675984, 6700655.637784484), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419285.76385213993, 7114555.54558498), 3067), 4326),
        NULL,
        false,
        'Haapavesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424959.97486662766, 6757551.392458222), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534106.1508873221, 6974260.980228088), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534427.3016750211, 6974285.013995744), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(236442.3750449026, 6850776.685719103), 3067), 4326),
        NULL,
        false,
        'Pomarkku',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(508399.64895653585, 6715546.0032838015), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(508320.6432622368, 6714655.198900127), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(508344.87324632215, 6714656.014170321), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419119.05843262334, 7113763.290293234), 3067), 4326),
        NULL,
        false,
        'Haapavesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492089.66376024595, 6705688.024504667), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395406.57399221085, 6699098.110159402), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(511227.6193071457, 6714671.815609307), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(506988.7118933813, 6713388.828080176), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(496588.18373129587, 6708566.833304359), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(493472.44907441165, 6701743.250782259), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533977.9080307164, 6972846.551752229), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435962.3832142114, 6902511.868891842), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435837.5273082391, 6902531.329712624), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366730.8629141505, 6670774.73524089), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430416.58549907233, 6764330.995816878), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434082.2810609457, 6763648.286835991), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534624.1175393024, 6973524.343488391), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(388188.894878106, 6714274.086682869), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535099.8514290381, 6973424.292253672), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535109.5043870178, 6973433.327929811), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535249.7274973455, 6973438.641964579), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535239.9206390743, 6973355.222422163), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535008.8792591903, 6973679.9288936), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535254.590783207, 6973280.434238683), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535210.8942858166, 6973249.258299081), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395549.3003142491, 6712010.154401873), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395307.47132192436, 6699070.610904438), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(304622.9151082388, 7072130.957903343), 3067), 4326),
        NULL,
        false,
        'Kruunupyy',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535261.9396659429, 6973214.411230471), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(202188.26203305597, 6931381.861662971), 3067), 4326),
        NULL,
        false,
        'Kaskinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(354098.8391855868, 6693866.831924711), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390334.1820848036, 6698378.421595973), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532673.3515813329, 6970432.097932181), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(342363.7033353448, 6819781.020615381), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(625730.8914968509, 6812937.946345212), 3067), 4326),
        NULL,
        false,
        'Rautjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(625694.1703020501, 6813277.403041621), 3067), 4326),
        NULL,
        false,
        'Rautjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(611928.8077267221, 6798111.568215941), 3067), 4326),
        NULL,
        false,
        'Rautjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(602942.7275664211, 6956850.607859339), 3067), 4326),
        NULL,
        false,
        'Outokumpu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(602797.8360787855, 6957016.820136902), 3067), 4326),
        NULL,
        false,
        'Outokumpu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534507.0857028416, 6976029.801545558), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227068.77476475868, 6714485.84107707), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395546.7380368619, 6696938.398014195), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395597.602611448, 6696924.195845777), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395645.0256519906, 6696904.55057278), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(584337.0735551363, 6922760.576940535), 3067), 4326),
        NULL,
        false,
        'Heinävesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395880.30958751426, 6697430.487771814), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(288421.7180245056, 6806991.477406167), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644777.8592157371, 6945626.2288739225), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644739.273570742, 6945673.702392628), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644765.1128356919, 6945592.1029228605), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(644786.4692837225, 6945582.477307336), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435678.02716805256, 6902702.069137727), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532261.2061395224, 6994490.976079603), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(565121.8820356424, 6907669.654997459), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394544.4956978407, 6698466.947057365), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(467174.9706615426, 7005636.798787676), 3067), 4326),
        NULL,
        false,
        'Keitele',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531316.3648232535, 6945086.834225983), 3067), 4326),
        NULL,
        false,
        'Leppävirta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534265.619249265, 6924229.550190233), 3067), 4326),
        NULL,
        false,
        'Leppävirta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534249.2576463748, 6924277.476506489), 3067), 4326),
        NULL,
        false,
        'Leppävirta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534296.6842530876, 6924477.655626581), 3067), 4326),
        NULL,
        false,
        'Leppävirta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(544607.1363791431, 6913224.204732646), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(544451.1884752029, 6913542.66171323), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(544452.072776626, 6911068.011708461), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372762.56880333787, 6706588.862468768), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(544723.050761334, 6909343.823022135), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453461.4445554057, 7060325.153073104), 3067), 4326),
        NULL,
        false,
        'Pyhäjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(452933.5788381103, 7060432.265235122), 3067), 4326),
        NULL,
        false,
        'Pyhäjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536958.8814494298, 6987117.51327689), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(449450.50402831583, 7061132.916607457), 3067), 4326),
        NULL,
        false,
        'Pyhäjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287429.64393460396, 6969796.472215435), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390332.354356726, 7067992.4535891265), 3067), 4326),
        NULL,
        false,
        'Sievi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487940.7347238856, 6750354.600411611), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301352.7019845345, 6654852.33663371), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(208429.4986448665, 6940174.783347879), 3067), 4326),
        NULL,
        false,
        'Närpiö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(335294.6654120824, 6680935.071045812), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(335320.7420833169, 6680922.265179706), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352955.5462047896, 6691127.665979358), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535629.9845031165, 6968675.1963301515), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352417.9286241847, 6690532.760815347), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352408.6772043833, 6690625.980434715), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352517.44048548833, 6690699.964581927), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352592.43597988144, 6690739.051320028), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352481.8232549744, 6690658.624675959), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352291.40189473785, 6691272.252615534), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352242.79405973287, 6691291.167253214), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338723.08025034174, 6989301.381308211), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338730.94471089175, 6989242.048888515), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642744.34522161, 6942630.081727622), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642757.0232067073, 6942660.6417134), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642769.915489399, 6942542.879758109), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642753.2032992673, 6942578.004642496), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337656.6206568491, 6683523.193043827), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337576.29907403083, 6683493.750688417), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337622.79103277606, 6683526.809960608), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337648.59832754085, 6683541.325376553), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338436.0516191849, 6991845.765518968), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642865.4688619855, 6942776.720515148), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395447.4885527018, 6698400.09413374), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395482.2925201388, 6698433.603779143), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379703.7370436451, 7174599.172890036), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338343.2615109208, 6990501.259327555), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391975.13754307176, 6697500.767897551), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337194.1607531878, 6989053.909558143), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337127.7365455181, 6989027.9553601155), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478255.8661846496, 7146456.146610935), 3067), 4326),
        NULL,
        false,
        'Vaala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247338.9026809558, 6993251.524686536), 3067), 4326),
        NULL,
        false,
        'Laihia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251382.43939912037, 6930997.709088211), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396112.72136358364, 6704743.079039677), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396140.20299692184, 6705195.684258954), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395763.18884156476, 6704332.1566601945), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396811.73321767466, 6704355.103599881), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(589927.2948946132, 7062455.605499652), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395276.6816332805, 6707173.873352085), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395283.12047692953, 6707120.924246215), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395770.49113121175, 6706661.643427147), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352004.81136383157, 6690980.487918666), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351953.88449902297, 6690886.129382619), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351934.99152722314, 6690782.767055173), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352272.41384603624, 6691093.102245818), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352225.3280168382, 6691081.226243831), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352314.18601664476, 6691119.909493084), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352170.7687810115, 6691064.467361098), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351899.41914347233, 6690656.5499765165), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351928.49974924873, 6690654.803029445), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351870.2973207296, 6690582.8333707955), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351896.3050680183, 6690557.981310168), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352163.2407413187, 6690853.694658063), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352192.87000287196, 6690883.342444935), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352207.0669475241, 6690928.964434555), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352235.5584224177, 6690973.324152071), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352273.59671260696, 6691012.397058321), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352338.18004671263, 6691044.45017618), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394901.27740889514, 6698091.377016744), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394951.62388693943, 6698078.665690991), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351359.98321531527, 6690729.097118366), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395088.9496495496, 6698189.37888296), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395089.68259920704, 6698226.975266691), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(605249.6413162271, 7049963.701829721), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(588455.3454499625, 7063563.308700367), 3067), 4326),
        NULL,
        false,
        'Nurmes',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300813.5463984721, 6656367.587575531), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533903.3584215416, 6973883.861536302), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359501.05788983265, 6763501.919223957), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359575.0517538796, 6763518.815754978), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359584.46744713077, 6763494.228440899), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359537.17313342576, 6763474.814494809), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359532.1804368269, 6763456.191979329), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282232.9315966766, 6702793.213773795), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396682.3834937768, 6707814.910826307), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396646.62648674176, 6707800.439807405), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333231.6579997669, 6677540.785185333), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533701.9765557143, 6973985.669154286), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564770.5008310322, 6770865.351582198), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309690.3947337246, 7083460.462252701), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432814.6836682791, 6902046.067799663), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432838.8570814157, 6902053.908012174), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432862.18917526404, 6902109.929812461), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432783.14228335914, 6902106.164212683), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533649.0727914093, 6973928.078793522), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533565.2759416002, 6973926.3347149305), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(556884.0949395683, 6781488.851904096), 3067), 4326),
        NULL,
        false,
        'Taipalsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(556928.0341589915, 6781449.519478445), 3067), 4326),
        NULL,
        false,
        'Taipalsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(456482.67246422137, 6721508.994451652), 3067), 4326),
        NULL,
        false,
        'Lapinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(456719.87715332885, 6721394.658900409), 3067), 4326),
        NULL,
        false,
        'Lapinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(456582.35412638204, 6721474.166004936), 3067), 4326),
        NULL,
        false,
        'Lapinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(456230.8622086925, 6721204.491274202), 3067), 4326),
        NULL,
        false,
        'Lapinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534188.9588417968, 6973691.501882361), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534174.171161426, 6973693.912858724), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(558152.0410777038, 6778521.89428181), 3067), 4326),
        NULL,
        false,
        'Taipalsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434484.63855110767, 6906941.5351727065), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434413.97048253776, 6906952.192259891), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380282.08073714573, 6905818.3489581505), 3067), 4326),
        NULL,
        false,
        'Keuruu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437134.5680485445, 6904086.654749197), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(452236.88354713225, 6885555.982671111), 3067), 4326),
        NULL,
        false,
        'Toivakka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(452209.88129061443, 6885493.855329858), 3067), 4326),
        NULL,
        false,
        'Toivakka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422279.9240350952, 6724080.766641626), 3067), 4326),
        NULL,
        false,
        'Pukkila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(243896.1705505876, 6728822.532185653), 3067), 4326),
        NULL,
        false,
        'Rusko',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(243286.2992210275, 6960468.868082932), 3067), 4326),
        NULL,
        false,
        'Kurikka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395216.64908364107, 6697848.722662197), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395187.5444520803, 6697854.906381664), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(220115.00774013737, 6828348.741570274), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(640832.144892537, 6945035.293940194), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394949.4744627186, 6703915.624354177), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323593.96466431144, 6827601.743011796), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423084.5466411723, 6711037.25802866), 3067), 4326),
        NULL,
        false,
        'Askola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509435.31494606263, 7047034.4388916725), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509916.8215045239, 7047691.769991288), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(580956.2858384344, 6776922.95176948), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(496587.22884594824, 6702141.7642407), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(511155.2353400576, 7046463.078146278), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(511397.16305908596, 7046694.137860197), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(511473.34800297633, 7047068.071024687), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(511317.85842413607, 7047365.83391935), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(508910.80374422634, 7049329.7129547065), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(508779.40301774535, 7049462.683745977), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395834.13720164733, 6697620.287809764), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395828.36573179293, 6697664.155844387), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(307982.0141625418, 6670876.68042776), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(512224.8978013948, 7046998.765403351), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435480.50746769167, 6902899.357633244), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510663.14652176714, 7047198.623098289), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510779.6878561538, 7049814.167468193), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510481.69780230575, 7048954.789484547), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510091.0306543691, 7048725.457895539), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510324.9376874262, 7049123.953580259), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(387230.7672946925, 7300150.561322544), 3067), 4326),
        NULL,
        false,
        'Keminmaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481442.99555624044, 7058325.993497443), 3067), 4326),
        NULL,
        false,
        'Kiuruvesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481093.53003394295, 7057761.1586768115), 3067), 4326),
        NULL,
        false,
        'Kiuruvesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480940.614443676, 7058448.342092898), 3067), 4326),
        NULL,
        false,
        'Kiuruvesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396173.645103302, 6697460.410294547), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480836.3573214341, 7058508.12928525), 3067), 4326),
        NULL,
        false,
        'Kiuruvesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(261027.3169807737, 7011399.984475184), 3067), 4326),
        NULL,
        false,
        'Vöyri',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(219944.86213425564, 7024126.794447335), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482192.76310830127, 7057096.2306090705), 3067), 4326),
        NULL,
        false,
        'Kiuruvesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396037.17989716015, 6697638.714985981), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(346983.8347886803, 6876396.421840678), 3067), 4326),
        NULL,
        false,
        'Ruovesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395613.8214699967, 6697058.1610551765), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492785.2306760709, 7051229.311795944), 3067), 4326),
        NULL,
        false,
        'Iisalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395161.7507215055, 6698025.061191614), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395728.9811479937, 6697329.657443536), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(552706.4833104863, 7017831.780595432), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338281.98245440685, 6681893.455443864), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338189.9720505118, 6681776.7473047), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338229.78724933043, 6681586.5961671285), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(336113.85413786594, 6682183.014120073), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(333985.3691558211, 6680418.089692408), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285385.8674219429, 6752921.37846849), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285367.94405380735, 6752941.001206068), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(595193.251929019, 6862557.326613508), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339335.53694069164, 6681969.637655337), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339282.76272121124, 6681987.647050097), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339219.71876360994, 6681940.942521336), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339236.0808106546, 6681914.428772123), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339305.88914074085, 6681861.93346648), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339530.23316216713, 6682240.67957085), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285829.93434392463, 6752560.526986628), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394473.30398839724, 6725370.245906401), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396984.12027148425, 6707798.377472415), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341014.5576007013, 6683732.838958932), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(340983.9938647075, 6683700.500202657), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338358.7194723481, 6682278.233528351), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337785.0197444092, 6682818.605375619), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337925.3600568352, 6683070.301843483), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338553.3677999089, 6683514.603807969), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338797.02694491105, 6683524.859106629), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338730.65292906156, 6683620.6401704885), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338829.03815761313, 6683558.924026244), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(338945.1143417999, 6681429.127405928), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(614895.8777547403, 6895160.263955355), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(622561.5296779914, 6935816.785085036), 3067), 4326),
        NULL,
        false,
        'Liperi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397526.943017291, 6697331.838277496), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408839.46483629127, 6804372.508797843), 3067), 4326),
        NULL,
        false,
        'Padasjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(407707.03490088385, 6803733.326360155), 3067), 4326),
        NULL,
        false,
        'Padasjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326496.1352000896, 6802308.40436815), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326502.8864271822, 6802252.949048419), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376929.09263028606, 6694764.239834051), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380635.31517702155, 6706531.445052107), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380825.01722501416, 6706491.644143708), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379075.43174940057, 6705263.193383549), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(501892.3495839264, 6838542.247923864), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534564.1730901254, 6974010.599620294), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535110.1441183062, 6974128.359494178), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535163.4047374985, 6974200.912968887), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535023.7328961213, 6974005.589900828), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535108.1393512121, 6974015.488080224), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535285.6998148501, 6974036.896883258), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535082.3385335944, 6973557.212571105), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535197.2215267541, 6973705.969294593), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535149.8969359613, 6973674.3712312365), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345109.1739427537, 6686867.797881351), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345018.7587999552, 6686869.974425325), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(340973.02104627166, 6685110.186470827), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341143.8241747108, 6685154.189133308), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341162.62422505626, 6685137.156324205), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534753.6032216774, 6973452.8990583895), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(619339.9493329545, 6866818.791303168), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(620483.835040233, 6866391.355547702), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345560.8651248252, 6687211.899946496), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345576.27412753925, 6687347.494782724), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(620091.1566788335, 6867318.973833112), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(618767.4983029097, 6865410.869753168), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534261.1742374436, 6972937.257538374), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534268.1993755233, 6972941.00047459), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(530791.5589566374, 6973366.083957433), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(498295.5152622825, 6974159.246101742), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(498283.2219950089, 6974143.545000573), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(344312.03504501394, 6686283.762974217), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419927.0675960178, 6762478.3258518465), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419926.35935685976, 6762459.068671561), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287292.9459334721, 6826553.513506197), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287284.4106367005, 6826510.282756788), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287700.03063811397, 6826176.688201985), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339628.9042379904, 6923560.887442041), 3067), 4326),
        NULL,
        false,
        'Virrat',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297859.26354664174, 6988812.186264178), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642365.4120862853, 6942222.080332717), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642377.8451049603, 6942267.255815739), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642391.5391665318, 6942238.666332533), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536026.001071736, 6974688.699725745), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395560.00738158845, 6712268.220227328), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292517.56999197276, 6975672.4731607465), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(609706.3035106731, 6863074.936223155), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291972.5871987923, 6973145.408578153), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326340.69712365366, 6801701.370121119), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326364.18250211625, 6801629.360622739), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326339.0038109469, 6801566.930436362), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326300.41079940536, 6801799.941389854), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533965.0295173412, 6973125.219511384), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326416.6739627376, 6796734.008195049), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535400.0703943352, 6969465.270319702), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533999.0843485709, 6966830.041471731), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533795.0195441723, 6966762.090805278), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533830.4157838123, 6966815.996959264), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531961.9803949136, 6977719.367222242), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531948.2035015298, 6977760.381442115), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531967.2415802769, 6977698.187409207), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(265745.4629854264, 6763892.502667008), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535271.0086780733, 6968899.888682367), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535237.3165092712, 6968737.886378551), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510306.4511713999, 6876053.410340172), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326040.5113224165, 6801957.964972599), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419707.51703021687, 6762712.91475171), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419713.14869481354, 6762735.128924504), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396792.5238353833, 6713237.714783353), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531038.2218321587, 6964404.922208239), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531137.1712854978, 6964533.403608463), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(531171.8993285388, 6964497.627697795), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(213992.31778911158, 6794601.096697237), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(230606.64906231998, 7011311.205315971), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(351146.4626777525, 6690761.138485261), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252856.82666800605, 6708087.914128975), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252254.19440770874, 6708389.329083799), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291715.7969454959, 6824949.783133628), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(291619.01211443724, 6762298.740195697), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(347891.58646263304, 6714529.572456434), 3067), 4326),
        NULL,
        false,
        'Karkkila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(309215.10401599837, 6876195.381032482), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(701206.5228856896, 6954405.966944548), 3067), 4326),
        NULL,
        false,
        'Ilomantsi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486570.7419429041, 6747503.54069848), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289723.9126419083, 6963776.597072534), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323570.7433382547, 6819011.240045535), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325447.20876205864, 6818107.207175782), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(328073.7617044837, 6806933.032572132), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240515.08604380055, 6807534.572752557), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(474938.53988082404, 6706424.312630672), 3067), 4326),
        NULL,
        false,
        'Pyhtää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426214.912330407, 6698215.962862681), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426179.5164524073, 6698017.342800708), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396748.4591548631, 7368119.250157895), 3067), 4326),
        NULL,
        false,
        'Ylitornio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394945.3304678494, 6698384.956165466), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(434306.66023613577, 6902865.005063645), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430608.06866926997, 6763696.236978079), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438249.7491834534, 6905155.998037694), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357380.6757530036, 6666443.77619649), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246613.36262596978, 6704177.8633391475), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433073.49910986517, 7367530.896744885), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395005.43968270125, 6695344.88717157), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441843.27495231765, 7378125.3033355465), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(328285.17443031445, 6800935.4637330985), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241010.95508816198, 6806309.767101567), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(296904.8100762247, 6987937.87588198), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(239635.61698221447, 6807516.517897744), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(660573.9829522377, 6966307.6932975445), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262443.8848405016, 6992593.42538042), 3067), 4326),
        NULL,
        false,
        'Isokyrö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481962.8880540486, 7477962.523043089), 3067), 4326),
        NULL,
        false,
        'Sodankylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(399233.5207240938, 6698449.761109371), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322124.97425699217, 6828707.504576566), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(489639.3083958401, 6756460.640280474), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240486.13297066983, 6807496.036379044), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(513150.2590478067, 6840636.742211013), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484196.9721095715, 6746405.118247922), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484114.3896758296, 6746264.776313557), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(335534.17277121346, 6680848.949476569), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(335649.8800431493, 6680947.955073827), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263154.58344826417, 6913557.016967825), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251095.33106351164, 6932313.632275889), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251239.90839655077, 6932335.220114127), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395725.7731667598, 6698791.793281783), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250985.64196839294, 6930738.804155061), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(236099.74513781574, 6811145.5318241585), 3067), 4326),
        NULL,
        false,
        'Nakkila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(491024.96466008434, 6943968.117287749), 3067), 4326),
        NULL,
        false,
        'Rautalampi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480234.62254845997, 6752463.793603083), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(264300.65878684446, 6707976.725840641), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(264102.2929524426, 6708027.945945747), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250859.67388213638, 6932019.131887243), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250876.8820244374, 6932024.292527673), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250812.07905350882, 6932020.118339496), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250942.03430525222, 6931965.606662469), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485799.37217162014, 6750278.998942172), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485760.1407439691, 6750345.69832578), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345332.20871670614, 6776377.622592155), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(239800.2506045833, 6809970.255812443), 3067), 4326),
        NULL,
        false,
        'Harjavalta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428513.9464688823, 6754538.749984645), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352952.55740423664, 6691332.531894037), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352984.52681905776, 6691172.38501614), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361061.3859958036, 6698633.152485059), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534410.8589371741, 6973434.471488666), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251178.46133568007, 6932057.862687212), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485136.0201790962, 6750396.960280574), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324014.4932809594, 6745858.49649164), 3067), 4326),
        NULL,
        false,
        'Tammela',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484520.39203998767, 6748077.969654922), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(482958.41475710983, 6748016.758201091), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290338.4073757675, 7024532.586595684), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341360.69537220517, 6796213.840074009), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341409.88369818946, 6796221.125692581), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341348.6960669764, 6796166.7820132375), 3067), 4326),
        NULL,
        false,
        'Valkeakoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(471978.5389337425, 6768895.923320935), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389056.16702738986, 6701272.834446643), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(639713.1835214463, 6943775.41864825), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(485080.9396862389, 6749971.91076454), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226633.97313047177, 6713207.601795845), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536777.17225987, 6984727.06232464), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484439.48635103425, 6749752.148167267), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(660892.5052024515, 6966754.603610663), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(368268.6330377715, 6712689.269298511), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(368383.0889257298, 6712794.699821948), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262217.0680600482, 6865674.7740976615), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(513103.9612016138, 6819972.07739928), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322240.7967805052, 6818466.832794668), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360366.6673181666, 6764724.024593353), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281585.5707257342, 6807724.546268626), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(222615.41922734655, 6828826.252123892), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290700.2077673064, 7018045.3454617085), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225295.5044028538, 6829253.534582152), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225188.04869186247, 6829098.7248879885), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359197.8094211986, 6764183.1378988875), 3067), 4326),
        NULL,
        false,
        'Hämeenlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224405.82423937245, 6829638.335741203), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(487371.45685925323, 7012251.080757633), 3067), 4326),
        NULL,
        false,
        'Pielavesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227968.29331403933, 6829290.887829391), 3067), 4326),
        NULL,
        false,
        'Ulvila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225500.61744623436, 6830932.06560888), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(369596.89533425705, 6749014.093379369), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225305.4224960066, 6825886.087738287), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225265.68783055487, 6825852.302806043), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(621987.5123007244, 7113247.455883446), 3067), 4326),
        NULL,
        false,
        'Kuhmo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(470936.3542973731, 6709997.290749922), 3067), 4326),
        NULL,
        false,
        'Loviisa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534264.3737487008, 6994501.416629795), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534389.2343493596, 6994521.893250508), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356588.67939877464, 6770353.167301087), 3067), 4326),
        NULL,
        false,
        'Hattula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(240168.01744961215, 6694220.642486505), 3067), 4326),
        NULL,
        false,
        'Parainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428727.50187032233, 6694085.101107425), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(596505.2200435697, 7340199.515669036), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(292817.113981637, 6854596.5454188185), 3067), 4326),
        NULL,
        false,
        'Ikaalinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(289670.22247476917, 6656267.747215885), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286327.0921619233, 6698411.873584145), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(276158.37472292397, 6693834.662512245), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(640035.3721506504, 7001299.226179964), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(640108.9345315003, 7001331.516820807), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287026.97123019816, 6700495.646134476), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(347705.77114347566, 6965124.347415129), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345068.5569533592, 6674276.633161991), 3067), 4326),
        NULL,
        false,
        'Siuntio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315885.87310630304, 6745901.284795467), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315938.8646104112, 6745881.0217512585), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(314862.04989636166, 6745894.388177623), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225240.08639788083, 6830082.594404091), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225193.34921392842, 6830088.961281687), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225180.1434580663, 6830098.567187059), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225254.98969460482, 6830042.836425567), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225267.92622781222, 6830033.087765185), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225242.7443137491, 6830012.19099739), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225314.54458281244, 6829978.97117216), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(500959.50915830774, 6948531.493619508), 3067), 4326),
        NULL,
        false,
        'Suonenjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225199.4422292442, 6830127.027266203), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225211.8006370688, 6830105.418462564), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427270.7585350069, 6760447.044563715), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(327041.09654390084, 6813504.250941194), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225198.6857902671, 6830108.300626118), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225225.11286340837, 6830065.174804009), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(237852.52404071784, 6768831.091821649), 3067), 4326),
        NULL,
        false,
        'Eura',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430373.34650737804, 6819196.021412523), 3067), 4326),
        NULL,
        false,
        'Sysmä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321839.7646670771, 6819300.686196352), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424602.610238193, 6897020.848397804), 3067), 4326),
        NULL,
        false,
        'Muurame',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345670.1126038741, 7126932.901954658), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345563.3989697981, 7126903.606196098), 3067), 4326),
        NULL,
        false,
        'Kalajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396369.71799455304, 6697822.114806945), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396363.1977364138, 6697765.921399155), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396361.3479923254, 6697733.261213619), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326428.84895115154, 6802044.500668663), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326362.5835192288, 6802128.202267038), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325680.211687878, 6803455.931376666), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322676.61281345953, 6804792.025114317), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322688.7464306008, 6804841.182755622), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478526.4320109872, 6746477.895304285), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(372821.76381331676, 6756571.669275765), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394056.0672755992, 6698618.415339436), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(264668.718596148, 6710074.8646941995), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564495.1665558273, 6769361.446401602), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(328836.4691437556, 6807252.1532298075), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395371.9206343343, 6704115.029870783), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395304.64487439534, 6704162.563539637), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395382.4608142694, 6704204.573403249), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395463.0204558851, 6704127.237634877), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395454.1872637748, 6704304.5087272655), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395279.26637277147, 6704352.860405406), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395360.6738512454, 6704374.655937086), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395436.2060775943, 6704384.719269124), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432989.96865886875, 6902752.691573301), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492863.98418682994, 6810346.044691419), 3067), 4326),
        NULL,
        false,
        'Mäntyharju',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(311836.339121816, 6816646.307499312), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389092.50684297155, 6697346.284305852), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315672.2704688358, 6831665.792446195), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(315711.86397799314, 6831642.488655353), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(514871.4702871342, 6841377.805919483), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(514409.9149953205, 6841377.497992309), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(447365.47528799134, 6785919.173829455), 3067), 4326),
        NULL,
        false,
        'Heinola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320290.20079667063, 6818836.112618319), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(576530.0814739285, 6964381.0461782925), 3067), 4326),
        NULL,
        false,
        'Tuusniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246521.41520420546, 6709739.091788203), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378996.6542711422, 6705398.794564519), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321821.9764232875, 6817520.995120941), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(417436.73649752216, 6741658.006801793), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224493.7857202908, 6735063.230479801), 3067), 4326),
        NULL,
        false,
        'Mynämäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429319.81889818964, 6918678.727999486), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429388.5881577498, 6918617.988436719), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(319437.92359879735, 6831756.589629142), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224143.4959972772, 6830067.744937173), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224728.01146494964, 6829224.822665398), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224716.74229086537, 6829787.651364665), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224639.32198322905, 6829817.996669051), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224591.6860050127, 6829827.925814253), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224382.27549863906, 6829908.968223396), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223794.35585329853, 6830308.855811636), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224215.2251248404, 6829975.228231092), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224310.38242493823, 6829930.503642038), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224454.26276121425, 6829888.6404450135), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224533.1390322547, 6829646.381460504), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224480.36787787313, 6829569.697770628), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(224273.01462990712, 6829850.864760672), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564606.8460686652, 6769885.020316683), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564699.2747586555, 6769900.705856705), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(479513.6795827583, 6752921.433643496), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(243833.99197743944, 6936007.532467537), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324688.4827603213, 6820081.531173728), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427589.35523534083, 7191841.025456092), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426798.65052214067, 7194504.803947759), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(270697.5799678144, 6790071.88944672), 3067), 4326),
        NULL,
        false,
        'Huittinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428098.69076584006, 7194003.062335532), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428047.5267968916, 7194053.48501107), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427365.9960044227, 7193727.798935328), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(345180.5180250809, 6816869.303156904), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423699.93541959615, 6690702.715669821), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423800.8371705655, 6690995.740810527), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(433260.72186302283, 6902397.36057301), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331242.00260827044, 6945927.151433345), 3067), 4326),
        NULL,
        false,
        'Alavus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(263270.0721984692, 6677302.292250001), 3067), 4326),
        NULL,
        false,
        'Kemiönsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427166.7971738211, 7193746.718791301), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427288.0722089549, 7193621.895791789), 3067), 4326),
        NULL,
        false,
        'Liminka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(316546.67803331814, 6745472.016830197), 3067), 4326),
        NULL,
        false,
        'Forssa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(342411.0475172661, 6824846.783949869), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255712.51808736584, 6690220.949732676), 3067), 4326),
        NULL,
        false,
        'Sauvo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290650.74424419977, 6782286.518011668), 3067), 4326),
        NULL,
        false,
        'Punkalaidun',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290657.9482124322, 6782296.539265578), 3067), 4326),
        NULL,
        false,
        'Punkalaidun',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(290664.6490443529, 6782279.282903373), 3067), 4326),
        NULL,
        false,
        'Punkalaidun',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(512563.9600004847, 6839560.844903338), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(596536.6466900544, 6860669.817072255), 3067), 4326),
        NULL,
        false,
        'Savonlinna',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390783.5373051196, 6673663.735824021), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562542.4232641683, 7712138.954393003), 3067), 4326),
        NULL,
        false,
        'Inari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408963.95237110124, 7526430.004471758), 3067), 4326),
        NULL,
        false,
        'Kittilä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(332569.2476799455, 6786913.204248682), 3067), 4326),
        NULL,
        false,
        'Akaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395084.0451218559, 6696574.177895445), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395087.85913593526, 6696601.560443418), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395111.6226362258, 6696583.428364419), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(521878.5783025481, 7617036.050626243), 3067), 4326),
        NULL,
        false,
        'Inari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(341082.58499188063, 6992516.228502387), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(283775.57550645986, 6754027.236829212), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(331967.30872675456, 6998369.120879464), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(264112.3669422407, 6857377.5744843), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(516990.5488634771, 7589419.686224145), 3067), 4326),
        NULL,
        false,
        'Inari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(210866.08315828748, 6870493.876834132), 3067), 4326),
        NULL,
        false,
        'Merikarvia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424210.0642901815, 7245669.077818931), 3067), 4326),
        NULL,
        false,
        'Ii',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252111.5668690471, 6932677.973449633), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(386962.8874436391, 6673068.417526349), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(472105.9969124932, 6769748.648366124), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251461.07481393495, 6932606.370708673), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251421.78547539224, 6773020.486409775), 3067), 4326),
        NULL,
        false,
        'Säkylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422610.01106519584, 6690984.875450056), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253598.3016041323, 6933961.650176922), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253654.91759809174, 6933994.653245943), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(253631.64134315844, 6934123.957434286), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(254478.42171703817, 6931094.250486933), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422405.86253742647, 6765699.5345124025), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423443.66838763, 6692131.725962877), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392269.97916601994, 6697128.9811151875), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(207657.78198191582, 6773667.330305287), 3067), 4326),
        NULL,
        false,
        'Pyhäranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(243397.34785933336, 6651768.850948531), 3067), 4326),
        NULL,
        false,
        'Kemiönsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255125.37998384726, 6907157.007079727), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355632.8265635608, 6664518.782330543), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355647.69798479637, 6664622.7964045685), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355582.55523245607, 6664491.350742633), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262846.27027036995, 6677355.82658918), 3067), 4326),
        NULL,
        false,
        'Kemiönsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262896.99555569445, 6677373.591166503), 3067), 4326),
        NULL,
        false,
        'Kemiönsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321786.6796213438, 6817531.555543583), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321717.78334259376, 6817664.896427333), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321737.82265855296, 6817649.659704468), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321303.7093483049, 6817917.852983425), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250782.98754000195, 6931532.514956291), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(389165.4599771879, 6716024.3803022355), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(441986.8836905673, 7377057.909570717), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397338.0480726246, 6714257.982970027), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(421975.8636800137, 6690140.6839952655), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320696.2032405011, 6819097.980860357), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(320622.26983162464, 6819101.518290272), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422365.8006052807, 6689403.555671505), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422403.09618889133, 6689602.428417898), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(422120.5642442735, 6689453.235987037), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533195.8342887553, 6994437.184573638), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(257649.33676078898, 6860842.303858365), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(257147.04458551347, 6860890.698350452), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(255404.94683054104, 6864945.00942326), 3067), 4326),
        NULL,
        false,
        'Kankaanpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357613.3882471875, 6667645.4737226805), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250771.37954694498, 6930216.7556226915), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426234.0696882385, 6696303.707476576), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(396077.09567869897, 6697505.29136921), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392450.5247319181, 6696970.511090907), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392463.75372501195, 6696984.027342682), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392421.22441468976, 6696987.7051654225), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392424.7508552181, 6697008.076235893), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(394274.6446086858, 6697787.357992984), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403510.4199945203, 6694610.83228836), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435451.713440151, 6900622.255108955), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250422.7517106936, 6930493.202240468), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250256.8333252282, 6929996.990222905), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250248.70133200337, 6929972.150731153), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(296583.31511794776, 6987784.340972319), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250464.75018003682, 6929341.195600876), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(251975.81068226858, 6929096.727777753), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(252003.74365733168, 6929092.1247734865), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(421690.36267298483, 7114109.655248558), 3067), 4326),
        NULL,
        false,
        'Haapavesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379436.91680082376, 6738788.652380976), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(339492.99615129293, 6891589.943127732), 3067), 4326),
        NULL,
        false,
        'Ruovesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(403734.6959177523, 6694482.849833939), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(566009.0332085688, 6767626.44773448), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(210008.41781849464, 6904423.894221371), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(210005.70963621326, 6904400.51811436), 3067), 4326),
        NULL,
        false,
        'Kristiinankaupunki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(249252.7387504145, 6930028.57158411), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562412.6612520253, 6822058.4497610135), 3067), 4326),
        NULL,
        false,
        'Puumala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(297611.47250216437, 6988177.097206344), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229679.49175472965, 6998483.006856668), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229460.0379825767, 6998291.552415338), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229510.29845169137, 6998277.033438481), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229330.86428663734, 6997891.7903749095), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390340.63078193524, 6698386.489375994), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361850.47423470486, 6669557.069150058), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361849.01028596645, 6669629.163612367), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(361831.3402937573, 6669659.967762702), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(497287.06484553695, 6703194.68182745), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(430345.4368454152, 6751819.58161118), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(486866.6125243997, 6751705.577652202), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355472.38104679633, 6664669.590262742), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355367.0257005045, 6664613.309775183), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(641486.1982613119, 6943694.743500039), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357174.69559302373, 6665723.146354554), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(111806.95034005101, 6697481.223271182), 3067), 4326),
        NULL,
        false,
        'Finström',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357004.8566440926, 6665726.2311918745), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356982.53550494235, 6665749.991344447), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357247.2292427909, 6666145.361070019), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395612.146879519, 6698922.956215984), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325747.5982502376, 6801289.64358314), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325778.68867359974, 6801258.926985567), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355740.6647314673, 6663474.800530803), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355557.16372045357, 6663146.467518501), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355525.9801681033, 6663116.755787974), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(355694.62697286654, 6663257.58029146), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357723.8855384105, 6666425.932156867), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(354871.996531868, 6664521.544931389), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534832.3393883737, 6991963.640107061), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535031.143843983, 6992018.340365923), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534863.8059031455, 6992144.887155071), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535542.4328734066, 6990818.009395172), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(535571.4146987378, 6990897.013535171), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357679.0711081405, 6666597.099853446), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357602.11278797465, 6666887.9388996065), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357653.34933057416, 6666861.0042964155), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357723.3588542203, 6666809.700267595), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357573.2569818287, 6666963.2187495865), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357783.8517963113, 6666893.062798777), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484383.03581900214, 6750185.812308831), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(484487.76263460686, 6750063.854309889), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(533314.8316543294, 6994043.882307323), 3067), 4326),
        NULL,
        false,
        'Siilinjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(494583.429687799, 6713464.870158753), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432812.68245522736, 7197001.6855232), 3067), 4326),
        NULL,
        false,
        'Kempele',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(300939.48415955657, 6842686.6192169245), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379276.4941725684, 7176553.909956316), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(373384.20731434366, 6710522.643179679), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250866.09670088545, 6930431.307778598), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(366620.04824897286, 7409334.642294333), 3067), 4326),
        NULL,
        false,
        'Pello',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(250708.5603464314, 6931379.303609183), 3067), 4326),
        NULL,
        false,
        'Kauhajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392185.30049781693, 6697187.838426958), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(478826.3603822614, 6753627.821528888), 3067), 4326),
        NULL,
        false,
        'Kouvola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510165.2858350214, 6728184.940120559), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(510126.1226855562, 6728173.500030136), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(246155.3668545592, 6716702.062698785), 3067), 4326),
        NULL,
        false,
        'Lieto',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229198.93960470517, 6998641.161766242), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(231780.12157946563, 7009387.5517714145), 3067), 4326),
        NULL,
        false,
        'Mustasaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(243538.83762045248, 6651554.716596506), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(273644.58612259815, 6964101.887256343), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(234090.25018233663, 6715571.729817613), 3067), 4326),
        NULL,
        false,
        'Raisio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(305741.8821219864, 6646470.638399984), 3067), 4326),
        NULL,
        false,
        'Raasepori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(272837.837241406, 6963882.294894194), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(307484.7714722656, 7024727.225731827), 3067), 4326),
        NULL,
        false,
        'Kauhava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(344071.06774142844, 6968958.669896204), 3067), 4326),
        NULL,
        false,
        'Alajärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(322732.40174366464, 6969569.552507686), 3067), 4326),
        NULL,
        false,
        'Kuortane',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(265796.80795348994, 6763912.869702228), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(367397.16742614727, 7150976.426243877), 3067), 4326),
        NULL,
        false,
        'Pyhäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(312623.7725828586, 6819320.206014855), 3067), 4326),
        NULL,
        false,
        'Nokia',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321010.8931865444, 6826668.784403615), 3067), 4326),
        NULL,
        false,
        'Ylöjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(418589.2656133349, 6763199.017408159), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(419174.005821718, 6763050.008519958), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(418052.91905857984, 6762466.329502567), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(418163.0541892193, 6762388.205845526), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(418245.77538737, 6762309.217278283), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(418816.97139688936, 6762589.34997347), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(417836.9735040083, 6762195.826462444), 3067), 4326),
        NULL,
        false,
        'Hollola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562925.9484608611, 6769581.172166228), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562872.2588464052, 6770466.696121167), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562871.6530750872, 6770477.48908654), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562995.5527114002, 6770463.202642807), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562966.1511651438, 6770378.099041291), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562801.680678566, 6770379.377768902), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(562708.3404933021, 6770456.666346123), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563621.014458574, 6770473.002417311), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437427.7849825799, 6904286.500407619), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437324.1696342839, 6904372.649596679), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383788.25296327367, 6670879.848654622), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383779.40548777045, 6670872.639545625), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563444.5548396372, 6770296.782313477), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391575.8502027704, 6697455.15051115), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564518.242093142, 6768994.647189116), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564363.3919081873, 6768874.189042894), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564281.3307766118, 6768783.829810937), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564920.1964846043, 6770068.168964626), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(564975.3069370919, 6769391.78413716), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(563975.107450513, 6769049.124205678), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(408178.79694305296, 6724219.928921446), 3067), 4326),
        NULL,
        false,
        'Mäntsälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392438.8962482169, 6697112.889318143), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453665.63342329225, 6846391.75125207), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(570694.8506178738, 6772311.282858697), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(570547.6896424303, 6772255.051951955), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379092.63792636857, 7107438.677971758), 3067), 4326),
        NULL,
        false,
        'Ylivieska',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392483.79983453214, 6697147.950239508), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392492.56093707617, 6697151.925425861), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392438.6380244709, 6697167.686339919), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(392446.0731644975, 6697163.751837403), 3067), 4326),
        NULL,
        false,
        'Tuusula',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(431403.9300520422, 6900710.415356551), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(432081.66585516994, 6907348.68896429), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(285219.26151352964, 6697854.783753623), 3067), 4326),
        NULL,
        false,
        'Salo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(642492.7788614704, 6941564.744931748), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(282289.03521507024, 6806735.521009806), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281658.2781047398, 6807036.121382122), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281374.9983489042, 6808904.824315658), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281411.768650916, 6808918.015789202), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(269293.88279589836, 6802432.905706236), 3067), 4326),
        NULL,
        false,
        'Sastamala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395660.4729205048, 6698613.700415882), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(391466.0642537078, 7291959.387776903), 3067), 4326),
        NULL,
        false,
        'Kemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(353663.2909260328, 6802707.042333319), 3067), 4326),
        NULL,
        false,
        'Pälkäne',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(368586.6279939447, 6742679.14452134), 3067), 4326),
        NULL,
        false,
        'Janakkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(301240.590691749, 6903093.525160393), 3067), 4326),
        NULL,
        false,
        'Kihniö',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(286843.99155439954, 7067575.267822476), 3067), 4326),
        NULL,
        false,
        'Pietarsaari',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(303134.89034148265, 6759826.3857914265), 3067), 4326),
        NULL,
        false,
        'Humppila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(480945.9353995693, 7057247.080428661), 3067), 4326),
        NULL,
        false,
        'Kiuruvesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(481671.44937855797, 7057741.859376129), 3067), 4326),
        NULL,
        false,
        'Kiuruvesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(435851.7211813156, 6890949.412765773), 3067), 4326),
        NULL,
        false,
        'Jyväskylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326493.25186738046, 6810680.126365694), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(326718.74123594654, 6807461.4796297895), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(328202.2944809318, 6810526.8454178), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(393391.6852145235, 7128721.8397629745), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383674.86983923096, 6670781.743440868), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427398.6602589845, 6941776.078469627), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427391.1547085474, 6941706.517622772), 3067), 4326),
        NULL,
        false,
        'Äänekoski',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(211963.48585858554, 6815975.387405808), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(287781.6476113418, 6967452.183152354), 3067), 4326),
        NULL,
        false,
        'Seinäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423827.5395540269, 6763679.767856177), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(228993.19722162382, 6938517.367682575), 3067), 4326),
        NULL,
        false,
        'Teuva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379163.1202390313, 6735614.996978971), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(352274.0145556783, 6690546.101294944), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(370461.87402372627, 7145340.81499312), 3067), 4326),
        NULL,
        false,
        'Pyhäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429541.8121027915, 6751756.106493038), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378959.2852646853, 6736044.949771027), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229306.97916826795, 6939563.607126776), 3067), 4326),
        NULL,
        false,
        'Teuva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229054.3331182357, 6938821.526489298), 3067), 4326),
        NULL,
        false,
        'Teuva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(260277.1144884576, 6768399.0607112795), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(405727.8777764291, 6905096.777083134), 3067), 4326),
        NULL,
        false,
        'Petäjävesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384669.3717176583, 6722400.411348546), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384697.2483048466, 6722385.497353564), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384748.4096447788, 6722433.2515439205), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384751.2077433598, 6722374.438917425), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384763.628361656, 6722305.61968468), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384793.9713631183, 6722308.113846647), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384798.1283381235, 6722336.761279588), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(498821.1119804688, 6715268.492577576), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384148.9050553616, 6723816.061702002), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384049.974594702, 6723769.7914575925), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383991.4133105962, 6723784.46597726), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383837.52940813004, 6723630.109829825), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423484.2658357286, 6782543.340881345), 3067), 4326),
        NULL,
        false,
        'Asikkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(262932.14555557497, 6712719.776936882), 3067), 4326),
        NULL,
        false,
        'Paimio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(298590.2444609912, 7085237.453306712), 3067), 4326),
        NULL,
        false,
        'Kokkola',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395114.4499059661, 6704777.11049925), 3067), 4326),
        NULL,
        false,
        'Järvenpää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321241.2375370094, 6745641.862962162), 3067), 4326),
        NULL,
        false,
        'Tammela',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492648.33628510864, 6704651.2352505345), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(492646.01853539486, 6706090.462427056), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(616635.4097370591, 7262895.237435266), 3067), 4326),
        NULL,
        false,
        'Suomussalmi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(509666.693470992, 7435941.250788167), 3067), 4326),
        NULL,
        false,
        'Pelkosenniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(404700.0588646631, 6696186.343433755), 3067), 4326),
        NULL,
        false,
        'Sipoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384404.80176888645, 6722541.029074053), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384354.7853359723, 6722624.310641092), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384269.26549798483, 6722549.843648408), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384227.3249258922, 6722538.845156518), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384217.54961695086, 6722472.362510264), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384479.8371955767, 6722603.726733289), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384482.63748350495, 6722592.073921509), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384515.1244737833, 6722606.5465282705), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229714.10162928957, 6939506.611202716), 3067), 4326),
        NULL,
        false,
        'Teuva',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384683.7151363288, 6722673.612759229), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384565.68590925937, 6722675.980229881), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384522.9712666189, 6722854.099916421), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384746.68338547717, 6722752.428238218), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384709.74437889975, 6722788.808361244), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384778.475371862, 6722808.676113939), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384722.8705269832, 6722893.02509776), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384636.5971942526, 6722860.0845751865), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384497.3290477415, 6722939.714962701), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384640.4005192303, 6722969.4334981255), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384550.29697233904, 6723057.795532749), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384487.8268741887, 6722297.589219971), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384424.81285117776, 6722323.004717529), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384339.9283486367, 6722324.115062357), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384568.4915681401, 6722228.490887521), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384736.61603047536, 6722193.981268153), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384805.91729064233, 6722253.6435074), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384660.25134451955, 6722267.277642122), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384457.4038840262, 6722472.274398664), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384532.9331519569, 6722708.75410707), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384617.1099972636, 6722706.676622614), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384641.1816160882, 6722759.679388119), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384771.83801844344, 6723053.792554099), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384702.97707063035, 6723105.120850243), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383675.5996952668, 6720413.395812467), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383791.9487446782, 6720195.671573968), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536478.415271798, 6966775.39320702), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(536560.597960876, 6966673.999595818), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384775.9350232454, 6722627.303828611), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384901.3352931881, 6722479.244107769), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384890.3169351482, 6722466.705143294), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384844.00554102584, 6722510.884843981), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383621.6517276872, 6723147.304182595), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383486.6405451792, 6723504.826461095), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383477.2667419535, 6723516.502586075), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383559.69399750995, 6723568.781386597), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383562.1736714045, 6723590.5468604965), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383653.5983256813, 6723624.724897394), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383645.7230530236, 6723651.865755075), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383746.95014499704, 6723527.977090443), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383792.46088408446, 6723571.882286244), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383698.9122005327, 6723641.797165482), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383686.6171213483, 6723688.013689462), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383443.4073446926, 6723660.785333024), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384875.2448470056, 6722084.989365301), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384870.6881026584, 6722069.840517658), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384929.9452264265, 6722007.648152502), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384993.6326636737, 6721947.540876559), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385067.2725642629, 6723402.23087225), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385122.59959819884, 6723270.631323296), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385305.00182508846, 6723117.240688244), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385211.92991997633, 6723159.010630689), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384923.3473799766, 6722888.607614609), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384837.7488444376, 6722668.549126871), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384912.1217962036, 6722628.560326882), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(385004.3031188883, 6722745.682099331), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383835.3739371763, 6722668.442467896), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383771.8023736301, 6722721.576488282), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383739.31405273004, 6722828.791193422), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382279.1964953007, 6723228.72682514), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382298.6164225943, 6723296.956913413), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382299.84288872447, 6723261.668831547), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382272.0565794263, 6723313.835972687), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382225.2564390936, 6723345.358378113), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382237.40458379843, 6723271.694591018), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382193.30679111136, 6723301.48470706), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382301.1224259033, 6722934.783958054), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382405.79435921076, 6723482.864333502), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382305.75850614347, 6723512.361719879), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381247.6604368131, 6725129.364841847), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(379898.1020849326, 6722648.107250319), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(416229.933718541, 6697526.022493021), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384476.78656086983, 6724273.827410784), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384569.7847092982, 6724282.643734184), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(427137.78580847493, 6696290.225408583), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425564.85261518677, 6695504.328145181), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378231.1892573122, 6735814.787382545), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378222.6241643493, 6735821.520792721), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378220.51953648456, 6735811.172375556), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(378241.30329408316, 6735812.761636278), 3067), 4326),
        NULL,
        false,
        'Riihimäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383469.10733082966, 6723639.230483256), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439748.27220703725, 6911775.236622884), 3067), 4326),
        NULL,
        false,
        'Laukaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424168.5998028809, 6693991.153737516), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384389.8120203883, 6722703.653307522), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384298.52109959925, 6722704.866345061), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383750.8805382053, 6720347.23681762), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383492.8230101659, 6721639.797646907), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383653.0763658735, 6721673.988151448), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383313.24655941327, 6723695.211622806), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383547.7153935804, 6723769.397869508), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383587.34044266463, 6723781.629652228), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(545749.8588574451, 6911515.273173859), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(569396.2012049053, 6772740.790441822), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380504.3062246918, 7175828.458164442), 3067), 4326),
        NULL,
        false,
        'Raahe',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424953.6774992691, 6695919.803899177), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383623.7034674358, 6721535.694490782), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247939.20997707217, 6777547.307472362), 3067), 4326),
        NULL,
        false,
        'Säkylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(247907.43328300287, 6777496.300748248), 3067), 4326),
        NULL,
        false,
        'Säkylä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425432.1029181309, 6694884.723248786), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(211755.79241503158, 6816511.3659305135), 3067), 4326),
        NULL,
        false,
        'Eurajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(543365.6701302343, 6909484.8722639475), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(543405.504049626, 6909507.4505759645), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380734.1128978907, 6722032.193916219), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380704.5418228729, 6722050.453272522), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(475684.232045898, 7313320.22401285), 3067), 4326),
        NULL,
        false,
        'Ranua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(546961.7531157176, 6904159.675204867), 3067), 4326),
        NULL,
        false,
        'Joroinen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382883.33898750873, 6722831.414018854), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382882.1063212444, 6722896.460468823), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357548.2932953027, 6666389.973136024), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357653.24519758916, 6666341.235377744), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357615.64603239804, 6666286.643521597), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357739.4693747885, 6666336.105871904), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382410.21109937126, 6722170.782713089), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(382422.88209436287, 6722137.068192152), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(545099.1557351494, 6908230.336941923), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(545220.6986521089, 6908153.97430273), 3067), 4326),
        NULL,
        false,
        'Varkaus',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(380596.4798012041, 6721394.556410827), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381292.69790578366, 6721176.249374514), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381099.51678382984, 6721055.037984418), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381497.416174123, 6720983.132570052), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381486.13713290804, 6720993.053189994), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225208.45888169997, 6829264.836945805), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(225171.4709371759, 6829196.411301552), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(538013.8670624276, 6726121.633232176), 3067), 4326),
        NULL,
        false,
        'Miehikkälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360503.59008086566, 6838539.5218052305), 3067), 4326),
        NULL,
        false,
        'Orivesi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(534167.8926385703, 6966751.023490498), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532161.2914571542, 6966352.262884387), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241555.45155495516, 6706473.024477534), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(265726.77655814734, 6837266.370742654), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(518292.37401319103, 6735167.606550552), 3067), 4326),
        NULL,
        false,
        'Hamina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241525.72011070236, 6706425.744033615), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241644.21033063447, 6706397.562544306), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241501.4817733544, 6706335.670472605), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241674.1214379235, 6706492.141145759), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(599870.8861628267, 7317645.786082966), 3067), 4326),
        NULL,
        false,
        'Kuusamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358197.94901989395, 6669099.250723167), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358347.90497870854, 6669069.689969793), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(241712.19779771334, 6706593.318898545), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383242.760847404, 6721374.4064000575), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383204.0380415333, 6721368.545826038), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383050.53121241054, 6721470.565479923), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383069.30991679494, 6721547.221704832), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383000.4357721934, 6721529.97720928), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383021.2330786202, 6721384.792750812), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(350463.7177019436, 6692902.45739288), 3067), 4326),
        NULL,
        false,
        'Vihti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423918.49574785057, 6702175.316533327), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(363424.7222455897, 6671860.861908271), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(364435.9781344378, 6672618.095835508), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(448087.4581943412, 7061395.414751226), 3067), 4326),
        NULL,
        false,
        'Pyhäjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(383273.28620947566, 6720687.889013635), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381684.23874284595, 6725211.158576232), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381690.20172087935, 6725132.61797902), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381501.0375821665, 6725350.952124928), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381758.7964658521, 6725185.509251151), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381459.82635255647, 6725264.962276278), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381758.2644391834, 6725541.691154314), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381756.0465325547, 6725560.602505198), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(381724.18720371625, 6725411.82114886), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244795.18220833482, 6705495.26148867), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244823.64954267844, 6705197.882054698), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439833.632897184, 7094969.4338200195), 3067), 4326),
        NULL,
        false,
        'Kärsämäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(438802.4334533541, 7094454.956683037), 3067), 4326),
        NULL,
        false,
        'Kärsämäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(440245.94373281416, 7095501.715246719), 3067), 4326),
        NULL,
        false,
        'Kärsämäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(439056.4460908873, 7095278.567442286), 3067), 4326),
        NULL,
        false,
        'Kärsämäki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(244525.32441968977, 6705526.77258542), 3067), 4326),
        NULL,
        false,
        'Kaarina',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(271982.13927970466, 6962147.681591197), 3067), 4326),
        NULL,
        false,
        'Ilmajoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(575987.6767185176, 6965527.565548421), 3067), 4326),
        NULL,
        false,
        'Tuusniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429177.20436354494, 7027449.885664373), 3067), 4326),
        NULL,
        false,
        'Pihtipudas',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429131.28446188814, 7027464.020698386), 3067), 4326),
        NULL,
        false,
        'Pihtipudas',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429051.3244326831, 7027325.044758807), 3067), 4326),
        NULL,
        false,
        'Pihtipudas',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(360474.02157799865, 6816206.4023438115), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(223436.92849527474, 6712113.302721185), 3067), 4326),
        NULL,
        false,
        'Naantali',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(498385.14228306955, 6709769.546540747), 3067), 4326),
        NULL,
        false,
        'Kotka',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(190895.7328326952, 6725693.348776965), 3067), 4326),
        NULL,
        false,
        'Kustavi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(397555.14830843295, 6698131.28799088), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(453622.1382613126, 6864604.636083688), 3067), 4326),
        NULL,
        false,
        'Joutsa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(437389.70517477894, 6760031.49414029), 3067), 4326),
        NULL,
        false,
        'Lahti',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(376160.4582639442, 6697950.705312716), 3067), 4326),
        NULL,
        false,
        'Nurmijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(632774.6985786147, 6827244.014344797), 3067), 4326),
        NULL,
        false,
        'Parikkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(633222.9412448041, 6826416.804481918), 3067), 4326),
        NULL,
        false,
        'Parikkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(625415.4880167698, 6813396.537766206), 3067), 4326),
        NULL,
        false,
        'Rautjärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(281696.711107961, 6755433.5398342), 3067), 4326),
        NULL,
        false,
        'Loimaa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423704.7024390469, 6692375.778468348), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(229015.59100090966, 7008015.229765382), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424496.7828932747, 6691961.20910544), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424591.7522062033, 6691971.091032082), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362843.3955820662, 6672779.969415858), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362707.396351032, 6672934.07143394), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362781.19973981404, 6672863.205841575), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(362831.31522906676, 6672988.659109882), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(652995.5890348258, 6926478.801217816), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(532327.1339349281, 6975260.330166416), 3067), 4326),
        NULL,
        false,
        'Kuopio',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384146.3385335793, 6722285.6334715905), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384157.8988129457, 6722245.5845297165), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(384188.24616000627, 6722223.782241932), 3067), 4326),
        NULL,
        false,
        'Hyvinkää',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(336817.2293453277, 6820312.253982445), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(336812.37060859933, 6820254.730344813), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(336823.65142387134, 6820202.841360441), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(336873.5147862618, 6820224.8193375105), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(336907.10584455985, 6820250.844134258), 3067), 4326),
        NULL,
        false,
        'Kangasala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(643543.6793362639, 6943715.232137333), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(428674.98042951344, 6753345.634514766), 3067), 4326),
        NULL,
        false,
        'Orimattila',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321509.25210189866, 6817911.737377983), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321575.38359144627, 6817855.484062962), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321264.6628379225, 6817826.884651495), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323768.4956562902, 6819594.539978132), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323786.117070784, 6819536.682323089), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(323717.38606981153, 6819469.096265955), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324825.58910318173, 6820090.6686184965), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324875.01234193397, 6819655.330465137), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324934.66429741814, 6819737.793291101), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(324963.36118690425, 6819798.54744128), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325109.5085057839, 6819721.159131051), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(325148.41964832164, 6819700.949477932), 3067), 4326),
        NULL,
        false,
        'Pirkkala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(598186.8107765701, 6788247.281831692), 3067), 4326),
        NULL,
        false,
        'Imatra',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424835.68874336465, 6693536.481704446), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424788.8324463816, 6693517.965214529), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425054.2083726316, 6693792.823931332), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425269.8768301734, 6693648.500097578), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425187.80249475164, 6693629.628857581), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425165.892919521, 6693793.416784149), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425239.36715834134, 6693802.239750575), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425330.9899918768, 6693722.039259781), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(425441.6919750147, 6693514.07488377), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(424914.78658162564, 6693572.737962567), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(368237.94582609425, 7151939.76075675), 3067), 4326),
        NULL,
        false,
        'Pyhäjoki',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(330680.02575472876, 6814726.890836513), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(330918.7326080269, 6814653.014466441), 3067), 4326),
        NULL,
        false,
        'Lempäälä',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(523571.20846016466, 6799490.35764491), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(523612.8437701496, 6799548.403889004), 3067), 4326),
        NULL,
        false,
        'Mikkeli',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(640614.3783962815, 6943607.25847059), 3067), 4326),
        NULL,
        false,
        'Joensuu',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(337250.7001702686, 6684597.165742467), 3067), 4326),
        NULL,
        false,
        'Lohja',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(446572.73047162796, 7374634.2122732), 3067), 4326),
        NULL,
        false,
        'Rovaniemi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426627.1645691211, 6697358.510284476), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(648585.182083024, 6865430.281919556), 3067), 4326),
        NULL,
        false,
        'Kitee',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426942.85571663274, 6696715.119593107), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359777.37568943953, 6667815.025414604), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(359830.0214909056, 6667853.52617931), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226268.18278732643, 6822985.447134303), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(226217.93866895934, 6823563.915255571), 3067), 4326),
        NULL,
        false,
        'Pori',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(274128.360172893, 6856883.429904092), 3067), 4326),
        NULL,
        false,
        'Jämijärvi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(232220.97295879913, 7007456.675489606), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(554071.3601632363, 6825332.304386542), 3067), 4326),
        NULL,
        false,
        'Puumala',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423463.5451597604, 6694582.549926552), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423562.22460194735, 6694949.991587607), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423526.8132513823, 6694974.961785669), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(423548.1611330359, 6694789.132026464), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227569.87430097553, 7012037.753554041), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227494.77862736376, 7011607.465150582), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227533.92704024934, 7011657.556432676), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(426251.5973316063, 6694110.075194748), 3067), 4326),
        NULL,
        false,
        'Porvoo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358970.95782024035, 6668347.176990865), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358959.0158880258, 6668648.314556695), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(390705.37824052415, 6673680.365215658), 3067), 4326),
        NULL,
        false,
        NULL,
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227464.998984629, 7012253.754878958), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(540557.4281085014, 7142423.521994069), 3067), 4326),
        NULL,
        false,
        'Paltamo',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358246.3135687302, 6668959.67607739), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357426.364363882, 6669214.162981508), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356768.74199105904, 6668678.931697877), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356686.48545130406, 6668623.869202794), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356711.39041435113, 6668649.610318932), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356639.1794082712, 6668547.892617796), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356588.0872237967, 6668468.517891968), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356516.55989953695, 6668408.73148473), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356108.1088207837, 6668043.147025248), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356110.39342905174, 6668106.791055969), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356142.4421087243, 6668174.083996359), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356142.1472267898, 6668242.085125236), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357005.92894712155, 6668655.312045661), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357063.3206360846, 6668750.203696342), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357005.76094703487, 6668815.354013069), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356762.7664521068, 6668188.109499165), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356699.4950756344, 6668142.682149707), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(395807.53394443466, 6696897.441565042), 3067), 4326),
        NULL,
        false,
        'Kerava',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357609.70324933156, 6668390.334318082), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357641.8089806857, 6668423.003300145), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357702.02990547434, 6668461.519011139), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357803.6032495314, 6668473.441485886), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357252.8264839025, 6668689.103005009), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357150.97718230786, 6668505.871510536), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357367.9527268868, 6668523.485482591), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356215.94436880806, 6667925.348782317), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356184.9080159317, 6667968.902127655), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356983.9010477209, 6667976.141711282), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357293.86703527824, 6667915.9084405275), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357359.56397764425, 6667972.651653229), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357320.3600987129, 6667975.3732953025), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356837.5894963656, 6669073.73597294), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356852.31998808705, 6669154.338681306), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356767.0866642882, 6669192.680254016), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356784.4027618074, 6669254.83016029), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356768.7106426761, 6669285.509998715), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356748.7751128507, 6669314.5774036255), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357364.04319380573, 6669207.257141109), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357361.25764296367, 6669298.323816579), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357266.8011327429, 6669387.773969794), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357131.69000612147, 6669335.515889893), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357057.87610088085, 6669279.2957302965), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357006.9170021101, 6669200.105281814), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(357029.4021742746, 6669157.873625309), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(321460.23095974413, 6991836.311882012), 3067), 4326),
        NULL,
        false,
        'Lapua',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(581444.5707140033, 6776374.536997505), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(581293.3244468002, 6776385.099933572), 3067), 4326),
        NULL,
        false,
        'Lappeenranta',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(400175.88090271206, 7131589.813002193), 3067), 4326),
        NULL,
        false,
        'Oulainen',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358092.84318646695, 6668706.664248408), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358557.6326333143, 6669255.456350704), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358480.17644151807, 6669226.3359287), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358370.0802846524, 6669198.4879848715), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358251.37833648274, 6669193.311777883), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358513.30108267587, 6669424.412029364), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358372.74170872394, 6669542.643278957), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(358326.5749949406, 6669474.107473578), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429087.10739173106, 7027322.982039951), 3067), 4326),
        NULL,
        false,
        'Pihtipudas',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(429134.80218575493, 7027316.219950693), 3067), 4326),
        NULL,
        false,
        'Pihtipudas',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(227204.03892518845, 7012297.543870438), 3067), 4326),
        NULL,
        false,
        'Vaasa',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356026.2544498255, 6663928.870323868), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(356108.7798951389, 6663896.220268112), 3067), 4326),
        NULL,
        false,
        'Kirkkonummi',
        'osm'
    ),
    (
        '',
        NULL,
        ST_Transform(ST_SetSRID(ST_MakePoint(651651.325940009, 7024771.179498998), 3067), 4326),
        NULL,
        false,
        'Lieksa',
        'osm'
    );
