#!/bin/bash

# Crear carpeta de salida
mkdir -p mis_sistemas_xml
cd mis_sistemas_xml

# --- amstradcpc.xml ---
cat <<EOF > amstradcpc.xml
<theme>
    <variables>
        <systemName>Amstrad CPC</systemName>
        <systemDescription>The Amstrad CPC is a family of 8-bit home computers released in 1984. It stood out for its complete “all-in-one” package with a dedicated monitor and strong game and software support in Europe.</systemDescription>
        <systemManufacturer>Amstrad</systemManufacturer>
        <systemReleaseYear>1984</systemReleaseYear>
        <systemReleaseDate>1984-04-12</systemReleaseDate>
        <systemReleaseDateFormated>April 12, 1984</systemReleaseDateFormated>
        <systemHardwareType>Computer</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>333333</systemColor>
        <systemColorPalette1>00ff00</systemColorPalette1>
        <systemColorPalette2>333333</systemColorPalette2>
        <systemColorPalette3>ff0000</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>
    <language name="ar_SA"><variables><systemDescription>سلسلة حواسيب منزلية 8-بت عُرفت بحزمة متكاملة مع شاشة ودعم قوي للألعاب في أوروبا.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>8-Bit-Heimcomputer-Serie (ab 1984), bekannt für das Komplettpaket mit eigenem Monitor und große Spielebibliothek.</systemDescription></variables></language>
    <language name="es_ES"><variables><systemDescription>Familia de ordenadores domésticos de 8 bits (1984), muy popular en Europa por su paquete “todo en uno” con monitor propio y gran catálogo de juegos.</systemDescription><systemHardwareType>Ordenador</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>Série 8 bits (1984) célèbre pour son pack complet avec moniteur dédié et une large ludothèque en Europe.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Serie di home computer a 8 bit (1984), nota per il pacchetto completo con monitor dedicato e molti giochi.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1984年登場の8ビット家庭用PC。専用モニター付きの一体パッケージで欧州で人気。</systemDescription></variables></language>
    <language name="pl_PL"><variables><systemDescription>Seria 8-bitowych komputerów domowych (1984), znana z zestawu z monitorem i dużej biblioteki gier.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>Série de computadores 8 bits (1984), famosa pelo pacote completo com monitor dedicado e muitos jogos.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Серия 8-битных домашних компьютеров (1984), известная комплектом с монитором и большой библиотекой игр.</systemDescription></variables></language>
    <language name="sv_SE"><variables><systemDescription>8-bitars datorserie (1984) känd för komplett paket med egen skärm och stort spelutbud i Europa.</systemDescription></variables></language>
    <language name="zh_CN"><variables><systemDescription>1984 年推出的 8 位家用电脑系列，以配套显示器的一体化方案和欧洲庞大游戏库而闻名。</systemDescription></variables></language>
</theme>
EOF

# --- apple2.xml ---
cat <<EOF > apple2.xml
<theme>
    <variables>
        <systemName>Apple II</systemName>
        <systemDescription>The Apple II (1977) is one of the most influential early home computers. With color graphics and an open design, it became widely used in schools and small businesses and helped define the personal computer era.</systemDescription>
        <systemManufacturer>Apple Computer</systemManufacturer>
        <systemReleaseYear>1977</systemReleaseYear>
        <systemReleaseDate>1977-06-10</systemReleaseDate>
        <systemReleaseDateFormated>June 10, 1977</systemReleaseDateFormated>
        <systemHardwareType>Computer</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>e2d6b5</systemColor>
        <systemColorPalette1>6eba46</systemColorPalette1>
        <systemColorPalette2>e2d6b5</systemColorPalette2>
        <systemColorPalette3>454545</systemColorPalette3>
        <systemColorPalette4>f26522</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>
    <language name="ar_SA"><variables><systemDescription>حاسوب منزلي مبكر (1977) أثّر كثيرًا في تاريخ الحوسبة بفضل الرسوم الملونة وتصميمه المفتوح.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Ein prägender Heimcomputer (1977) mit Farbgrafik und offenem Design, stark verbreitet in Schulen und kleinen Firmen.</systemDescription></variables></language>
    <language name="es_ES"><variables><systemDescription>Ordenador doméstico clave (1977) con gráficos a color y diseño abierto; fue muy usado en escuelas y pequeños negocios y marcó la era del PC.</systemDescription><systemHardwareType>Ordenador</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>Micro-ordinateur majeur (1977) avec graphismes couleur et conception ouverte, largement adopté à l’école et en entreprise.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Computer domestico fondamentale (1977) con grafica a colori e architettura aperta, diffuso in scuole e piccole aziende.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1977年の代表的ホームコンピュータ。カラー表示と拡張性で教育・ビジネス用途にも普及。</systemDescription></variables></language>
    <language name="pl_PL"><variables><systemDescription>Jeden z najważniejszych komputerów domowych (1977), z grafiką kolorową i otwartą konstrukcją.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>Computador doméstico marcante (1977), com gráficos coloridos e design aberto, muito usado em escolas e pequenos negócios.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Один из ключевых домашних компьютеров (1977) с цветной графикой и открытой архитектурой, широко применялся в школах и бизнесе.</systemDescription></variables></language>
    <language name="sv_SE"><variables><systemDescription>En av de mest inflytelserika hemdatorerna (1977) med färggrafik och öppen design, vanlig i skola och småföretag.</systemDescription></variables></language>
    <language name="zh_CN"><variables><systemDescription>1977 年的代表性家用电脑之一，凭借彩色图形和开放式设计广泛用于学校与小型企业。</systemDescription></variables></language>
</theme>
EOF

# --- arcade.xml ---
cat <<EOF > arcade.xml
<theme>
    <variables>
        <systemName>Arcade</systemName>
        <systemDescription>Coin-operated arcade machines defined the classic era of gaming, delivering fast action and distinctive visuals and sound that often exceeded home hardware of the time.</systemDescription>
        <systemManufacturer>Various</systemManufacturer>
        <systemReleaseYear>1971</systemReleaseYear>
        <systemHardwareType>Arcade</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>ffcc00</systemColor>
        <systemColorPalette1>ff0000</systemColorPalette1>
        <systemColorPalette2>ffcc00</systemColorPalette2>
        <systemColorPalette3>0000ff</systemColorPalette3>
        <systemColorPalette4>000000</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>
    <language name="ar_SA"><variables><systemDescription>أجهزة ألعاب تعمل بالعملات المعدنية شكّلت العصر الكلاسيكي وقدمت رسوماً وصوتاً مميزين يفوقان أجهزة المنزل آنذاك.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Münzautomaten prägten die klassische Spielhallen-Ära mit schneller Action sowie markantem Bild und Sound.</systemDescription></variables></language>
    <language name="es_ES"><variables><systemDescription>Máquinas recreativas a monedas que definieron la era clásica: acción rápida, estilo visual propio y sonido potente, a menudo superior al hardware doméstico.</systemDescription><systemHardwareType>Arcade</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>Bornes d’arcade à pièces qui ont défini l’âge classique, avec action rapide, style visuel unique et son marquant.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Cabinati a gettoni che hanno segnato l’era classica: azione immediata, stile visivo unico e audio potente.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>コイン投入式の業務用ゲーム機。家庭用を超える性能で名作を生み、ゲーム文化を築きました。</systemDescription></variables></language>
    <language name="pl_PL"><variables><systemDescription>Automaty wrzutowe, które zdefiniowały klasyczną epokę: szybka akcja, charakterystyczna oprawa i dźwięk.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>Máquinas de fliperama a moedas que marcaram a era clássica, com ação rápida, visual marcante e som potente.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Монетные аркадные автоматы определили классическую эпоху: динамика, узнаваемый стиль и мощный звук.</systemDescription></variables></language>
    <language name="sv_SE"><variables><systemDescription>Myntstyrda arkadmaskiner som formade den klassiska eran med snabb action, tydlig stil och starkt ljud.</systemDescription></variables></language>
    <language name="zh_CN"><variables><systemDescription>投币式街机定义了经典时代：节奏快、风格鲜明，音画表现常常超过当时的家用硬件。</systemDescription></variables></language>
</theme>
EOF
# --- atari2600.xml ---
cat <<EOF > atari2600.xml
<theme>
    <variables>
        <systemName>Atari 2600</systemName>
        <systemDescription>The Atari 2600 (1977) popularized home console gaming with interchangeable cartridges and a vast library that helped define the early video game era.</systemDescription>
        <systemManufacturer>Atari</systemManufacturer>
        <systemReleaseYear>1977</systemReleaseYear>
        <systemReleaseDate>1977-09-11</systemReleaseDate>
        <systemReleaseDateFormated>September 11, 1977</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>7a3e00</systemColor>
        <systemColorPalette1>e3a018</systemColorPalette1>
        <systemColorPalette2>7a3e00</systemColorPalette2>
        <systemColorPalette3>1a1a1a</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>
    <language name="ar_SA"><variables><systemDescription>جهاز منزلي (1977) رسّخ فكرة الألعاب على خرطوشة وفتح الباب لمكتبة ضخمة شكّلت بدايات عصر الألعاب.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Heimkonsole (1977), die Spiele auf Modulen populär machte und eine riesige Bibliothek der Frühzeit prägte.</systemDescription></variables></language>
    <language name="es_ES"><variables><systemDescription>Consola doméstica (1977) que popularizó los cartuchos intercambiables y construyó una biblioteca enorme que definió los primeros años del videojuego.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>Console (1977) qui a popularisé les cartouches interchangeables et marqué l’ère fondatrice du jeu vidéo.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Console (1977) che rese popolari le cartucce intercambiabili e definì l’era iniziale dei videogiochi.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1977年の家庭用ゲーム機。交換式カートリッジを普及させ、初期ゲーム文化を形作りました。</systemDescription></variables></language>
    <language name="pl_PL"><variables><systemDescription>Konsola domowa (1977), która spopularyzowała wymienne kartridże i zbudowała ogromną bibliotekę gier.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>Console (1977) que popularizou cartuchos intercambiáveis e ajudou a definir a era inicial dos videogames.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Домашняя консоль (1977), популяризовавшая сменные картриджи и сформировавшая раннюю эпоху видеоигр.</systemDescription></variables></language>
    <language name="sv_SE"><variables><systemDescription>Hemdator-/konsolklassiker (1977) som gjorde utbytbara kassetter populära och formade den tidiga speleran.</systemDescription></variables></language>
    <language name="zh_CN"><variables><systemDescription>1977 年家用主机，普及了可更换卡带并打造了庞大游戏库，定义了早期游戏时代。</systemDescription></variables></language>
