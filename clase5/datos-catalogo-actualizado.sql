#####################
USE introDB;

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO categorias
    VALUES
        (1,'Smartphone'),
        (2,'Parlantes Bluetooth'),
        (3,'Robot de limpieza'),
        (4,'Smat TV'),
        (5,'Cámaras Mirrorless'),
        (6,'Iluminación inteligente');

-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO marcas
    VALUES
        (1,'Apple'),
        (2,'Oppo'),
        (3,'Marshall'),
        (4,'iRobot'),
        (5,'Xiaomi'),
        (6,'Samsung'),
        (7,'Nikon'),
        (8,'Bose'),
        (9,'OnePlus'),
        (10,'Blaupunkt');
        
-- --------------------------------------------------------
--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO productos
    VALUES
        (1,'Oppo A78 Dual-SIM 128GB',200.00,2,1,'Smartphone Android con pantalla HD+ de 6.56 pulgadas. 8GB de RAM y 128GB de almacenamiento interno. Cámara trasera dual de 50MP. Cámara selfie es de 8MP. Batería de 5000 mAh con soporte para carga rápida de 33W.','Oppo-A78.png',1),
        (2,'iPhone 15 Pro',1000.00,1,1,'Apple iPhone 15 Pro con chasis fabricado en titanio y puerto USB-C. Pantalla OLED LTPO de 6.1 pulgadas y triple cámara posteriorde 48MP. Cámara frontal de 12MP con sensores para Face ID. Batería de carga rápida de 15W.','iPhone-15-pro.png',1),
        (3,'HomePod (2nd gen)',250.00,1,2,'El HomePod es un altavoz de alta fidelidad que combina sonido inmersivo, asistente personal y control de hogar inteligente. Conectividad Bluetooth y Wifi via Apple Music','homepod-2.png',1),
        (4,'Marshall Acton III',300.00,3,2,'El altavoz bluetooth Acton III Cuenta con Dynamic Loudness, que ajusta el equilibrio tonal del sonido para garantizar que su música suene brillante en todos los volúmenes. 30 Watts de potencia','marshall-acton-iii.png',1),
        (5,'Aspiradora Robot iRobot Roomba j7+',900.00,4,3,'Robot de limpieza Roomba J7+ con sistema de limpieza superior de tres fases y dos rodillos de silicona. Tecnología de trazado de mapas inteligente Imprint™ que aprende, crea mapas y se adapta a cada habitación.','roomba-j7.png',1),
        (6,'Xiaomi TV Q2',560.00,5,4,'Smart TV con panel QLED Quantum Dot Display de 55 pulgadas y resolución 4K UHD. Sonido Dolby VisionTM IQ y Dolby Atmos. Sistema operativo Google TV. 3 puertos HDMI 2.0, un puerto HDMI 2.1 eARC a 120 Hz, 2 USB 2.0, Wi-Fi 802.11, Bluetooth 5.0 y entrada de audio óptica','xiaomi-q2.jpg',1),
        (7,'Samsung TV Crystal UHD 2023',650.00,6,4,'Smart TV con panel LED de 65 pulgadas con resolución 4K, tasa de 50 Hz y retroiluminación LED. TizenOS integra altavoces de 20 W compatibles con Dolby Atmos. 3 puertos HDMI, 2 USB y salida óptica de audio, WiFi y Bluetooth.','samsung-crystal-65.png',1),
        (8,'Samsung Galaxy S23 Ultra',1200.0,6,1,'Smartphone de alta gama con pantalla AMOLED de 6.8 pulgadas, Snapdragon 8 Gen 2, S-Pen integrado.','Samsung-S23-Ultra.png',1),
        (9,'Xiaomi Redmi Note 12',250.0,5,1,'Smartphone de gama media con pantalla AMOLED de 6.67 pulgadas, procesador Snapdragon 695, batería de 5000mAh.','Xiaomi-Redmi-Note-12.png',1),
        (10,'Marshall Emberton II',180.0,3,2,'Parlante Bluetooth portátil con sonido envolvente de 360 grados, batería de hasta 30 horas de duración.','Marshall-Emberton-II.png',1),
        (11,'Bose SoundLink Flex',160.0,8,2,'Parlante Bluetooth resistente al agua con sonido potente y nítido, ideal para exteriores.','Bose-SoundLink-Flex.png',1),
        (12,'iRobot Roomba j7+',750.0,4,3,'Robot aspirador con detección de obstáculos, autovaciado y mapeo inteligente.','Roomba-j7.png',1),
        (13,'LG OLED C3 55"',1300.0,6,4,'Smart TV OLED de 55 pulgadas con procesador α9 Gen6 AI, soporte para Dolby Vision y HDMI 2.1.','LG-OLED-C3-55.png',1),
        (14,'Sony Alpha A7 IV',2500.0,7,5,'Cámara mirrorless de fotograma completo con sensor de 33MP, grabación 4K y enfoque automático avanzado.','Sony-A7-IV.png',1),
        (15,'Philips Hue Starter Kit',200.0,6,6,'Kit de iluminación inteligente con 3 bombillas LED RGB y hub de conexión para control remoto.','Philips-Hue-Kit.png',1),
        (16,'OnePlus 11 5G',700.0,9,1,'Smartphone con Snapdragon 8 Gen 2, pantalla AMOLED de 6.7 pulgadas y carga rápida de 100W.','OnePlus-11-5G.png',1),
        (17,'Blaupunkt Retro Radio',90.0,10,2,'Radio Bluetooth con diseño retro, sintonizador FM y batería de larga duración.','Blaupunkt-Retro-Radio.png',1);
