drop database if exists gaia_sustentavel;
create database gaia_sustentavel;

use gaia_sustentavel;

insert into users (name, email, password) values
	("Joana Silva", "joanasilva@email.com", "");
insert into stores (name_store, location, category_id, description, criacao, image, user_id) values
	("Loja Orgânica", "São Paulo", 1, "Mãe e filha criaram, em 2019, a Loja Orgânica com o objetivo de produzir sabonetes e xampus naturais e veganos, valorizando os ingredientes nacionais.", "2019-03-01", "loja-organica.jpg", 1);
insert into products (name, price, description, composition, store_id, category_id, subcategory_id, img_product) values
	("Sabonete natural de aveia e coco", 20.00, "Sabonete em barra. que não agride e mantém a oleosidade natural da pele. Produto 100% feito à mão, natural e vegetal. Elaborado com as técnicas milenares de saboaria e cosmetologia com manteigas e óleos vegetais, óleos essenciais e argilas. Indicado para todos os tipos de pele.", "Água desmineralizada, Óleo de palma. Óleo de palmiste. Óleo de girassol. Azeite. Hidróxido de sódio. Argila marrom. Argila branca. Óleo de mamona. Óleo de coco babaçu. Fraganciade coconut. Extrato de aveia. Hebeatol. Cera de carnaúba. Sal marinho. Vitamina E. Óleo resina de alecrim.", 1, 1, 4, "sabonete-natural.jpg"),
    ("Sabonete natural de capim limão", 18.00, "Sabonete em barra. que não agride e mantém a oleosidade natural da pele. Produto 100% feito à mão, natural e vegetal. Elaborado com as técnicas milenares de saboaria e cosmetologia com manteigas e óleos vegetais, óleos essenciais e argilas. Indicado para todos os tipos de pele.", "Aqua, Cetyl Alcohol, Sucrose (Açúcar Orgânico), Helianthus Annuus Seed Oil (Óleo de Girassol), Elaeis Guineensis (Palm) Kernel Oil, Stearic Acid, Glycerin, Ricinus Communis Seed Oil (Óleo de Mamona), Sodium Hydroxide, Propanediol (Zemea), Cymbopogon Flexuosus Leaf Oil (oe Lemongrass), Citrus Sinensis Peel Extract (Casca de Laranja), Benzyl Alcohol, Xylitol, Caprylic Acid, Tocopheryl Acetate(VitE), Chlorella Vulgaris Powder (Clorofila em pó) e Rosmarinus officinalis extract.", 1, 1, 4, "sabonete-vegano.jpg"),
    ("Sabonete natural de laranja", 20.00, "Sabonete em barra. que não agride e mantém a oleosidade natural da pele. Produto 100% feito à mão, natural e vegetal. Elaborado com as técnicas milenares de saboaria e cosmetologia com manteigas e óleos vegetais, óleos essenciais e argilas. Indicado para todos os tipos de pele.", "Aqua, Cetyl Alcohol, Sucrose (Açúcar Orgânico), Helianthus Annuus Seed Oil (Óleo de Girassol), Elaeis Guineensis (Palm) Kernel Oil, Stearic Acid, Glycerin, Ricinus Communis Seed Oil (Óleo de Mamona), Sodium Hydroxide, Propanediol (Zemea), Citrus Aurantium Dulcis Oil, Citrus Aurantium Amara Peel Oil (oe Laranja), SchinusTerebinthifolius Seed Oil (oePimenta Rosa), Benzyl Alcohol, Xylitol, Caprylic Acid, Pink Peppercorns leaf (Grãos Pimenta Rosa), Tocopheryl Acetate (Vit E) e Rosmarinus officinalis extract.", 1, 1, 4, "sabonete.jpg"),
    ("Xampu em barra detox", 20.00, "Xampu em barra que não agride os fios. Produto 100% feito à mão, natural e vegetal. Elaborado com as técnicas milenares de saboaria e cosmetologia com manteigas, óleos vegetais e óleos essenciais. Feito para todos os tipos de cabelo.", "Olea Europaea (Olive) Fruit Oil (Azeite), Orbignya Oleifera Seed Oil (Babaçu), Aqua, Ricinus Communis Seed Oil (Óleo de Mamona), Sodium Hydroxide, Prunus Amygdalus Dulcis Oil (Amêndoa), Hydrogenated Hydrogenated Jojoba Oil, Litsea Cubeba Fruit Oil (oe Litsea), Guar hydroxypropyltrimonium chloride, Copernicia Cerifera Wax (Cera de Carnaúba), Rosmarinus Officinalis Oil (oe Alecrim), Citric Acid, Benzyl Alcohol, Xylitol, Caprylic Acid, Tocopheryl Acetate (Vit E) e Rosmarinus officinalis extract.", 1, 1, 1, "xampu-vegano.jpg"),
    ("Xampu em barra de arjan e ojon", 20.00, "Xampu em barra que não agride os fios. Produto 100% feito à mão, natural e vegetal. Elaborado com as técnicas milenares de saboaria e cosmetologia com manteigas, óleos vegetais e óleos essenciais. Feito para todos os tipos de cabelo.", "Aqua, Elaeis Guineensis (Palm) Kernel Oil, Olea Europaea (Olive) Fruit Oil (Azeite), Sodium Hydroxide, Ricinus Communis Seed Oil (Óleo de Mamona), Hydrogenated Jojoba Oil, Theobroma Cacao Seed Butter (Manteiga de Cacau), Theobroma Grandiflorum Seed Butter (Manteiga de Cupuaçu), Vitis Vinifera Seed Oil (Óleo de Semente de Uva), Persea Gratissima oil (Óleo de Abacate), Elaeis Oleifera Kernel Oil (Ojon), Litsea CubebaFruit Oil (oe Litsea), Parfum (Patchouli), Aloe Barbadensis Leaf Juice (Aoe Vera), Copernicia Cerifera Wax (Cera de Carnaúba), Citric Acid, Benzyl Alcohol, Xylitol, Caprylic Acid, Argania Spinosa Kernel Oil (Óleo de Argan), Pogostemon Cablin Oil (oe Patchouli), Tocopheryl Acetate (Vit E) e Rosmarinus officinalis extract.", 1, 1, 1, "xampu-natural.jpg");
    
