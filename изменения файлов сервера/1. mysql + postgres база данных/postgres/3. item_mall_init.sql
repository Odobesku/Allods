-- delete from currency where true;

-- INSERT INTO "currency"("id", "name") VALUES (1, 'MAIN');
-- INSERT INTO "currency"("id", "name") VALUES (2, 'HAPPY');

delete from category where true;

INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (1, 'Favorites.txt', 151291905, 97905665, 1, 'f');
--INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (2, 'Popular.txt', 151291905, 170579988, 1, 'f');
--INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (3, 'Event.txt', 151291905, 170579971, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (7, 'Rates.txt', 151291905, 171537408, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (77, 'Rates.txt', 155176960, 171537408, 3, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (777, 'Rates.txt', 151291911, 171537408, 4, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (7777, 'Rates.txt', 151291909, 171537408, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (8, 'Inventory.txt', 151291915, 170579997, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (9, 'Transport.txt', 151291926, 171518976, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (90, 'Transport.txt', 151291904, 171518976, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (99, 'Transport.txt', 151291906, 171518976, 3, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (10, 'Potions.txt', 151291925, 170579995, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (100, 'Potions.txt', 151291923, 170579995, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (111, 'Chests.txt', 151291907, 170579976, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (13, 'Style.txt', 172021769, 170579998, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (130, 'Style.txt', 151291908, 170579998, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (131, 'Style.txt', 163871771, 170579998, 3, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (133, 'Style.txt', 151291914, 170579998, 4, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (14, 'Crafting.txt', 151291920, 170579981, 1, 'f');

delete from item where true;

-- Popular 2 категория (рекомендуем)
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 358712342, 1, 2, 1, 1, 'ITEM', 'SELLABLE', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739951516, 1, 2, 2, 1, 'ITEM', 'SELLABLE', null, 0);
--
-- Runes 4 категория (события)
-- INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (4, 'Runes.txt', 151291918, 170579996, 1, 'f');
-- -- Runes 4 категория (руны)
-- -- золотая пыль
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739878235, 1, 4, 1, 1, 'ITEM', 'SELLABLE', null, 0);
-- -- инструмент для создания рун
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 67174436, 1, 4, 2, 1, 'ITEM', 'SELLABLE', null, 0);
-- -- руна 7 ступени
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 169183234, 1, 4, 3, 1, 'ITEM', 'NON_SELLABLE', null, 0);
-- -- кри крошка
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 128572459, 1, 4, 4, 1, 'ITEM', 'SELLABLE', null, 0);

-- Services 6 категория (услуги)
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (6, 'Services.txt', 151291905, 170579972, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (66, 'Services.txt', 151291922, 170579972, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (666, 'Services.txt', 151291916, 170579972, 3, 'f');

INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 358712342, 1, 6, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739850139, 1, 6, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 199329797, 1, 6, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (222773250, 1, 6, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (215324713, 1, 6, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (222773264, 1, 6, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739966362, 1, 6, 12, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739869562, 1, 6, 13, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739978585, 1, 6, 14, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739978602, 1, 6, 15, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740163420, 1, 6, 16, 1, 'ITEM', 'SELLABLE', null, 0);

-- Service Лабиринт 66 категория (услуги)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739814541, 1, 66, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739821903, 1, 66, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739821899, 1, 66, 5, 1, 'ITEM', 'SELLABLE', null, 0);

-- Service Кристаллы 666 категория (услуги)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (269163540, 1, 666, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (92134406, 1, 666, 2, 1, 'ITEM', 'SELLABLE', null, 0);

-- Rates 7 категория (рейты)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739830401, 1, 7, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739830402, 1, 7, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739924511, 1, 7, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894822, 1, 7, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894819, 1, 7, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894818, 1, 7, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894802, 1, 7, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 161004561, 1, 7, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739917309, 1, 7, 9, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739870169, 1, 7, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739870172, 1, 7, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739915755, 1, 7, 12, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739915751, 1, 7, 13, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739939740, 1, 7, 14, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 274863105, 1, 7, 15, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740163420, 1, 7, 16, 1, 'ITEM', 'SELLABLE', null, 0);

-- Rates 7777 Тайные знания (рейты) вехи
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739905382, 1, 7777, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739905383, 1, 7777, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739905374, 1, 7777, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739905375, 1, 7777, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739905376, 1, 7777, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 331550720, 1, 7777, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739919669, 1, 7777, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 136308739, 1, 7777, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 136308741, 1, 7777, 9, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 275909633, 1, 7777, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 144597001, 1, 7777, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 146239536, 1, 7777, 12, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 146239539, 1, 7777, 13, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740163584, 1, 7777, 14, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740163585, 1, 7777, 15, 1, 'ITEM', 'SELLABLE', null, 0);

-- Rates 7777 Тайные знания (рейты) умения
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 177280007, 1, 7777, 17, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739918560, 1, 7777, 18, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740163590, 1, 7777, 19, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740163592, 1, 7777, 20, 1, 'ITEM', 'SELLABLE', null, 0);

-- Rates 77 астрал категория (рейты)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739871766, 1, 77, 111, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739952090, 1, 77, 112, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739951516, 1, 77, 113, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739815345, 1, 77, 114, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739978607, 1, 77, 115, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739978606, 1, 77, 116, 1, 'ITEM', 'SELLABLE', null, 0);

-- Rates 777 временные категория (рейты)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950235, 1, 777, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739952613, 1, 777, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739955849, 1, 777, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950343, 1, 777, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917043, 1, 777, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739913833, 1, 777, 6, 1, 'ITEM', 'SELLABLE', null, 0);
-- не рабоатет INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (2173,      1, 777, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (167888900, 1, 777, 8, 1, 'ITEM', 'SELLABLE', null, 0);

-- Inventory 8 категория (сумка)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739871028, 1, 8, 2, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 108144673, 1, 8, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739872994, 1, 8, 3, 1, 'ITEM', 'SELLABLE', null, 0);

-- Transport 9 категория - Маунты и окрасы (транспорт)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (145598478, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (145598479, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (148690953, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (148690954, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (161260544, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (177284097, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (182042630, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (182042646, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (183204877, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (183204893, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (183204927, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (195325954, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (197141511, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (206918658, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (209127437, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (229204035, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (239208482, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (245830661, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (258542596, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (261044253, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (261044257, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (267497493, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (267642880, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (267642881, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (274484225, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (274575374, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (276149257, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (276149258, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (277420037, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284933130, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (286408707, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (286408712, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (286408721, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (286408723, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (286408740, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (298600464, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (300602378, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308285442, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308405256, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308405269, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308405276, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308405279, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308750338, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (315719691, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (317636608, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (318174208, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (328950808, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (334062594, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (334062623, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (334062626, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (334062655, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (341303323, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (341422085, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (345851916, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (349524994, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (349524997, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (349525037, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (349525045, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (353753098, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (353777669, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (356964364, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (363051009, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (363051011, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (363051021, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (363051023, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (363051026, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (363503626, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (370057232, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (372444170, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (375626752, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (375626753, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (375626756, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (375626766, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (376511502, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (380827676, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739822811, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739822938, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739827186, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739830149, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739830151, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739833440, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739833449, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739833737, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739844008, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739844009, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739844010, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739844011, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739846399, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739846400, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739846504, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739851547, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854001, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854101, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854102, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854104, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854109, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854110, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854111, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854112, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854113, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854137, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854145, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739854146, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739856463, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739856464, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739856466, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739856470, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739859157, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739863209, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739863295, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739863297, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739863298, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739863299, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739863306, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739863308, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739863309, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739866587, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739866588, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868447, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868448, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868449, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868450, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868912, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868955, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739872780, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739872898, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739878496, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739878497, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739878498, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739878499, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739880395, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739880398, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739881651, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739883201, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739883541, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739885448, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739887028, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739887031, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739887060, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739890669, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739890670, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739890671, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739890672, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739894934, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739894991, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739895002, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739895004, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739896643, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739901813, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739904253, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739904254, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739907464, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739907472, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739907473, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739907476, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739907541, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739910216, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739910291, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739910953, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739911491, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739911492, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739911493, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739915440, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917446, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917599, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739918598, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739921057, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739921066, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739921072, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739921075, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739921096, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931970, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739935061, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739939018, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739940118, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739947830, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739947970, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739948003, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739948014, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739948032, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739948034, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739948047, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739948282, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739949662, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739949670, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739949683, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739949706, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950068, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950161, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950189, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950210, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739951922, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739965403, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739965606, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739965903, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739967637, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739973456, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739973472, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739975705, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739975796, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739975802, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739975857, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739976588, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739976590, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739977652, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739978002, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739978009, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739978099, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739978331, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739978349, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739978671, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739982571, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739984657, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739984666, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739985099, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739985106, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739986125, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739986129, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739986394, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739990618, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739990619, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739990620, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739997077, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739997344, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739997345, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739997346, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740001734, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740001735, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740001916, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740001921, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740001928, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740001934, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740005581, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740009075, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740013033, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740013034, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740013035, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740013036, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740013060, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740014233, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740015603, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740016320, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740016618, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740021740, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740021743, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740021748, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740021755, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740022567, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740022771, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740023468, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740024454, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740024460, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740024617, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740025406, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740025409, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740025412, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740025415, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740025843, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740030609, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740031330, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740031699, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740031702, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740032216, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740032217, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740032218, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740032219, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740034344, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740036850, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740036851, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740037060, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740038340, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740038565, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740038566, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740038567, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740038568, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740038639, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740038655, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740042946, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740043076, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740043454, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740046056, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740046150, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740047979, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740047980, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740050364, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740059756, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740060154, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740060155, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740060156, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740060157, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740061178, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740062014, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740067312, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740068374, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740073314, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740073316, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740078295, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740091709, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740092959, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740092960, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740092961, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740092962, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740093565, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740093852, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740094663, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740095707, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740097498, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740101130, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740101719, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740101720, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740101721, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740101722, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740104841, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740104864, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740104908, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740104929, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740105020, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740105027, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740106752, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740107314, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740107318, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740109410, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740111500, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740111501, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740112198, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740112199, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740112200, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740112201, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740112447, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740112605, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740112671, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740112749, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740114565, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740115209, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740115480, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740118164, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740119658, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740119667, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740119686, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740120040, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740120407, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740120408, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740120409, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740120410, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740120793, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740121411, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740129114, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740132815, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740132889, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740132897, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740132911, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740133024, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740134318, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740134498, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740134515, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740134887, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740139314, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740140898, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740140906, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740140920, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740140932, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740141098, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740142255, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740145356, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740145598, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740145600, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740145630, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740145632, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740145634, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740146019, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740146503, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740146519, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740146754, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740151794, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740152076, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740152082, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740152121, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740152161, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740153095, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740153235, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740153305, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740153320, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740153446, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740154319, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740154971, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740155555, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740156694, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740156725, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740156738, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740156759, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740157460, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740157943, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740159797, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740160492, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740160621, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740160838, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740160899, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740160907, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740161172, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740161184, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740161323, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740161377, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740161477, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740161489, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);



--- Брелок Молнии и окрасы
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739885448, 1, 9, 1, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739910211, 1, 9, 2, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739913278, 1, 9, 3, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739924184, 1, 9, 4, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739911689, 1, 9, 5, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950041, 1, 9, 6, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739952724, 1, 9, 7, 1, 'ITEM', 'SELLABLE', null, 0);
----- Схема Миража и окрасы
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739851547, 1, 9, 8, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739852656, 1, 9, 9, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868597, 1, 9, 10, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739894971, 1, 9, 11, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739896284, 1, 9, 12, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739907747, 1, 9, 13, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739916649, 1, 9, 14, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950010, 1, 9, 15, 1, 'ITEM', 'SELLABLE', null, 0);
----- Код доступа Ловчего и окрасы
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (380827676, 1, 9, 16, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739848559, 1, 9, 17, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739858202, 1, 9, 18, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739881646, 1, 9, 19, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739912842, 1, 9, 20, 1, 'ITEM', 'SELLABLE', null, 0);
----- Каркас Молоха и окрасы
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868955, 1, 9, 21, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739894983, 1, 9, 22, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739907762, 1, 9, 23, 1, 'ITEM', 'SELLABLE', null, 0);
----- Астральный ковёр-самолёт и окрасы
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739844008, 1, 9, 24, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868912, 1, 9, 25, 1, 'ITEM', 'SELLABLE', null, 0);
--
----- Подкова Пегаса и окрасы
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739866587, 1, 9, 27, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739866588, 1, 9, 28, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739911493, 1, 9, 29, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917446, 1, 9, 30, 1, 'ITEM', 'SELLABLE', null, 0);
----- Рог Сохатого и окрасы
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739878499, 1, 9, 31, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739910216, 1, 9, 32, 1, 'ITEM', 'SELLABLE', null, 0);
---- колесница хаоса
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740060155, 1, 9, 33, 1, 'ITEM', 'SELLABLE', null, 0);
--
----- Разное
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308750338, 1, 9, 40, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (274484225, 1, 9, 41, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308285442, 1, 9, 42, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (199225363, 1, 9, 43, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (328950808, 1, 9, 44, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739895630, 1, 9, 50, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (196216832, 1, 9, 51, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (236592137, 1, 9, 53, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (202200075, 1, 9, 54, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (280431627, 1, 9, 55, 1, 'ITEM', 'SELLABLE', null, 0);
---- молния превертыш
---- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740022771, 1, 9, 56, 1, 'ITEM', 'SELLABLE', null, 0);
---- обычный перевертыш
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739833983, 1, 9, 56, 1, 'ITEM', 'SELLABLE', null, 0);

-- Transport 90 категория - Броня и окрасы (транспорт)
-- Мистическая броня «Экзарх»
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740042946, 1, 90, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740042945, 1, 90, 2, 1, 'ITEM', 'SELLABLE', null, 0);

INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740063139, 1, 90, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740063133, 1, 90, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740043082, 1, 90, 6, 1, 'ITEM', 'SELLABLE', null, 0);
-- Мистическая броня «Ракшас»
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740031702, 1, 90, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740038329, 1, 90, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740062390, 1, 90, 9, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740038718, 1, 90, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740033476, 1, 90, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740032368, 1, 90, 12, 1, 'ITEM', 'SELLABLE', null, 0);
-- Мистическая броня «Покров Дракона»
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740134498, 1, 90, 13, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740139824, 1, 90, 14, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (740135169, 1, 90, 15, 1, 'ITEM', 'SELLABLE', null, 0);

-- Transport - корабли - 99 категория (транспорт)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (135547904, 1, 99, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (156825600, 1, 99, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (145421314, 1, 99, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (156735493, 1, 99, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (232348672, 1, 99, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (186595328, 1, 99, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (329207810, 1, 99, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (357114881, 1, 99, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739826321, 1, 99, 9, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739848792, 1, 99, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868623, 1, 99, 12, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739884615, 1, 99, 13, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739911531, 1, 99, 14, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (145421318, 1, 99, 15, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931360, 1, 99, 16, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931359, 1, 99, 17, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931354, 1, 99, 19, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931241, 1, 99, 21, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931634, 1, 99, 22, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739889098, 1, 99, 23, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (277113866, 1, 99, 24, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739884746, 1, 99, 25, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739901189, 1, 99, 26, 1, 'ITEM', 'SELLABLE', null, 0);

-- Potions алхимка 10 категория (зелья)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739911465, 1, 10, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 273925141, 1, 10, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 273925145, 1, 10, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 274167817, 1, 10, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949305, 1, 10, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949132, 1, 10, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949136, 1, 10, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949138, 1, 10, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949226, 1, 10, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949227, 1, 10, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949313, 1, 10, 12, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 285227026, 1, 10, 13, 1, 'ITEM', 'SELLABLE', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 501681, 1,    10, 14, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949336, 1, 10, 17, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949334, 1, 10, 18, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949333, 1, 10, 19, 1, 'ITEM', 'SELLABLE', null, 0);

-- Potions 100 эссенции категория (зелья)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952581, 1,    100, 21, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952587, 1,    100, 22, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952590, 1,    100, 23, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952592, 1,    100, 24, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952596, 1,    100, 25, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952600, 1,    100, 26, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952601, 1,    100, 27, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952604, 1,    100, 28, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952607, 1,    100, 29, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952613, 1,    100, 30, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952618, 1,    100, 31, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739935219, 1,    100, 32, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739935227, 1,    100, 33, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739935238, 1,    100, 34, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917496, 1,    100, 35, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917497, 1,    100, 36, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (338235467, 1,    100, 37, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (338235399, 1,    100, 38, 1, 'ITEM', 'SELLABLE', null, 0);

-- -- Chest 11 категория (сундуки)
-- INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (11, 'Chests.txt', 151291905, 170579976, 1, 'f');
-- -- сумка и хранилище
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (169723906, 1, 11, 1, 1, 'ITEM', 'SELLABLE', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739934582, 1, 11, 2, 1, 'ITEM', 'SELLABLE', null, 0);

-- Chest - сундуки 111 категория (сундуки)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739952597, 1, 111, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739955833, 1, 111, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917271, 1, 111, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739920553, 1, 111, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917178, 1, 111, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950283, 1, 111, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739932802, 1, 111, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739949293, 1, 111, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739886550, 1, 111, 9, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950330, 1, 111, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739948657, 1, 111, 12, 1, 'ITEM', 'SELLABLE', null, 0);

-- Style - стиль 13 категория (стиль)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 188024842, 1, 13, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739821951, 1, 13, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739854949, 1, 13, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739868855, 1, 13, 14, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739913057, 1, 13, 15, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739881517, 1, 13, 16, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739980897, 1, 13, 17, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 8880461, 1,   13, 18, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949453, 1, 13, 19, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739951595, 1, 13, 20, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739885522, 1, 13, 21, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739919616, 1, 13, 22, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 335801344, 1, 13, 23, 1, 'ITEM', 'SELLABLE', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 8880463, 1,   13, 24, 1, 'ITEM', 'SELLABLE', null, 0);
-- не рабоатет INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 8880465, 1,   13, 25, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 239792128, 1, 13, 33, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 334152705, 1, 13, 34, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 178556945, 1, 13, 35, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 275378176, 1, 13, 36, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 178556974, 1, 13, 37, 1, 'ITEM', 'SELLABLE', null, 0);

-- Style - стиль 130 категория (Костюмы Легенд)
--- Set Опустошителя
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740093267, 1, 130, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740093265, 1, 130, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740093271, 1, 130, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740093266, 1, 130, 4, 1, 'ITEM', 'SELLABLE', null, 0);
--- Set мрачного рыцаря
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740063044, 1, 130, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740063040, 1, 130, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740063038, 1, 130, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740063042, 1, 130, 8, 1, 'ITEM', 'SELLABLE', null, 0);
--- Set высшего жреца
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740139723, 1, 130, 9, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740139726, 1, 130, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740139722, 1, 130, 11, 1, 'ITEM', 'SELLABLE', null, 0);
--- Set драконьего духа
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740134193, 1, 130, 12, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740134195, 1, 130, 13, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740134194, 1, 130, 14, 1, 'ITEM', 'SELLABLE', null, 0);
--- Set тёмного металла
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740127806, 1, 130, 15, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740127805, 1, 130, 16, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740127807, 1, 130, 17, 1, 'ITEM', 'SELLABLE', null, 0);
--- Set яростной тьмы
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740127823, 1, 130, 18, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740127824, 1, 130, 19, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740127825, 1, 130, 20, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740127826, 1, 130, 21, 1, 'ITEM', 'SELLABLE', null, 0);
--- Set Небесного Гвардейца
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739979967, 1, 130, 22, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739979193, 1, 130, 23, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739979194, 1, 130, 24, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739979195, 1, 130, 25, 1, 'ITEM', 'SELLABLE', null, 0);
--- Set верховного Демонолога
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740036752, 1, 130, 26, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740031328, 1, 130, 27, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740036753, 1, 130, 28, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740036754, 1, 130, 29, 1, 'ITEM', 'SELLABLE', null, 0);
--- Set WeedMaster
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 193618383, 1, 130, 30, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 306227217, 1, 130, 31, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 1654131604, 1, 130, 32, 1, 'ITEM', 'SELLABLE', null, 0);

--- Крылья
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740083514, 1, 130, 60, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 281674754, 1, 130, 61, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 183204915, 1, 130, 62, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 191944704, 1, 130, 63, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 281674752, 1, 130, 64, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740109416, 1, 130, 65, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739925212, 1, 130, 66, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739925218, 1, 130, 67, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740119249, 1, 130, 68, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740110303, 1, 130, 69, 1, 'ITEM', 'SELLABLE', null, 0);
-- Литании Ираноха
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740164927, 1, 130, 70, 1, 'ITEM', 'SELLABLE', null, 0);

-- Style - стиль 133 категория (Оружие)
--святое оружие
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739868725, 1, 133, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739868723, 1, 133, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739868720, 1, 133, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739901102, 1, 133, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739901099, 1, 133, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739901098, 1, 133, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739918840, 1, 133, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739918887, 1, 133, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739918882, 1, 133, 9, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739950064, 1, 133, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739950062, 1, 133, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739950063, 1, 133, 12, 1, 'ITEM', 'SELLABLE', null, 0);

-- Style - стиль 131 категория (Питомцы)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740164074, 1, 131, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740033887, 1, 131, 2, 2, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740040010, 1, 131, 3, 3, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740134254, 1, 131, 4, 4, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740109422, 1, 131, 5, 5, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740129006, 1, 131, 6, 6, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740145979, 1, 131, 7, 7, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740017673, 1, 131, 8, 8, 'ITEM', 'SELLABLE', null, 0);

-- Crafting - ремёсла 14 категория (ремёсла)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (288729088, 1, 14, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (296494082, 1, 14, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (331945993, 1, 14, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (331945987, 1, 14, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (330285057, 1, 14, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (159803397, 1, 14, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (108106805, 1, 14, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739913937, 1, 14, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (329433089, 1, 14, 9, 1, 'ITEM', 'SELLABLE', null, 0);

delete from item_price where true;

insert into item_price (item_id, price, currency_id, type)
select  i.id as item_id , 1 as price , 1 as currency_id, 'BUYONLY' from item as i;

insert into item_price (item_id, price, currency_id, type)
select  i.id as item_id , 1 as price , 2 as currency_id, 'BUYONLY' from item as i;

-- настройка кристаллов (type = 'BOTH')
-- кристаллы 500
delete from item_price where item_id = (select id from item where item.res_id = 92134406) and currency_id = 2;
update item_price set price = 500, type = 'BOTH' where item_id = (select id from item where res_id = 92134406) and currency_id = 1;

-- премиальные кристаллы 500
delete from item_price where item_id = (select id from item where item.res_id = 269163540) and currency_id = 1;
update item_price set price = 500, type = 'BOTH' where item_id = (select id from item where res_id = 269163540) and currency_id = 2;