</theme>
EOF

# --- atari5200.xml ---
cat <<EOF > atari5200.xml
<theme>
    <variables>
        <systemName>Atari 5200</systemName>
        <systemDescription>The Atari 5200 (1982) brought upgraded graphics and arcade-style experiences to the living room, based on Atari’s 8-bit computer technology.</systemDescription>
        <systemManufacturer>Atari</systemManufacturer>
        <systemReleaseYear>1982</systemReleaseYear>
        <systemReleaseDate>1982-11-01</systemReleaseDate>
        <systemReleaseDateFormated>November 1, 1982</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>1f3a4a</systemColor>
        <systemColorPalette1>00b3ff</systemColorPalette1>
        <systemColorPalette2>1f3a4a</systemColorPalette2>
        <systemColorPalette3>0d0d0d</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>
    <language name="ar_SA"><variables><systemDescription>جهاز (1982) قدّم رسوماً أفضل وتجارب أقرب للأركيد، مبنيًا على تقنية حواسيب أتاري 8-بت.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Konsole (1982) mit besserer Grafik und Arcade-näheren Spielen, basierend auf Ataris 8-Bit-Technologie.</systemDescription></variables></language>
    <language name="es_ES"><variables><systemDescription>Consola (1982) con gráficos mejorados y experiencias más cercanas al arcade, basada en la tecnología de los ordenadores Atari de 8 bits.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>Console (1982) offrant de meilleurs graphismes et des jeux plus proches de l’arcade, issue de la techno 8 bits d’Atari.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Console (1982) con grafica potenziata e giochi più “arcade”, basata sulla tecnologia dei computer Atari a 8 bit.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1982年の家庭用機。Atari 8ビット系技術を基に、より高品質な映像とアーケード寄りの体験を提供。</systemDescription></variables></language>
    <language name="pl_PL"><variables><systemDescription>Konsola (1982) z lepszą grafiką i doświadczeniem bliższym arcade, oparta o technologię Atari 8-bit.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>Console (1982) com gráficos melhores e jogos mais “arcade”, baseada na tecnologia dos computadores Atari 8-bit.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Консоль (1982) с улучшенной графикой и более “аркадным” опытом на базе 8-битной технологии Atari.</systemDescription></variables></language>
    <language name="sv_SE"><variables><systemDescription>Konsol (1982) med uppgraderad grafik och mer arkadkänsla, byggd på Ataris 8-bitars datorteknik.</systemDescription></variables></language>
    <language name="zh_CN"><variables><systemDescription>1982 年主机，提升了图形表现并更接近街机体验，基于 Atari 8 位电脑技术。</systemDescription></variables></language>
</theme>
EOF

# --- atari7800.xml ---
cat <<EOF > atari7800.xml
<theme>
    <variables>
        <systemName>Atari 7800</systemName>
        <systemDescription>The Atari 7800 (1986) focused on arcade-accurate conversions and backward compatibility with many Atari 2600 games.</systemDescription>
        <systemManufacturer>Atari</systemManufacturer>
        <systemReleaseYear>1986</systemReleaseYear>
        <systemReleaseDate>1986-05-01</systemReleaseDate>
        <systemReleaseDateFormated>May 1, 1986</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>2f2f2f</systemColor>
        <systemColorPalette1>ff2b2b</systemColorPalette1>
        <systemColorPalette2>2f2f2f</systemColorPalette2>
        <systemColorPalette3>bfbfbf</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>
    <language name="ar_SA"><variables><systemDescription>جهاز (1986) ركّز على تحويلات أركيد قريبة من الأصل مع توافق خلفي مع كثير من ألعاب Atari 2600.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Konsole (1986) mit Fokus auf arcadegetreue Umsetzungen und Abwärtskompatibilität zu vielen Atari-2600-Spielen.</systemDescription></variables></language>
    <language name="es_ES"><variables><systemDescription>Consola (1986) centrada en conversiones fieles del arcade y compatible con muchos juegos de Atari 2600.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>Console (1986) axée sur des conversions d’arcade fidèles et compatible avec de nombreux jeux Atari 2600.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Console (1986) pensata per conversioni arcade più fedeli e compatibile con molti giochi Atari 2600.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1986年の家庭用機。アーケード移植に注力し、多くのAtari 2600タイトルとも互換性を持ちます。</systemDescription></variables></language>
    <language name="pl_PL"><variables><systemDescription>Konsola (1986) nastawiona na wierne porty arcade oraz zgodność wsteczną z wieloma grami Atari 2600.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>Console (1986) focado em conversões mais fiéis do arcade e compatível com muitos jogos do Atari 2600.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Консоль (1986) с упором на точные аркадные порты и совместимость со многими играми Atari 2600.</systemDescription></variables></language>
    <language name="sv_SE"><variables><systemDescription>Konsol (1986) med fokus på mer trogna arkadportar och bakåtkompatibilitet med många Atari 2600-spel.</systemDescription></variables></language>
    <language name="zh_CN"><variables><systemDescription>1986 年主机，主打更接近街机的移植，并兼容许多 Atari 2600 游戏。</systemDescription></variables></language>
</theme>
EOF

# --- atarilynx.xml ---
cat <<EOF > atarilynx.xml
<theme>
    <variables>
        <systemName>Atari Lynx</systemName>
        <systemDescription>The Atari Lynx (1989) was an advanced handheld with a backlit color screen and hardware scaling, known for its technical ambition and arcade-style games on the go.</systemDescription>
        <systemManufacturer>Atari</systemManufacturer>
        <systemReleaseYear>1989</systemReleaseYear>
        <systemReleaseDate>1989-09-01</systemReleaseDate>
        <systemReleaseDateFormated>September 1, 1989</systemReleaseDateFormated>
        <systemHardwareType>Handheld</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>3a3a3a</systemColor>
        <systemColorPalette1>00e0ff</systemColorPalette1>
        <systemColorPalette2>3a3a3a</systemColorPalette2>
        <systemColorPalette3>9a9a9a</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>
    <language name="ar_SA"><variables><systemDescription>جهاز محمول (1989) بشاشة ملونة مضاءة وتقنيات تحجيم، عُرف بطموحه التقني وألعاب أركيد أثناء التنقل.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Handheld (1989) mit beleuchtetem Farbdisplay und Scaling-Hardware, bekannt für ambitionierte Technik und Arcade-Spiele unterwegs.</systemDescription></variables></language>
    <language name="es_ES"><variables><systemDescription>Portátil (1989) con pantalla a color retroiluminada y hardware de escalado, famoso por su ambición técnica y juegos tipo arcade “en la mano”.</systemDescription><systemHardwareType>Portátil</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>Console portable (1989) avec écran couleur rétroéclairé et mise à l’échelle matérielle, réputée pour son ambition technique.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Portatile (1989) con schermo a colori retroilluminato e scaling hardware, noto per l’ambizione tecnica e giochi in stile arcade.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1989年の携帯機。バックライト付きカラー液晶と拡大縮小機能で、技術志向の強い携帯アーケードを実現。</systemDescription></variables></language>
    <language name="pl_PL"><variables><systemDescription>Konsola przenośna (1989) z podświetlanym ekranem kolorowym i skalowaniem sprzętowym, znana z ambicji technicznych.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>Portátil (1989) com tela colorida retroiluminada e escalonamento por hardware, conhecido pela ambição técnica e jogos estilo arcade.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Портативная консоль (1989) с подсветкой, цветным экраном и аппаратным масштабированием, известная своей технической амбициозностью.</systemDescription></variables></language>
    <language name="sv_SE"><variables><systemDescription>Bärbar konsol (1989) med bakbelyst färgskärm och hårdvaruskalning, känd för sin tekniska ambition.</systemDescription></variables></language>
    <language name="zh_CN"><variables><systemDescription>1989 年掌机，配备背光彩屏与硬件缩放，以技术野心和便携街机风格游戏著称。</systemDescription></variables></language>
</theme>
EOF

