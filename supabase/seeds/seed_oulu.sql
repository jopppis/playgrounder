-- Disable trigger to prevent recursive refresh
ALTER TABLE playgrounds DISABLE TRIGGER refresh_active_playgrounds_on_playground;

-- Import playgrounds
INSERT INTO playgrounds (name, location, has_supervised_activities, city, data_source)
VALUES
    (
        'Porkkanakujan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(471596.512, 7203763.966), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kuusikkotien leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(471095.125, 7204974.948), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Hovinsuon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(477317.479, 7214402.921), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Hiukkavaaran keskusleikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(480838.235, 7212632.045), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Peltolan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(477311.373, 7212980.141), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kariniemen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(477840.425, 7213827.078), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Höyhtyän keskusleikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(476097.543, 7210836.592), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Rantavainion leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(476247.237, 7206409.419), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Rakkakivenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(481472.693, 7211102.999), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Pihlajapihan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(470134.179, 7229940.228), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Murtomaan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(505088.842, 7213779.832), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Tuohustulen leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(480382.21, 7215268.174), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Isoniitynpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(468666.812, 7231855.701), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Muuraojan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(480139.716, 7211652.507), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Ilmarisenpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(475896.451, 7218250.335), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Letonpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(467952.542, 7225079.06), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Hietalanmäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(470837.353, 7224811.517), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Lumilinnanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(480745.208, 7215992.32), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Metelinkankaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(478673.843, 7206763.436), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Manttaalipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(479139.438, 7214582.567), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Tolpankankaan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(476486.999, 7207991.283), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Metsokankaan keskusleikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(478806.779, 7205645.481), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Pikkutikanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(486272.763, 7220412.289), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Myllymetsän leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(491895.85, 7252634.676), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Nykäsenkankaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(479452.189, 7212663.814), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Intiönkankaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(476650.204, 7213174.015), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Tuokkosenmäen leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(485648.675, 7221280.391), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Tuohipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(471450.602, 7223731.014), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Saarelankankaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(480316.336, 7211161.867), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Tähtitarhanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(481800.136, 7216145.203), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Rajakylän keskusleikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(472593.969, 7219465.018), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Lähimetsän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(479429.263, 7205311.023), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Talvikankaan keskusleikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(481099.287, 7216617.706), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Pekka vesaisen leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(501114.33, 7214798.559), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Puralan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(479788.411, 7210018.174), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Palosuonpuiston leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(472658.868, 7220135.749), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Ritaharjun keskusleikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(474623.25, 7220581.875), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Myllyojan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(478960.459, 7213374.023), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Saverikkopuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(479472.952, 7213729.228), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Pateniemenpuiston leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(471706.552, 7219678.577), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Suokukkapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(479839.276, 7215925.266), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Elementtipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(474558.44, 7215091.635), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Paraatipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(481506.393, 7216715.201), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Reslapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(479047.497, 7214008.18), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Isoahonkankaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(488599.0, 7224629.068), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Navettakankaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(480331.055, 7205388.811), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kuutamopuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(479066.318, 7216419.437), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kaarnaraitin leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(486799.4, 7220783.257), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Pyräspuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(479815.187, 7211267.073), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Karjakentän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(476145.119, 7219307.753), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Sarkkisenmutkan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(471002.932, 7233520.042), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Tullipuominpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(475038.287, 7211933.94), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kontionkankaan leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(480482.192, 7209088.184), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kolamäen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(489530.919, 7225186.965), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kynsilehdon leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(478572.558, 7214894.187), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Ajopelin leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(482149.62, 7207574.161), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Iinatin leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(480081.086, 7208242.78), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kirkkosalmen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(472549.365, 7203562.362), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Tuiranpuiston leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(474666.147, 7214363.669), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Aumaharjun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(500696.871, 7214916.836), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Suolaheinikon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(473130.287, 7218620.595), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Välitalontien leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(486095.292, 7221519.99), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Takkurannan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(470131.501, 7227717.419), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Salmelanpuiston leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(476074.236, 7213564.783), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Hupisaarten keskusleikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(475385.175, 7213541.346), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Hakopuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(487484.05, 7225682.172), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Saunametsän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(479804.938, 7214659.438), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Hamina-villen puiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(473602.464, 7215081.25), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Oinaansuon leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(477423.741, 7219514.242), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Silmupuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(474869.031, 7219678.813), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kallenrannan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(472952.17, 7205156.174), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Sammalojan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(488255.938, 7225579.949), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Haukkapuiston leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(477367.366, 7210287.127), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kasteheinän leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(474389.378, 7219640.512), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Tikkapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(478973.719, 7207240.842), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Honkimaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(487758.45, 7225039.495), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Repolantien leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(467340.055, 7235391.237), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Ulkometsän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(479120.924, 7206258.504), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Ahvenojan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(475986.156, 7219821.531), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Antellin leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(472724.201, 7215263.375), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Nallikarin keskusleikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(472358.907, 7214705.41), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Tärppipuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(470059.375, 7206871.688), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Puistikkokadun leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(475850.421, 7212345.563), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kumpulanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(477639.337, 7212809.127), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Uumajan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(476095.741, 7211826.94), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Merikosken leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(475174.459, 7214210.06), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Toivoniemen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(474681.266, 7213929.561), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Castrenin leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(475906.209, 7215060.792), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Santaniemen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(473057.84, 7204264.798), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kivekkäänpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(476564.117, 7214151.815), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Honkalanpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(471822.619, 7220859.404), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Herukkalammen leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(472282.125, 7222839.125), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Paulapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(474217.192, 7221017.451), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Syynimaan leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(474791.25, 7217339.0), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Mäntylän leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(476358.152, 7209581.114), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Oulunsalon keskusleikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(471909.938, 7203821.5), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Puusepänpuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(475781.935, 7213092.486), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Purjopuiston leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(472217.125, 7204621.5), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Veturipuiston leikkipuisto',
        ST_Transform(ST_SetSRID(ST_MakePoint(475539.788, 7210632.189), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Kaislapuiston leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(476209.217, 7210121.529), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    ),
    (
        'Perhotien leikkipaikka',
        ST_Transform(ST_SetSRID(ST_MakePoint(468723.963, 7224871.215), 3133), 4326),
        false,
        'Oulu',
        'municipality'
    );

-- Enable trigger to allow recursive refresh
ALTER TABLE playgrounds ENABLE TRIGGER refresh_active_playgrounds_on_playground;

REFRESH MATERIALIZED VIEW v_active_playgrounds;
