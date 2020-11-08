-- Įmonės                          Įmonės kodas    Pavadinimas         Adresas                                       Telefono numeris    Vadovas
INSERT INTO dabe4290.imone VALUES ('456471247'   , 'Kasečių pasaulis', 'Taikos pr. 25, LT-31217, Visagino sav.'    , '+37068585321'    , 'Matas Berkauskas'      );
INSERT INTO dabe4290.imone VALUES ('655926626'   , 'Disco House'     , 'Draugystės g. 15b, LT-51228, Kauno m. sav.', '+37065974233'    , 'Gabrielė Lamanauskienė');

-- Nuomos punktai                           Vidinis numeris    Adresas                                              Vadovas                  Įmonė
INSERT INTO dabe4290.nuomos_punktas VALUES ('LT4147777777'   , 'Radvilų Dvaro g. 6, LT-48322, Kauno m. sav.'      , 'Aloyzas Astromskas'   , '456471247');
INSERT INTO dabe4290.nuomos_punktas VALUES ('LT4148888888'   , 'Ramybės g. 86, LT-47162, Kauno m. sav.'           , 'Valdas Janeckas'      , '456471247');
INSERT INTO dabe4290.nuomos_punktas VALUES ('NP0000000001'   , 'Tilžės g. 37a, LT-78212, Šiaulių m. sav.'         , 'Gustas Gumauskas'     , '655926626');
INSERT INTO dabe4290.nuomos_punktas VALUES ('NP0000000002'   , 'Birželio 23-iosios g. 23, LT-50220, Kauno m. sav.', 'Gvidonas  Paleikaitis', '655926626');

-- Kasetės                                  Inventorinis numeris    Pavadinimas                Kaina    Nuomos pradžia    Nuomos pabaiga    Nuomuotojas    Nuomos punktas
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000000'        , 'Fontano vaikai'          , 1     , '2019-04-17'    , '2019-04-17'    , '39508180056', 'LT4147777777'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000001'        , 'Maža išpažintis'         , 2     , '2019-03-15'    , '2019-03-15'    , '38403164200', 'LT4147777777'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000002'        , 'Kol nevėlu'              , 1     , NULL            , NULL            , NULL         , 'LT4147777777'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000003'        , 'Mirtis ir vyšnios medis' , 1     , NULL            , NULL            , NULL         , 'LT4147777777'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000004'        , 'Jausmai'                 , 1     , '2019-03-04'    , '2019-03-04'    , '46904201337', 'LT4148888888'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000005'        , 'Sūnus palaidūnas'        , 1     , '2019-04-11'    , '2019-04-11'    , '46904201337', 'LT4148888888'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000006'        , 'Vasara baigiasi rudenį'  , 1     , NULL            , NULL            , NULL         , 'LT4148888888'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000007'        , 'Herkus Mantas, 1 dalis'  , 1     , '2019-01-06'    , '2019-01-06'    , '46904201337', 'LT4148888888'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000008'        , 'Herkus Mantas, 2 dalis'  , 1     , '2019-01-05'    , '2019-01-05'    , '46904201337', 'NP0000000001'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000009'        , 'Kelionė į rojų'          , 1     , '2019-04-09'    , '2019-04-09'    , '39508180056', 'NP0000000001'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000010'        , 'Mano vaikystės ruduo'    , 2     , '2019-03-15'    , '2019-03-15'    , '48912130007', 'NP0000000001'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000011'        , 'Velnio nuotaka'          , 1     , '2019-04-09'    , '2019-04-09'    , '49904150125', 'NP0000000001'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000012'        , 'Gražuolė'                , 2     , NULL            , NULL            , NULL         , 'NP0000000002'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000013'        , 'Niekas nenorėjo mirti'   , 1     , '2019-03-02'    , '2019-03-02'    , '37612191785', 'NP0000000002'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000014'        , 'Paskutinė atostogų diena', 1     , '2019-01-12'    , '2019-03-12'    , '37612191785', 'NP0000000002'  );
INSERT INTO dabe4290.nuomos_punktas VALUES ('F12300000015'        , 'Dvylika valandų vilties' , 1     , NULL            , NULL            , NULL         , 'NP0000000002'  );

-- Nuomuotojai                           Asmens kodas    Vardas        Pavardė       Telefono numeris
INSERT INTO dabe4290.nuomuotojas VALUES ('39508180056' , 'Gabrielius', 'Buinickas' , '+37061556828'    );
INSERT INTO dabe4290.nuomuotojas VALUES ('37612191785' , 'Henrikas'  , 'Pagirirys' , '+37068733523'    );
INSERT INTO dabe4290.nuomuotojas VALUES ('49904150125' , 'Daina'     , 'Grikalaitė', '+37067812489'    );
INSERT INTO dabe4290.nuomuotojas VALUES ('48912130007' , 'Giedra'    , 'Kazuraitė' , '+37061152787'    );
INSERT INTO dabe4290.nuomuotojas VALUES ('38403164200' , 'Vaidotas'  , 'Vedeckis'  , '+37061633456'    );
INSERT INTO dabe4290.nuomuotojas VALUES ('46904201337' , 'Laima'     , 'Činskienė' , '+37067419354'    );