# --- atarijaguar.xml ---
cat <<EOF > atarijaguar.xml
<theme>
    <variables>
        <systemName>Atari Jaguar</systemName>
        <systemDescription>The Atari Jaguar (1993) was Atari’s final major home console, marketed as a 64-bit system and remembered for its distinctive architecture and cult library.</systemDescription>
        <systemManufacturer>Atari</systemManufacturer>
        <systemReleaseYear>1993</systemReleaseYear>
        <systemReleaseDate>1993-11-23</systemReleaseDate>
        <systemReleaseDateFormated>November 23, 1993</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>111111</systemColor>
        <systemColorPalette1>ff0000</systemColorPalette1>
        <systemColorPalette2>111111</systemColorPalette2>
        <systemColorPalette3>bdbdbd</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>
    <language name="ar_SA"><variables><systemDescription>آخر جهاز منزلي كبير من أتاري (1993)، سُوّق كنظام 64-بت ويُذكر له تصميمه الفريد ومكتبته ذات الطابع الخاص.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Ataris letzte große Heimkonsole (1993), als „64-Bit“ vermarktet, bekannt für ungewöhnliche Architektur und Kultbibliothek.</systemDescription></variables></language>
    <language name="es_ES"><variables><systemDescription>Última gran consola doméstica de Atari (1993), promocionada como “64-bit”, recordada por su arquitectura particular y su catálogo de culto.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>Dernière grande console Atari (1993), vendue comme un système « 64 bits », célèbre pour son architecture atypique et son catalogue culte.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Ultima grande console Atari (1993), pubblicizzata come “64-bit”, nota per l’architettura particolare e la sua libreria di culto.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1993年のAtari最終世代コンソール。“64ビット”として売り出され、独特な構成とカルト的タイトルで知られます。</systemDescription></variables></language>
    <language name="pl_PL"><variables><systemDescription>Ostatnia duża konsola Atari (1993), reklamowana jako „64-bit”, znana z nietypowej architektury i kultowej biblioteki.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>Último grande console da Atari (1993), divulgado como “64-bit”, lembrado pela arquitetura diferente e biblioteca cult.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Последняя крупная домашняя консоль Atari (1993), продвигалась как “64-битная”, известна необычной архитектурой и культовой библиотекой.</systemDescription></variables></language>
    <language name="sv_SE"><variables><systemDescription>Ataris sista stora hemkonsol (1993), marknadsförd som “64-bit”, känd för sin udda arkitektur och kultutbud.</systemDescription></variables></language>
    <language name="zh_CN"><variables><systemDescription>1993 年 Atari 的最后一款重要家用主机，主打“64 位”宣传，以独特架构与小众经典阵容闻名。</systemDescription></variables></language>
</theme>
EOF

# --- atari800.xml ---
cat <<EOF > atari800.xml
<theme>
    <variables>
        <systemName>Atari 8-bit</systemName>
        <systemDescription>Atari’s 8-bit computer family (from 1979) delivered strong graphics and sound for its time and became a popular platform for games, demos, and home computing.</systemDescription>
        <systemManufacturer>Atari</systemManufacturer>
        <systemReleaseYear>1979</systemReleaseYear>
        <systemReleaseDate>1979-11-01</systemReleaseDate>
        <systemReleaseDateFormated>November 1, 1979</systemReleaseDateFormated>
        <systemHardwareType>Computer</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>2a5a7a</systemColor>
        <systemColorPalette1>ffd200</systemColorPalette1>
        <systemColorPalette2>2a5a7a</systemColorPalette2>
        <systemColorPalette3>1a1a1a</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>
    <language name="ar_SA"><variables><systemDescription>عائلة حواسيب 8-بت (من 1979) قدّمت رسوماً وصوتاً قويين وأصبحت منصة للألعاب والبرامج وعروض الديمو.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Ataris 8-Bit-Computerfamilie (ab 1979) mit starker Grafik und Sound, beliebt für Spiele, Demos und Heimcomputing.</systemDescription></variables></language>
    <language name="es_ES"><variables><systemDescription>Familia de ordenadores Atari de 8 bits (desde 1979), destacada por sus gráficos y sonido, muy usada para juegos, demos e informática doméstica.</systemDescription><systemHardwareType>Ordenador</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>Famille d’ordinateurs 8 bits Atari (dès 1979), réputée pour ses graphismes et son, très populaire pour jeux et demos.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Famiglia di computer Atari a 8 bit (dal 1979), con grafica e audio forti per l’epoca, popolare per giochi e demo.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1979年からのAtari 8ビットPC群。優れた映像・音でゲームやデモ、家庭用コンピューティングで人気。</systemDescription></variables></language>
    <language name="pl_PL"><variables><systemDescription>Rodzina komputerów Atari 8-bit (od 1979) z mocną grafiką i dźwiękiem, popularna dla gier i sceny demo.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>Família de computadores Atari 8-bit (desde 1979), com bons gráficos e som, popular para jogos, demos e uso doméstico.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Семейство 8-битных компьютеров Atari (с 1979) с сильной графикой и звуком, популярное для игр, демо и домашнего использования.</systemDescription></variables></language>
    <language name="sv_SE"><variables><systemDescription>Ataris 8-bitars datorfamilj (från 1979) med stark grafik och ljud, populär för spel, demos och hemanvändning.</systemDescription></variables></language>
    <language name="zh_CN"><variables><systemDescription>自 1979 年起的 Atari 8 位电脑家族，以当时出色的图形与音效著称，广泛用于游戏、演示与家用计算。</systemDescription></variables></language>
</theme>
EOF
# =========================
# BLOQUE 2 — Nintendo (home consoles)
# =========================

# --- nes.xml ---
cat <<EOF > nes.xml
<theme>
    <variables>
        <systemName>Nintendo Entertainment System</systemName>
        <systemDescription>The Nintendo Entertainment System is an 8-bit home console released in 1985. It revived the video game industry after the 1983 crash and established many of Nintendo’s most iconic franchises. Production continued into the early 1990s.</systemDescription>
        <systemManufacturer>Nintendo</systemManufacturer>
        <systemReleaseYear>1985</systemReleaseYear>
        <systemReleaseDate>1985-10-18</systemReleaseDate>
        <systemReleaseDateFormated>October 18, 1985</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>c70000</systemColor>
        <systemColorPalette1>c70000</systemColorPalette1>
        <systemColorPalette2>ffffff</systemColorPalette2>
        <systemColorPalette3>000000</systemColorPalette3>
        <systemColorPalette4>777777</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>La NES, lanzada en 1985, revitalizó la industria tras la crisis de 1983 y dio origen a franquicias icónicas de Nintendo. Su producción se extendió hasta comienzos de los años 90.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La NES, sortie en 1985, a relancé l’industrie après le krach de 1983 et fondé les grandes franchises de Nintendo.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die NES erschien 1985 und belebte die Videospielbranche nach dem Crash von 1983 neu. Sie begründete viele ikonische Nintendo-Serien.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Il NES, pubblicato nel 1985, rilanciò l’industria dopo il crollo del 1983 e diede vita a serie leggendarie.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O NES, lançado em 1985, revitalizou a indústria após o crash de 1983 e consolidou franquias históricas.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>NES, выпущенная в 1985 году, возродила индустрию после кризиса 1983 года и заложила культовые серии Nintendo.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1985年発売。1983年の業界崩壊後、家庭用ゲーム市場を復活させ、任天堂の代表的シリーズを生み出しました。</systemDescription></variables></language>
</theme>
EOF


# --- snes.xml ---
cat <<EOF > snes.xml
<theme>
    <variables>
        <systemName>Super Nintendo Entertainment System</systemName>
        <systemDescription>The Super Nintendo is a 16-bit home console released in 1990. It delivered advanced graphics and sound, becoming one of the most celebrated consoles of its generation. Many of its games remain influential today.</systemDescription>
        <systemManufacturer>Nintendo</systemManufacturer>
        <systemReleaseYear>1990</systemReleaseYear>
        <systemReleaseDate>1990-11-21</systemReleaseDate>
        <systemReleaseDateFormated>November 21, 1990</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>bfbfbf</systemColor>
        <systemColorPalette1>bfbfbf</systemColorPalette1>
        <systemColorPalette2>7a2cff</systemColorPalette2>
        <systemColorPalette3>ff3c3c</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>La SNES, lanzada en 1990, ofreció gráficos y sonido de 16 bits avanzados y se convirtió en una de las consolas más queridas de su generación.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La SNES, sortie en 1990, proposait des graphismes et un son 16 bits de grande qualité, devenant une console emblématique.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die SNES erschien 1990 und bot fortschrittliche 16-Bit-Grafik und Sound. Sie zählt zu den beliebtesten Konsolen ihrer Zeit.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Il SNES, lanciato nel 1990, portò grafica e audio a 16 bit, diventando una delle console più amate.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O SNES, lançado em 1990, apresentou gráficos e áudio 16 bits avançados e marcou uma geração.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>SNES, выпущенная в 1990 году, предложила передовую 16-битную графику и звук, став культовой консолью.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1990年発売。高品質な16ビット映像と音楽で、多くの名作を生み出した名機です。</systemDescription></variables></language>
</theme>
EOF


# --- n64.xml ---
cat <<EOF > n64.xml
<theme>
    <variables>
        <systemName>Nintendo 64</systemName>
        <systemDescription>The Nintendo 64 is a home console released in 1996. It pioneered analog control and brought fully 3D gameplay to the mainstream. Its first-party titles became landmarks of the era.</systemDescription>
        <systemManufacturer>Nintendo</systemManufacturer>
        <systemReleaseYear>1996</systemReleaseYear>
        <systemReleaseDate>1996-06-23</systemReleaseDate>
        <systemReleaseDateFormated>June 23, 1996</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>2b2b2b</systemColor>
        <systemColorPalette1>2b2b2b</systemColorPalette1>
        <systemColorPalette2>00aa44</systemColorPalette2>
        <systemColorPalette3>0044aa</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>Nintendo 64, lanzada en 1996, introdujo el control analógico y popularizó el juego en 3D. Sus títulos propios marcaron una época.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La Nintendo 64, sortie en 1996, a popularisé le jeu en 3D et le stick analogique.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die Nintendo 64 erschien 1996 und brachte Analogsteuerung und 3D-Gaming in den Mainstream.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Il Nintendo 64, lanciato nel 1996, introdusse il controllo analogico e il gioco 3D su larga scala.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O Nintendo 64, lançado em 1996, trouxe o controle analógico e consolidou os jogos em 3D.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Nintendo 64, выпущенная в 1996 году, внедрила аналоговый контроллер и сделала 3D-игры массовыми.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1996年発売。アナログスティックと本格的な3Dゲームを普及させた革新的なハードです。</systemDescription></variables></language>