insert into users (name, email, password) values
    ("Maria Souza", "mariasouza@email.com", "");
insert into stores (name_store, location, category_id, description, criacao, image, user_id) values
	("Loja Verde", "Guarulhos", 1, "A Loja Verde oferece grande quantidade de produtos de higiene pessoal naturais, mostrando que é possível se cuidar e cuidar do meio ambiente ao mesmo tempo,", "2018-11-03", "loja-verde.jpg", 2);
insert into products (name, price, description, composition, store_id, category_id, subcategory_id, img_product) values
	("Hidratante facial", 35.00, "Produto 100% feito à mão, natural e vegetal. Elaborado com as técnicas milenares de saboaria e cosmetologia com manteigas e óleos vegetais, óleos essenciais e argilas.", "Água de rosas, óleo vegetal de gérmen de trigo, parafina de soja, óleo vegetal de abacate, Manteiga de cacau, Manteiga de karitê, Extrato natural de hamamélis, Óleo de tamanu, Goma guar quaterizada, CMC, Argila rosa, Hebeatol, Vitamina E, Óleo essencial alecrim, Óleo essencial lavanda e Óleo resina alecrim.", 2, 1, 2, "hidrante-facial.jpg"),
    ("Escova de dente de bambu", 17.00, "Escova de dente de bambu com cerdas de nylon. A escova é 95% biodegradável e as cerdas são feitas de nylon, livres de BPA e outras toxinas. Feita em madeira de bambu é naturalmente anti-bacteriana. Um produto de qualidade, higiênico e resistente, suave e leve ao mesmo tempo. É um material naturalmente sustentável.", "95% bambu e 5% nylon.", 2, 1, 5, "escova-bambu.jpg"),
    ("Creme dental de jambú", 29.00, "Sem flúor e prático para carregar no bolso, previne cáries, gengivite, clareia os dentes naturalmente, alcaliniza boca. É refrescante! Usado também como antisséptico bucal. É biodegradável, vegano, ou seja, sem ingredientes de origem animal.", "Argila branca, casca de juá, jambú, canela, cravo da índia, berinjela e gengibre, óleos essenciais de menta verde e de cravo.", 2, 1, 5, "pasta-dental-natural.jpg");

insert into users (name, email, password) values
    ("Silvia Machado", "silviamachado@email.com", "");
insert into stores (name_store, location, category_id, description, criacao, image, user_id) values
    ("Loja Equilibrio", "Belo Horizonte", 1, "Criando desde 2015 cosméticos veganos e com ingredientes nacionais, valorizando o comércio local.", "2015-10-20", "loja-equilibrio.jpg", 3);