</theme>
EOF
# =========================
# BLOQUE 3 — Nintendo (handhelds)
# =========================

# --- gb.xml ---
cat <<EOF > gb.xml
<theme>
    <variables>
        <systemName>Game Boy</systemName>
        <systemDescription>The Game Boy is a handheld video game system released in 1989. Its long battery life and simple design made portable gaming mainstream worldwide. An extensive library of iconic titles defined an entire generation.</systemDescription>
        <systemManufacturer>Nintendo</systemManufacturer>
        <systemReleaseYear>1989</systemReleaseYear>
        <systemReleaseDate>1989-04-21</systemReleaseDate>
        <systemReleaseDateFormated>April 21, 1989</systemReleaseDateFormated>
        <systemHardwareType>Handheld</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>7f8c6c</systemColor>
        <systemColorPalette1>7f8c6c</systemColorPalette1>
        <systemColorPalette2>3a3a3a</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>000000</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>Game Boy, lanzada en 1989, llevó el juego portátil al público masivo gracias a su gran autonomía y diseño simple. Su catálogo marcó a toda una generación.</systemDescription><systemHardwareType>Portátil</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La Game Boy, sortie en 1989, a démocratisé le jeu portable grâce à son autonomie et à son immense catalogue.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Der Game Boy erschien 1989 und machte mobiles Spielen durch lange Batterielaufzeit weltweit populär.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Il Game Boy, lanciato nel 1989, ha reso il gioco portatile popolare grazie alla sua autonomia e semplicità.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O Game Boy, lançado em 1989, popularizou os jogos portáteis com grande autonomia e títulos marcantes.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Game Boy, выпущенная в 1989 году, сделала портативные игры массовыми благодаря автономности и простоте.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1989年発売。長時間駆動とシンプルな設計で携帯ゲームを世界的に普及させました。</systemDescription></variables></language>
</theme>
EOF


# --- gbc.xml ---
cat <<EOF > gbc.xml
<theme>
    <variables>
        <systemName>Game Boy Color</systemName>
        <systemDescription>The Game Boy Color was released in 1998 as an enhanced version of the original Game Boy. It introduced color graphics while maintaining backward compatibility with existing titles. This transition extended the life of the Game Boy platform.</systemDescription>
        <systemManufacturer>Nintendo</systemManufacturer>
        <systemReleaseYear>1998</systemReleaseYear>
        <systemReleaseDate>1998-10-21</systemReleaseDate>
        <systemReleaseDateFormated>October 21, 1998</systemReleaseDateFormated>
        <systemHardwareType>Handheld</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>6a4cff</systemColor>
        <systemColorPalette1>6a4cff</systemColorPalette1>
        <systemColorPalette2>00c853</systemColorPalette2>
        <systemColorPalette3>ff5252</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>Game Boy Color, lanzada en 1998, añadió gráficos a color manteniendo compatibilidad con los juegos originales. Esta evolución prolongó la vida de la plataforma Game Boy.</systemDescription><systemHardwareType>Portátil</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La Game Boy Color, sortie en 1998, a introduit la couleur tout en restant compatible avec les jeux précédents.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Der Game Boy Color erschien 1998 und brachte Farbgrafik bei voller Abwärtskompatibilität.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Il Game Boy Color, lanciato nel 1998, introdusse la grafica a colori mantenendo la compatibilità con i titoli originali.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O Game Boy Color, lançado em 1998, trouxe gráficos coloridos mantendo compatibilidade com jogos anteriores.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Game Boy Color, выпущенная в 1998 году, добавила цветную графику с сохранением совместимости.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1998年発売。カラー表示を追加しつつ、従来のゲームとの互換性を維持しました。</systemDescription></variables></language>
</theme>
EOF


# --- gba.xml ---
cat <<EOF > gba.xml
<theme>
    <variables>
        <systemName>Game Boy Advance</systemName>
        <systemDescription>The Game Boy Advance is a 32-bit handheld console released in 2001. It delivered near-console-quality games in a portable format and became a bridge between classic handhelds and modern portable systems.</systemDescription>
        <systemManufacturer>Nintendo</systemManufacturer>
        <systemReleaseYear>2001</systemReleaseYear>
        <systemReleaseDate>2001-03-21</systemReleaseDate>
        <systemReleaseDateFormated>March 21, 2001</systemReleaseDateFormated>
        <systemHardwareType>Handheld</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>6e6e6e</systemColor>
        <systemColorPalette1>6e6e6e</systemColorPalette1>
        <systemColorPalette2>7b1fa2</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>000000</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>Game Boy Advance, lanzada en 2001, ofreció juegos de calidad cercana a consola en formato portátil. Representó la transición hacia sistemas portátiles más modernos.</systemDescription><systemHardwareType>Portátil</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La Game Boy Advance, sortie en 2001, proposait des jeux proches de la qualité console en format portable.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Der Game Boy Advance erschien 2001 und brachte nahezu konsolenähnliche Spiele auf ein Handheld.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Il Game Boy Advance, lanciato nel 2001, offrì esperienze di gioco simili a quelle console in formato portatile.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O Game Boy Advance, lançado em 2001, trouxe jogos quase no nível de consoles para o formato portátil.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Game Boy Advance, выпущенная в 2001 году, предложила почти консольный уровень игр в портативном формате.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>2001年発売。携帯機ながら据置機に近い品質のゲームを実現した次世代モデルです。</systemDescription></variables></language>
</theme>
EOF
# =========================
# BLOQUE 4 — Sega (home & handheld)
# =========================

# --- mastersystem.xml ---
cat <<EOF > mastersystem.xml
<theme>
    <variables>
        <systemName>Sega Master System</systemName>
        <systemDescription>The Sega Master System is an 8-bit home console released in the mid-1980s. It offered strong arcade-style graphics and sound, competing directly with the NES. The system enjoyed long-lasting popularity in regions such as Europe and Brazil.</systemDescription>
        <systemManufacturer>Sega</systemManufacturer>
        <systemReleaseYear>1986</systemReleaseYear>
        <systemReleaseDate>1986-10-20</systemReleaseDate>
        <systemReleaseDateFormated>October 20, 1986</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>000000</systemColor>
        <systemColorPalette1>000000</systemColorPalette1>
        <systemColorPalette2>ffffff</systemColorPalette2>
        <systemColorPalette3>e60012</systemColorPalette3>
        <systemColorPalette4>777777</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>La Sega Master System, lanzada a mediados de los 80, fue una consola de 8 bits con fuerte enfoque arcade. Compitió con la NES y tuvo gran éxito en Europa y Brasil.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La Master System est une console 8 bits sortie dans les années 80, réputée pour ses graphismes arcade et son succès en Europe.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die Sega Master System erschien Mitte der 1980er-Jahre als 8-Bit-Konsole mit starker Arcade-Ausrichtung.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>La Sega Master System, lanciata negli anni ’80, offriva esperienze arcade e competé direttamente con il NES.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O Master System, lançado nos anos 80, destacou-se no Brasil e trouxe forte influência dos arcades.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Sega Master System — 8-битная консоль 1980-х годов с ярко выраженным аркадным стилем.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1980年代に発売された8ビット家庭用ゲーム機。アーケード志向の性能が特徴でした。</systemDescription></variables></language>
</theme>
EOF


# --- megadrive.xml ---
cat <<EOF > megadrive.xml
<theme>
    <variables>
        <systemName>Sega Mega Drive</systemName>
        <systemDescription>The Sega Mega Drive is a 16-bit home console released in 1988. It became known for its fast-paced arcade-style games and strong third-party support. In North America, it was marketed as the Sega Genesis.</systemDescription>
        <systemManufacturer>Sega</systemManufacturer>
        <systemReleaseYear>1988</systemReleaseYear>
        <systemReleaseDate>1988-10-29</systemReleaseDate>
        <systemReleaseDateFormated>October 29, 1988</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>2b2b2b</systemColor>
        <systemColorPalette1>2b2b2b</systemColorPalette1>
        <systemColorPalette2>ffffff</systemColorPalette2>
        <systemColorPalette3>00aaff</systemColorPalette3>
        <systemColorPalette4>ff0000</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>La Sega Mega Drive, lanzada en 1988, fue una consola de 16 bits conocida por sus juegos rápidos de estilo arcade. En América se comercializó como Sega Genesis.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La Mega Drive, sortie en 1988, s’est distinguée par ses jeux rapides et son orientation arcade.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die Mega Drive erschien 1988 als 16-Bit-Konsole mit Fokus auf schnelle Arcade-Spiele.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Il Mega Drive, lanciato nel 1988, è noto per i suoi titoli arcade veloci e il forte supporto di terze parti.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O Mega Drive, lançado em 1988, marcou época com jogos rápidos e estilo arcade.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Sega Mega Drive — 16-битная консоль 1988 года, известная динамичными аркадными играми.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1988年発売。高速なゲーム展開とアーケード色の強さで人気を博しました。</systemDescription></variables></language>
</theme>
EOF


# --- gamegear.xml ---
cat <<EOF > gamegear.xml
<theme>
    <variables>
        <systemName>Sega Game Gear</systemName>
        <systemDescription>The Sega Game Gear is a handheld console released in 1990. It featured a color screen and hardware similar to the Master System, delivering arcade-style games on the go. High power consumption limited its portability.</systemDescription>
        <systemManufacturer>Sega</systemManufacturer>
        <systemReleaseYear>1990</systemReleaseYear>
        <systemReleaseDate>1990-10-06</systemReleaseDate>
        <systemReleaseDateFormated>October 6, 1990</systemReleaseDateFormated>
        <systemHardwareType>Handheld</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>000000</systemColor>
        <systemColorPalette1>000000</systemColorPalette1>
        <systemColorPalette2>00aaff</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>ff0000</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>La Sega Game Gear, lanzada en 1990, ofreció juegos a color con potencia similar a Master System. Su elevado consumo energético limitó la autonomía.</systemDescription><systemHardwareType>Portátil</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La Game Gear, sortie en 1990, proposait des jeux en couleur proches de l’arcade, au prix d’une faible autonomie.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die Game Gear erschien 1990 mit Farbdisplay und Master-System-ähnlicher Technik, hatte jedoch hohen Energieverbrauch.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>La Game Gear, lanciata nel 1990, offriva giochi a colori con hardware simile al Master System.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O Game Gear, lançado em 1990, trouxe jogos em cores, mas sofria com alto consumo de energia.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Sega Game Gear — портативная консоль 1990 года с цветным экраном и аркадным уклоном.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1990年発売。カラー液晶と高性能を備えた携帯機でしたが、電池消費が大きいのが課題でした。</systemDescription></variables></language>
</theme>
EOF
# =========================
# BLOQUE 5 — Sony (modern & handheld)
# =========================

# --- ps2.xml ---
cat <<EOF > ps2.xml
<theme>
    <variables>
        <systemName>Sony PlayStation 2</systemName>
        <systemDescription>The PlayStation 2 is a sixth-generation home console released in 2000. It combined strong 3D performance with DVD playback, becoming the best-selling video game console of all time. Its vast library defined an entire era.</systemDescription>
        <systemManufacturer>Sony</systemManufacturer>
        <systemReleaseYear>2000</systemReleaseYear>
        <systemReleaseDate>2000-03-04</systemReleaseDate>
        <systemReleaseDateFormated>March 4, 2000</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>0a0a0a</systemColor>
        <systemColorPalette1>0a0a0a</systemColorPalette1>
        <systemColorPalette2>0033ff</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>444444</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>PlayStation 2, lanzada en el año 2000, combinó potencia 3D con reproducción de DVD y se convirtió en la consola más vendida de la historia. Su extenso catálogo marcó a toda una generación.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La PlayStation 2, sortie en 2000, associait performances 3D et lecteur DVD, devenant la console la plus vendue de l’histoire.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die PlayStation 2 erschien 2000 und verband starke 3D-Leistung mit DVD-Wiedergabe. Sie ist die meistverkaufte Konsole aller Zeiten.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>La PlayStation 2, lanciata nel 2000, unì grafica 3D avanzata e lettore DVD, diventando la console più venduta di sempre.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O PlayStation 2, lançado em 2000, uniu jogos 3D e reprodução de DVD, tornando-se o console mais vendido da história.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>PlayStation 2, выпущенная в 2000 году, объединила мощную 3D-графику и DVD-плеер, став самой продаваемой консолью.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>2000年発売。DVD再生と高性能3Dを両立し、史上最も売れた家庭用ゲーム機となりました。</systemDescription></variables></language>
</theme>
EOF


# --- psp.xml ---
cat <<EOF > psp.xml
<theme>
    <variables>
        <systemName>PlayStation Portable</systemName>
        <systemDescription>The PlayStation Portable is a handheld console released in 2004. It delivered near-console-quality games in a sleek portable form and introduced multimedia features such as video and music playback.</systemDescription>
        <systemManufacturer>Sony</systemManufacturer>
        <systemReleaseYear>2004</systemReleaseYear>
        <systemReleaseDate>2004-12-12</systemReleaseDate>
        <systemReleaseDateFormated>December 12, 2004</systemReleaseDateFormated>
        <systemHardwareType>Handheld</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>1c1c1c</systemColor>
        <systemColorPalette1>1c1c1c</systemColorPalette1>
        <systemColorPalette2>ffffff</systemColorPalette2>
        <systemColorPalette3>0077ff</systemColorPalette3>
        <systemColorPalette4>777777</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>PlayStation Portable, lanzada en 2004, ofreció juegos de calidad cercana a consola en formato portátil. También incorporó funciones multimedia como música y video.</systemDescription><systemHardwareType>Portátil</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La PSP, sortie en 2004, proposait des jeux proches des consoles de salon et des fonctions multimédias.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die PSP erschien 2004 und bot nahezu konsolenähnliche Spiele sowie Multimedia-Funktionen.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>La PSP, lanciata nel 2004, offriva giochi di qualità console in un formato portatile con funzioni multimediali.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O PSP, lançado em 2004, levou jogos quase de console para o portátil e trouxe recursos multimídia.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>PlayStation Portable, выпущенная в 2004 году, предложила консольное качество игр и мультимедийные функции.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>2004年発売。据置機に近い品質のゲームとマルチメディア機能を備えた携帯機です。</systemDescription></variables></language>
</theme>
EOF


# --- psvita.xml ---
cat <<EOF > psvita.xml
<theme>
    <variables>
        <systemName>PlayStation Vita</systemName>
        <systemDescription>The PlayStation Vita is a handheld console released in 2011. It featured a high-resolution screen, dual analog sticks, and powerful hardware for its size. Despite strong technology, it struggled to gain market traction.</systemDescription>
        <systemManufacturer>Sony</systemManufacturer>
        <systemReleaseYear>2011</systemReleaseYear>
        <systemReleaseDate>2011-12-17</systemReleaseDate>
        <systemReleaseDateFormated>December 17, 2011</systemReleaseDateFormated>
        <systemHardwareType>Handheld</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>222222</systemColor>
        <systemColorPalette1>222222</systemColorPalette1>
        <systemColorPalette2>00aaff</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>555555</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>PlayStation Vita, lanzada en 2011, incorporó pantalla de alta resolución y doble stick analógico en un potente formato portátil. A pesar de su tecnología, tuvo dificultades comerciales.</systemDescription><systemHardwareType>Portátil</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La PlayStation Vita, sortie en 2011, offrait un écran haute résolution et une grande puissance, mais peina commercialement.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die PlayStation Vita erschien 2011 mit hochauflösendem Display und starker Technik, konnte sich jedoch nicht durchsetzen.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>La PlayStation Vita, lanciata nel 2011, disponeva di hardware potente e doppio stick analogico, ma ebbe scarso successo.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O PlayStation Vita, lançado em 2011, trouxe tela de alta resolução e grande potência, mas teve pouco sucesso comercial.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>PlayStation Vita, выпущенная в 2011 году, обладала мощным железом и двумя аналоговыми стиками, но не добилась успеха.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>2011年発売。高解像度画面と高性能を備えた携帯機でしたが、市場では苦戦しました。</systemDescription></variables></language>
</theme>
EOF
# --- psx.xml ---
cat <<EOF > psx.xml
<theme>
    <variables>
        <systemName>Sony PlayStation</systemName>
        <systemDescription>The Sony PlayStation (PS) is a fifth-generation home video game console released in Japan on December 3, 1994. It helped popularize disc-based games over cartridges and pushed 3D gaming into the mainstream. Its original line was discontinued on March 23, 2006.</systemDescription>
        <systemManufacturer>Sony</systemManufacturer>
        <systemReleaseYear>1994</systemReleaseYear>
        <systemReleaseDate>1994-12-03</systemReleaseDate>
        <systemReleaseDateFormated>December 3, 1994</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>cfcfcf</systemColor>
        <systemColorPalette1>cfcfcf</systemColorPalette1>
        <systemColorPalette2>222222</systemColorPalette2>
        <systemColorPalette3>e60012</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>La Sony PlayStation (PS) es una consola de quinta generación lanzada en Japón el 3 de diciembre de 1994. Popularizó los juegos en CD frente a los cartuchos e impulsó el 3D en el mercado masivo. Su línea original se discontinuó el 23 de marzo de 2006.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La PlayStation (PS), sortie au Japon le 3 décembre 1994, a popularisé les jeux sur CD et démocratisé la 3D. La gamme originale a été arrêtée le 23 mars 2006.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die PlayStation (PS) erschien in Japan am 3. Dezember 1994. Sie machte CD-Spiele populär und brachte 3D-Gaming in den Mainstream. Die ursprüngliche Reihe endete am 23. März 2006.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>La PlayStation (PS), uscita in Giappone il 3 dicembre 1994, ha reso popolari i giochi su CD e ha portato il 3D al grande pubblico. La linea originale è stata interrotta il 23 marzo 2006.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O PlayStation (PS), lançado no Japão em 3 de dezembro de 1994, popularizou jogos em CD e levou o 3D ao grande público. A linha original foi descontinuada em 23 de março de 2006.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>PlayStation (PS) вышла в Японии 3 декабря 1994 года. Она популяризировала игры на CD и вывела 3D-гейминг в массовый сегмент. Оригинальная линейка была снята с производства 23 марта 2006 года.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1994年12月3日に日本で発売。CD媒体を普及させ、3Dゲームを大衆化した第5世代の家庭用ゲーム機です。初代シリーズは2006年3月23日に生産終了しました。</systemDescription></variables></language>