insert into products (name, price, description, composition, store_id, category_id, subcategory_id, img_product) values
	("Glitter biodegradável", 21.00, "Gliter feito de algas marinhas e corante alimentício. Totalmente livre de plástico. É biodegradável e natural. Para um carnaval, dia das crianças ou uma make arrasadora sem qualquer dano ambiental, esse gliter merece você! 100% biodegradável; 100% livre de plástico; Seguro para crianças; 100% livre de químicos.", "Algas marinhas e corante comestível.", 3, 1, 3, "glitter-organico.jpg"),
    ("Blush vegano", 40.00, "Formulado com óleo de damasco, que protege a pele conta danos externos, macadâmia e abacate, poderosos calmantes naturais. É rico em vitaminas e minerais que nutrem, hidratam e deixam um toque corado na pele.", "Mica, Zea mays starch (Zea mays (corn) starch)*, squalane, silica, zinc stearate, glyceryl caprylate, tocopherol, parfum (fragrance), Prunus armeniaca kernel oil (Prunus armeniaca(apricot) kernel oil)*, Macadamia ternifolia seed oil*, Persea gratissima oil (Persea gratissima(avocado) oil)*, Butyrospermum parkii butter (Butyrospermum parkii (shea) butter)*, Pongamia glabra seed oil.", 3, 1, 3, "blush-vegano.jpg"),
    ("Manteiga de cacau", 20.00, "Hidratante labial 100% natural, vegano e biodegradável, livre de petrolatos, silicones, corantes e fragrâncias artificiais. Composto por ingredientes que ajudam a manter lábios sempre hidratados e nutridos. Contém ainda óleo essencial de menta, que traz uma sensação de frescor, e um delicioso aroma doce de chocolate com menta. Indicação: para hidratação dos lábios, das cutículas e áreas ressecadas do corpo.", "Manteiga de Cacau. Manteiga de Karité. Cera de Carnaúba. Óleo de Castanha do Pará. Óleo Essencial de Menta. Óleo Essencial de Laranja. Fórmula livre de: parabenos, propilenoglicol, óleo mineral, silicones, vaselina, triclosan, corantes e fragrâncias artificiais.", 3, 1, 3, "manteiga-cacau.jpg"),
	("Serum facial", 50.00, "Composto por 7 ingredientes altamente nutritivos que hidratam profundamente a pele, prevenindo o envelhecimento cutâneo. Com a sua fórmula 100% natural é um ótimo complemento para os cuidados diários, pois além de hidratar e revitalizar, também atua como firmador da pele.", "Aloe Vera. Calêndula. Camomila. Coco. Hamamélis. Sodium PCA. Trigo.", 3, 1, 2, "oleo-serum.jpg");
    
insert into users (name, email, password) values
	("José Almeida", "josealmeida@email.com", "");
insert into stores (name_store, location, category_id, description, criacao, image, user_id) values
	("Loja Limpeza Profunda", "São Sebastião", 2, "A Loja Limpeza Profunda oferece os melhores produtos de limpeza doméstica biodegradáveis e naturais, em embalagens sem plástico e sem químicos que agridem o meio ambiente e a sua família.", "2017-04-30", "loja-limpeza.jpg", 4);
insert into products (name, price, description, composition, store_id, category_id, subcategory_id, img_product) values
	("Aromatizador de ambiente de alecrim", 45.00, "Combinação revigorante para estimular o santuário interior e exterior. este revigorante óleo com infusão de folha de hortelã é o perfeito companheiro para as inclinações filosóficas.", "Folha de hortelã. Folha de sálvia. Folha de alecrim.", 4, 2, 7, "aromatizador.jpg"),
    ("Aromatizador de ambiente de laranja", 45.00, "Combinação revigorante para estimular o santuário interior e exterior. este revigorante óleo com infusão de folha de hortelã é o perfeito companheiro para as inclinações filosóficas.", "Casca de laranja. Cedro-do-atlas. Cravinho", 4, 2, 7, "oleo-essencial.jpg"),
    ("Detergente bio", 27.00, "Produto pronto uso para limpeza forte. Hipoalergênico; Para utensílios do bebê e toda família. Biodegradável; Faz espuma sem agredir a natureza. Vegano; Livre de testes e ingredientes de origem animal. Frasco feito com plástico de Oceano 100% reciclado;BPA FREE. Rápida remoção de gordura; Mantém o brilho dos talheres. Não deixa resíduo químico na louça. Não agride mãos, pele, unhas e mucosas.", "Água, óleo de coco, alcalinizante (hidróxido de potássio responsável pela saponificação), coadjuvante(carbonato de sódio), sequestrante (ácido etidrônico de origem orgânica com função de separar as impureza para facilitar o enxágue), espessante (origem vegetal), conservante (sintético, menos de 5%) e coadjuvante (hidróxido de sódio).", 4, 2, 6, "detergente-natural.jpg"),
    ("Sabão líquido multiuso", 30.00, "Sabão líquido multiuso para limpeza de qualquer superfície da casa. Pode ser usado para limpar o chão, móveis, lavar louça e roupas", "Sabão de coco. Álcool. Água. Bicabornato de sódio. Essência de melaleuca.", 4, 2, 6, "limpeza.jpg");