</theme>
EOF
# --- saturn.xml ---
cat <<EOF > saturn.xml
<theme>
    <variables>
        <systemName>Sega Saturn</systemName>
        <systemDescription>The Sega Saturn, released in 1994, was a 32-bit home console designed with powerful 2D capabilities and complex dual-CPU architecture. While challenging to program, it delivered arcade-accurate experiences and remains highly regarded for its exclusive titles.</systemDescription>
        <systemManufacturer>Sega</systemManufacturer>
        <systemReleaseYear>1994</systemReleaseYear>
        <systemReleaseDate>1994-11-22</systemReleaseDate>
        <systemReleaseDateFormated>November 22, 1994</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>e5e5e5</systemSystemColor>
        <systemColorPalette1>e5e5e5</systemColorPalette1>
        <systemColorPalette2>0055a4</systemColorPalette2>
        <systemColorPalette3>000000</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>La Sega Saturn (1994) fue una consola de 32 bits con gran potencia en 2D y una arquitectura compleja de doble CPU. Destacó por sus conversiones arcade y exclusivos muy valorados.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La Sega Saturn (1994) était une console 32 bits axée sur la 2D, connue pour ses conversions arcade fidèles.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die Sega Saturn (1994) war eine 32-Bit-Konsole mit starker 2D-Leistung und komplexer Architektur.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>La Sega Saturn (1994) offriva eccellenti capacità 2D e conversioni arcade di alto livello.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O Sega Saturn (1994) destacou-se pelo desempenho em 2D e por ports arcade precisos.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Sega Saturn (1994) — 32-битная консоль с мощной 2D-графикой и аркадными портами.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1994年発売。2D性能に優れ、アーケード移植で高い評価を受けたセガの家庭用ゲーム機です。</systemDescription></variables></language>
</theme>
EOF


# --- dreamcast.xml ---
cat <<EOF > dreamcast.xml
<theme>
    <variables>
        <systemName>Sega Dreamcast</systemName>
        <systemDescription>The Sega Dreamcast, released in 1998, was ahead of its time with built-in online support, advanced 3D graphics, and arcade-quality performance. Despite its short lifespan, it left a lasting legacy and marked Sega’s final home console.</systemDescription>
        <systemManufacturer>Sega</systemManufacturer>
        <systemReleaseYear>1998</systemReleaseYear>
        <systemReleaseDate>1998-11-27</systemReleaseDate>
        <systemReleaseDateFormated>November 27, 1998</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>f15a24</systemColor>
        <systemColorPalette1>f15a24</systemColorPalette1>
        <systemColorPalette2>ffffff</systemColorPalette2>
        <systemColorPalette3>000000</systemColorPalette3>
        <systemColorPalette4>cccccc</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>La Dreamcast (1998) fue una consola adelantada a su tiempo, con soporte online integrado y gráficos 3D avanzados. Marcó el final de Sega como fabricante de consolas domésticas.</systemDescription><systemHardwareType>Consola</systemHardwareType></variables></language>
    <language name="fr_FR"><variables><systemDescription>La Dreamcast (1998) proposait le jeu en ligne intégré et des performances 3D exceptionnelles.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Die Dreamcast (1998) war ihrer Zeit voraus mit Online-Funktionen und starker 3D-Leistung.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>La Dreamcast (1998) introdusse il gioco online e prestazioni 3D avanzate, segnando l’ultima console Sega.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O Dreamcast (1998) trouxe suporte online e gráficos avançados, sendo a última console da Sega.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Dreamcast (1998) опередила своё время благодаря онлайн-функциям и мощной 3D-графике.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>1998年発売。オンライン機能と高性能3Dで時代を先取りした、セガ最後の家庭用ゲーム機です。</systemDescription></variables></language>
</theme>
EOF
# --- arcade.xml ---
cat <<EOF > arcade.xml
<theme>
    <variables>
        <systemName>Arcade</systemName>
        <systemDescription>Arcade systems are coin-operated video game machines designed for public venues. They defined the golden age of gaming, offering powerful hardware, unique controls, and experiences that often surpassed contemporary home consoles.</systemDescription>
        <systemManufacturer>Various</systemManufacturer>
        <systemReleaseYear>1971</systemReleaseYear>
        <systemHardwareType>Arcade</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>ffcc00</systemColor>
        <systemColorPalette1>ffcc00</systemColorPalette1>
        <systemColorPalette2>ff0000</systemColorPalette2>
        <systemColorPalette3>000000</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>Los sistemas Arcade son máquinas recreativas diseñadas para locales públicos. Definieron la edad dorada del videojuego con hardware potente y experiencias únicas.</systemDescription></variables></language>
    <language name="fr_FR"><variables><systemDescription>Les systèmes d’arcade sont des machines à pièces qui ont marqué l’âge d’or du jeu vidéo.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Arcade-Systeme prägten die goldene Ära der Videospiele mit leistungsstarker Hardware.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>I sistemi arcade hanno definito l’epoca d’oro dei videogiochi con esperienze uniche.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>Os arcades marcaram a era de ouro dos videogames com máquinas potentes e jogos icônicos.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Аркадные системы определили золотую эпоху видеоигр благодаря мощному оборудованию.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>アーケードはゲームセンター向けに設計され、ゲーム黄金期を築いた業務用システムです。</systemDescription></variables></language>
</theme>
EOF
# --- neogeo.xml ---
cat <<EOF > neogeo.xml
<theme>
    <variables>
        <systemName>Neo Geo</systemName>
        <systemDescription>The Neo Geo was SNK’s premium arcade system, known for delivering uncompromised arcade experiences. Its hardware powered iconic fighting games and shooters, maintaining visual and audio quality far beyond most home systems.</systemDescription>
        <systemManufacturer>SNK</systemManufacturer>
        <systemReleaseYear>1990</systemReleaseYear>
        <systemHardwareType>Arcade</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>000000</systemColor>
        <systemColorPalette1>000000</systemColorPalette1>
        <systemColorPalette2>ff0000</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>666666</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>Neo Geo fue el sistema arcade premium de SNK, famoso por ofrecer experiencias idénticas al salón recreativo y juegos de lucha legendarios.</systemDescription></variables></language>
    <language name="fr_FR"><variables><systemDescription>Le Neo Geo offrait des expériences arcade sans compromis et une qualité exceptionnelle.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>Neo Geo war bekannt für kompromisslose Arcade-Qualität und legendäre Kampfspiele.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>Neo Geo garantiva esperienze arcade autentiche e una qualità tecnica elevata.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>O Neo Geo trouxe experiências arcade fiéis com qualidade audiovisual superior.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>Neo Geo славилась аркадным качеством без компромиссов.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>SNKのNeo Geoは、妥協のないアーケード品質で知られる業務用システムです。</systemDescription></variables></language>
</theme>
EOF
# --- mame.xml ---
cat <<EOF > mame.xml
<theme>
    <variables>
        <systemName>MAME</systemName>
        <systemDescription>MAME (Multiple Arcade Machine Emulator) is a preservation-focused project that emulates thousands of arcade systems. Its goal is to document and protect arcade history by accurately reproducing original hardware behavior.</systemDescription>
        <systemManufacturer>Community</systemManufacturer>
        <systemReleaseYear>1997</systemReleaseYear>
        <systemHardwareType>Emulation</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>444444</systemColor>
        <systemColorPalette1>444444</systemColorPalette1>
        <systemColorPalette2>ffffff</systemColorPalette2>
        <systemColorPalette3>000000</systemColorPalette3>
        <systemColorPalette4>ffcc00</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES"><variables><systemDescription>MAME es un proyecto de preservación que emula miles de sistemas arcade, enfocándose en la fidelidad del hardware original.</systemDescription></variables></language>
    <language name="fr_FR"><variables><systemDescription>MAME vise la préservation des systèmes d’arcade par une émulation fidèle.</systemDescription></variables></language>
    <language name="de_DE"><variables><systemDescription>MAME dient der Erhaltung von Arcade-Hardware durch präzise Emulation.</systemDescription></variables></language>
    <language name="it_IT"><variables><systemDescription>MAME preserva la storia arcade tramite emulazione accurata.</systemDescription></variables></language>
    <language name="pt_BR"><variables><systemDescription>MAME é focado na preservação e emulação fiel de sistemas arcade.</systemDescription></variables></language>
    <language name="ru_RU"><variables><systemDescription>MAME предназначен для сохранения истории аркадных систем.</systemDescription></variables></language>
    <language name="ja_JP"><variables><systemDescription>MAMEはアーケード基板の保存と正確な再現を目的としたプロジェクトです。</systemDescription></variables></language>
</theme>
EOF
# --- ps2.xml ---
cat <<EOF > ps2.xml
<theme>
    <variables>
        <systemName>Sony PlayStation 2</systemName>
        <systemDescription>The PlayStation 2, released in 2000, became the best-selling home console of all time. Its DVD support, vast third-party library, and long lifespan defined an entire generation of gaming.</systemDescription>
        <systemManufacturer>Sony</systemManufacturer>
        <systemReleaseYear>2000</systemReleaseYear>
        <systemReleaseDate>2000-03-04</systemReleaseDate>
        <systemReleaseDateFormated>March 4, 2000</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>1a1a1a</systemColor>
        <systemColorPalette1>1a1a1a</systemColorPalette1>
        <systemColorPalette2>0033cc</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>666666</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES">
        <variables>
            <systemDescription>La PlayStation 2 (2000) es la consola más vendida de la historia. Su soporte DVD, enorme catálogo y larga vida comercial marcaron una generación completa.</systemDescription>
            <systemHardwareType>Consola</systemHardwareType>
        </variables>
    </language>

    <language name="fr_FR">
        <variables>
            <systemDescription>La PlayStation 2 (2000) est devenue la console la plus vendue de l’histoire grâce à son immense catalogue.</systemDescription>
        </variables>
    </language>

    <language name="de_DE">
        <variables>
            <systemDescription>Die PlayStation 2 (2000) ist die meistverkaufte Konsole aller Zeiten mit einer enormen Spielebibliothek.</systemDescription>
        </variables>
    </language>

    <language name="it_IT">
        <variables>
            <systemDescription>La PlayStation 2 (2000) è la console più venduta di sempre, grazie al suo vastissimo catalogo.</systemDescription>
        </variables>
    </language>

    <language name="pt_BR">
        <variables>
            <systemDescription>O PlayStation 2 (2000) tornou-se o console mais vendido da história, com uma biblioteca gigantesca.</systemDescription>
        </variables>
    </language>

    <language name="ru_RU">
        <variables>
            <systemDescription>PlayStation 2 (2000) стала самой продаваемой консолью в истории индустрии.</systemDescription>
        </variables>
    </language>

    <language name="ja_JP">
        <variables>
            <systemDescription>2000年発売。DVD対応と圧倒的なソフト数により、史上最も売れた家庭用ゲーム機となりました。</systemDescription>
        </variables>
    </language>
</theme>
EOF
# --- psp.xml ---
cat <<EOF > psp.xml
<theme>
    <variables>
        <systemName>Sony PlayStation Portable</systemName>
        <systemDescription>The PlayStation Portable (PSP), released in 2004, delivered near-console-quality gaming in a portable form. Its multimedia features and strong first-party support made it one of the most advanced handhelds of its era.</systemDescription>
        <systemManufacturer>Sony</systemManufacturer>
        <systemReleaseYear>2004</systemReleaseYear>
        <systemReleaseDate>2004-12-12</systemReleaseDate>
        <systemReleaseDateFormated>December 12, 2004</systemReleaseDateFormated>
        <systemHardwareType>Handheld</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>2d2d2d</systemColor>
        <systemColorPalette1>2d2d2d</systemColorPalette1>
        <systemColorPalette2>00aaff</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>888888</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES">
        <variables>
            <systemDescription>La PSP (2004) ofreció calidad cercana a consola en formato portátil, junto con funciones multimedia avanzadas.</systemDescription>
            <systemHardwareType>Portátil</systemHardwareType>
        </variables>
    </language>

    <language name="fr_FR">
        <variables>
            <systemDescription>La PSP (2004) proposait une qualité proche d’une console de salon dans un format portable.</systemDescription>
        </variables>
    </language>

    <language name="de_DE">
        <variables>
            <systemDescription>Die PSP (2004) brachte nahezu Konsolenqualität in ein tragbares Format.</systemDescription>
        </variables>
    </language>

    <language name="it_IT">
        <variables>
            <systemDescription>La PSP (2004) offriva qualità quasi da console domestica in formato portatile.</systemDescription>
        </variables>
    </language>

    <language name="pt_BR">
        <variables>
            <systemDescription>O PSP (2004) levou jogos com qualidade de console para o formato portátil.</systemDescription>
        </variables>
    </language>

    <language name="ru_RU">
        <variables>
            <systemDescription>PSP (2004) предложила почти консольное качество в портативном формате.</systemDescription>
        </variables>
    </language>

    <language name="ja_JP">
        <variables>
            <systemDescription>2004年発売。携帯機ながら家庭用に近いクオリティと多彩な機能を備えていました。</systemDescription>
        </variables>
    </language>
</theme>
EOF
# --- mastersystem.xml ---
cat <<EOF > mastersystem.xml
<theme>
    <variables>
        <systemName>Sega Master System</systemName>
        <systemDescription>The Sega Master System, released in the mid-1980s, offered superior arcade-style graphics compared to its rivals. Although overshadowed in some regions, it achieved strong success in Europe and Brazil.</systemDescription>
        <systemManufacturer>Sega</systemManufacturer>
        <systemReleaseYear>1985</systemReleaseYear>
        <systemReleaseDate>1985-10-20</systemReleaseDate>
        <systemReleaseDateFormated>October 20, 1985</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>1c1c1c</systemColor>
        <systemColorPalette1>1c1c1c</systemColorPalette1>
        <systemColorPalette2>ff0000</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>777777</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES">
        <variables>
            <systemDescription>La Sega Master System destacó por sus gráficos de estilo arcade y tuvo gran éxito en Europa y Brasil.</systemDescription>
            <systemHardwareType>Consola</systemHardwareType>
        </variables>
    </language>

    <language name="fr_FR">
        <variables>
            <systemDescription>La Master System offrait des graphismes proches de l’arcade et a connu un fort succès en Europe.</systemDescription>
        </variables>
    </language>

    <language name="de_DE">
        <variables>
            <systemDescription>Das Sega Master System bot arcadeähnliche Grafik und war besonders in Europa erfolgreich.</systemDescription>
        </variables>
    </language>

    <language name="it_IT">
        <variables>
            <systemDescription>Il Sega Master System era noto per la sua grafica arcade e la forte presenza europea.</systemDescription>
        </variables>
    </language>

    <language name="pt_BR">
        <variables>
            <systemDescription>O Master System teve enorme sucesso no Brasil, tornando-se um ícone da Sega.</systemDescription>
        </variables>
    </language>

    <language name="ru_RU">
        <variables>
            <systemDescription>Sega Master System отличалась аркадной графикой и популярностью в Европе.</systemDescription>
        </variables>
    </language>

    <language name="ja_JP">
        <variables>
            <systemDescription>1980年代中盤に登場。アーケードに近い表現力を持つ家庭用ゲーム機でした。</systemDescription>
        </variables>
    </language>
</theme>
EOF
# --- megadrive.xml ---
cat <<EOF > megadrive.xml
<theme>
    <variables>
        <systemName>Sega Mega Drive</systemName>
        <systemDescription>The Sega Mega Drive, launched in 1988, defined the 16-bit era with fast-paced arcade action. It became synonymous with Sega’s identity and iconic franchises.</systemDescription>
        <systemManufacturer>Sega</systemManufacturer>
        <systemReleaseYear>1988</systemReleaseYear>
        <systemReleaseDate>1988-10-29</systemReleaseDate>
        <systemReleaseDateFormated>October 29, 1988</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>111111</systemColor>
        <systemColorPalette1>111111</systemColorPalette1>
        <systemColorPalette2>0055ff</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>999999</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES">
        <variables>
            <systemDescription>La Mega Drive (1988) definió la era de los 16 bits con acción rápida y el estilo arcade de Sega.</systemDescription>
            <systemHardwareType>Consola</systemHardwareType>
        </variables>
    </language>

    <language name="fr_FR">
        <variables>
            <systemDescription>La Mega Drive a marqué l’ère 16 bits avec une action rapide et arcade.</systemDescription>
        </variables>
    </language>

    <language name="de_DE">
        <variables>
            <systemDescription>Die Mega Drive prägte die 16-Bit-Ära mit schnellem Arcade-Gameplay.</systemDescription>
        </variables>
    </language>

    <language name="it_IT">
        <variables>
            <systemDescription>Il Mega Drive ha rappresentato l’anima arcade di Sega nell’era 16 bit.</systemDescription>
        </variables>
    </language>

    <language name="pt_BR">
        <variables>
            <systemDescription>O Mega Drive definiu a era 16 bits com jogos rápidos e estilo arcade.</systemDescription>
        </variables>
    </language>

    <language name="ru_RU">
        <variables>
            <systemDescription>Mega Drive стала символом 16-битной эпохи и аркадного стиля Sega.</systemDescription>
        </variables>
    </language>

    <language name="ja_JP">
        <variables>
            <systemDescription>1988年発売。高速なゲーム性で16ビット時代を象徴する存在となりました。</systemDescription>
        </variables>
    </language>
</theme>
EOF
# --- gba.xml ---
cat <<EOF > gba.xml
<theme>
    <variables>
        <systemName>Game Boy Advance</systemName>
        <systemDescription>The Game Boy Advance, released in 2001, brought 32-bit performance to portable gaming. Its strong first-party lineup and backward compatibility helped extend the Game Boy legacy.</systemDescription>
        <systemManufacturer>Nintendo</systemManufacturer>
        <systemReleaseYear>2001</systemReleaseYear>
        <systemReleaseDate>2001-03-21</systemReleaseDate>
        <systemReleaseDateFormated>March 21, 2001</systemReleaseDateFormated>
        <systemHardwareType>Handheld</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>6a5acd</systemColor>
        <systemColorPalette1>6a5acd</systemColorPalette1>
        <systemColorPalette2>00c853</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>333333</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES">
        <variables>
            <systemDescription>Game Boy Advance (2001) llevó potencia de 32 bits al juego portátil y mantuvo compatibilidad con generaciones previas.</systemDescription>
            <systemHardwareType>Portátil</systemHardwareType>
        </variables>
    </language>

    <language name="fr_FR">
        <variables>
            <systemDescription>La Game Boy Advance (2001) a apporté la puissance 32 bits au jeu portable.</systemDescription>
        </variables>
    </language>

    <language name="de_DE">
        <variables>
            <systemDescription>Der Game Boy Advance (2001) brachte 32-Bit-Leistung in den Handheld-Bereich.</systemDescription>
        </variables>
    </language>

    <language name="it_IT">
        <variables>
            <systemDescription>Il Game Boy Advance (2001) introdusse prestazioni a 32 bit nel gioco portatile.</systemDescription>
        </variables>
    </language>

    <language name="pt_BR">
        <variables>
            <systemDescription>O Game Boy Advance (2001) trouxe desempenho de 32 bits para os portáteis.</systemDescription>
        </variables>
    </language>

    <language name="ru_RU">
        <variables>
            <systemDescription>Game Boy Advance (2001) принес 32-битную производительность в портативные игры.</systemDescription>
        </variables>
    </language>

    <language name="ja_JP">
        <variables>
            <systemDescription>2001年発売。32ビット性能と後方互換により携帯ゲームの幅を広げました。</systemDescription>
        </variables>
    </language>
</theme>
EOF
# --- nds.xml ---
cat <<EOF > nds.xml
<theme>
    <variables>
        <systemName>Nintendo DS</systemName>
        <systemDescription>The Nintendo DS, launched in 2004, introduced dual screens and touchscreen controls. Its innovative design and broad appeal made it one of the best-selling systems ever.</systemDescription>
        <systemManufacturer>Nintendo</systemManufacturer>
        <systemReleaseYear>2004</systemReleaseYear>
        <systemReleaseDate>2004-11-21</systemReleaseDate>
        <systemReleaseDateFormated>November 21, 2004</systemReleaseDateFormated>
        <systemHardwareType>Handheld</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>d9d9d9</systemColor>
        <systemColorPalette1>d9d9d9</systemColorPalette1>
        <systemColorPalette2>00aaff</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>555555</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES">
        <variables>
            <systemDescription>Nintendo DS (2004) introdujo doble pantalla y control táctil, alcanzando un éxito masivo.</systemDescription>
            <systemHardwareType>Portátil</systemHardwareType>
        </variables>
    </language>

    <language name="fr_FR">
        <variables>
            <systemDescription>La Nintendo DS (2004) a introduit l’écran tactile et le double écran.</systemDescription>
        </variables>
    </language>

    <language name="de_DE">
        <variables>
            <systemDescription>Der Nintendo DS (2004) führte Touchscreen und zwei Bildschirme ein.</systemDescription>
        </variables>
    </language>

    <language name="it_IT">
        <variables>
            <systemDescription>Il Nintendo DS (2004) ha introdotto doppio schermo e comandi touch.</systemDescription>
        </variables>
    </language>

    <language name="pt_BR">
        <variables>
            <systemDescription>O Nintendo DS (2004) inovou com tela sensível ao toque e duas telas.</systemDescription>
        </variables>
    </language>

    <language name="ru_RU">
        <variables>
            <systemDescription>Nintendo DS (2004) представила сенсорный экран и двойной дисплей.</systemDescription>
        </variables>
    </language>

    <language name="ja_JP">
        <variables>
            <systemDescription>2004年発売。2画面とタッチ操作で新しい遊び方を生み出しました。</systemDescription>
        </variables>
    </language>
</theme>
EOF
# --- arcade.xml ---
cat <<EOF > arcade.xml
<theme>
    <variables>
        <systemName>Arcade</systemName>
        <systemDescription>Arcade systems represent coin-operated machines found in public venues, defining the golden age of video games. They delivered cutting-edge graphics and sound that often surpassed home consoles of their time.</systemDescription>
        <systemManufacturer>Various</systemManufacturer>
        <systemReleaseYear>1971</systemReleaseYear>
        <systemHardwareType>Arcade</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>ffcc00</systemColor>
        <systemColorPalette1>ffcc00</systemColorPalette1>
        <systemColorPalette2>ff0000</systemColorPalette2>
        <systemColorPalette3>000000</systemColorPalette3>
        <systemColorPalette4>ffffff</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES">
        <variables>
            <systemDescription>Las recreativas marcaron la edad de oro del videojuego con máquinas de alto rendimiento en locales públicos.</systemDescription>
            <systemHardwareType>Arcade</systemHardwareType>
        </variables>
    </language>

    <language name="fr_FR">
        <variables>
            <systemDescription>Les jeux d’arcade ont défini l’âge d’or du jeu vidéo avec des machines très performantes.</systemDescription>
        </variables>
    </language>

    <language name="de_DE">
        <variables>
            <systemDescription>Arcade-Automaten prägten das goldene Zeitalter der Videospiele.</systemDescription>
        </variables>
    </language>

    <language name="it_IT">
        <variables>
            <systemDescription>Le macchine arcade hanno rappresentato l’epoca d’oro dei videogiochi.</systemDescription>
        </variables>
    </language>

    <language name="pt_BR">
        <variables>
            <systemDescription>Os arcades definiram a era de ouro dos videogames com máquinas poderosas.</systemDescription>
        </variables>
    </language>

    <language name="ru_RU">
        <variables>
            <systemDescription>Аркадные автоматы определили золотую эпоху видеоигр.</systemDescription>
        </variables>
    </language>

    <language name="ja_JP">
        <variables>
            <systemDescription>ゲームセンターで稼働した業務用ゲーム機は、ビデオゲーム黄金期を象徴します。</systemDescription>
        </variables>
    </language>
</theme>
EOF
# --- neogeo.xml ---
cat <<EOF > neogeo.xml
<theme>
    <variables>
        <systemName>SNK Neo Geo</systemName>
        <systemDescription>The Neo Geo, released in 1990, brought true arcade-quality games to the home. Its premium hardware and iconic fighting games made it legendary.</systemDescription>
        <systemManufacturer>SNK</systemManufacturer>
        <systemReleaseYear>1990</systemReleaseYear>
        <systemReleaseDate>1990-04-26</systemReleaseDate>
        <systemReleaseDateFormated>April 26, 1990</systemReleaseDateFormated>
        <systemHardwareType>Console</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>000000</systemColor>
        <systemColorPalette1>000000</systemColorPalette1>
        <systemColorPalette2>ffcc00</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>cc0000</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES">
        <variables>
            <systemDescription>Neo Geo (1990) llevó la calidad arcade auténtica al hogar con hardware de alto nivel.</systemDescription>
            <systemHardwareType>Consola</systemHardwareType>
        </variables>
    </language>

    <language name="fr_FR">
        <variables>
            <systemDescription>La Neo Geo proposait une qualité arcade parfaite à domicile.</systemDescription>
        </variables>
    </language>

    <language name="de_DE">
        <variables>
            <systemDescription>Neo Geo brachte echte Arcade-Qualität ins Wohnzimmer.</systemDescription>
        </variables>
    </language>

    <language name="it_IT">
        <variables>
            <systemDescription>Neo Geo offriva giochi arcade autentici direttamente a casa.</systemDescription>
        </variables>
    </language>

    <language name="pt_BR">
        <variables>
            <systemDescription>O Neo Geo levou a experiência arcade real para o ambiente doméstico.</systemDescription>
        </variables>
    </language>

    <language name="ru_RU">
        <variables>
            <systemDescription>Neo Geo принесла настоящие аркадные игры в домашние условия.</systemDescription>
        </variables>
    </language>

    <language name="ja_JP">
        <variables>
            <systemDescription>1990年発売。家庭用で本格的なアーケード体験を実現しました。</systemDescription>
        </variables>
    </language>
</theme>
EOF
# --- cps.xml ---
cat <<EOF > cps.xml
<theme>
    <variables>
        <systemName>Capcom Play System</systemName>
        <systemDescription>The Capcom Play System powered many of Capcom’s most iconic arcade titles during the 1990s. It became synonymous with fighting games and polished arcade experiences.</systemDescription>
        <systemManufacturer>Capcom</systemManufacturer>
        <systemReleaseYear>1988</systemReleaseYear>
        <systemHardwareType>Arcade</systemHardwareType>
        <systemCoverSize>3-4</systemCoverSize>
        <systemCoverSizeType>portrait</systemCoverSizeType>
        <systemColor>0047ab</systemColor>
        <systemColorPalette1>0047ab</systemColorPalette1>
        <systemColorPalette2>ffcc00</systemColorPalette2>
        <systemColorPalette3>ffffff</systemColorPalette3>
        <systemColorPalette4>000000</systemColorPalette4>
        <systemCartSize>1-1</systemCartSize>
    </variables>

    <language name="es_ES">
        <variables>
            <systemDescription>Capcom Play System impulsó muchos de los arcades más icónicos de los años 90.</systemDescription>
            <systemHardwareType>Arcade</systemHardwareType>
        </variables>
    </language>

    <language name="fr_FR">
        <variables>
            <systemDescription>Le Capcom Play System a propulsé de nombreux classiques de l’arcade.</systemDescription>
        </variables>
    </language>

    <language name="de_DE">
        <variables>
            <systemDescription>Capcom Play System war die Basis vieler legendärer Arcade-Spiele.</systemDescription>
        </variables>
    </language>

    <language name="it_IT">
        <variables>
            <systemDescription>Il Capcom Play System ha dato vita a numerosi classici arcade.</systemDescription>
        </variables>
    </language>

    <language name="pt_BR">
        <variables>
            <systemDescription>O Capcom Play System sustentou grandes sucessos dos arcades.</systemDescription>
        </variables>
    </language>

    <language name="ru_RU">
        <variables>
            <systemDescription>Capcom Play System стал основой культовых аркадных игр.</systemDescription>
        </variables>
    </language>

    <language name="ja_JP">
        <variables>
            <systemDescription>1990年代の名作アーケード作品を支えたカプコンの基板です。</systemDescription>
        </variables>
    </language>
</theme>
EOF


