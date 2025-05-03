-- delete from currency where true;

-- INSERT INTO "currency"("id", "name") VALUES (1, 'MAIN');
-- INSERT INTO "currency"("id", "name") VALUES (2, 'HAPPY');

delete from category where true;

INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (1, 'Favorites.txt', 151291905, 97905665, 1, 'f');
--INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (2, 'Popular.txt', 151291905, 170579988, 1, 'f');
--INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (3, 'Event.txt', 151291905, 170579971, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (4, 'Runes.txt', 151291918, 170579996, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (5, 'Halo.txt', 151291905, 170579989, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (6, 'Services.txt', 151291905, 170579972, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (66, 'Services.txt', 151291922, 170579972, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (666, 'Services.txt', 151291916, 170579972, 3, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (7, 'Rates.txt', 151291905, 171537408, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (77, 'Rates.txt', 155176960, 171537408, 3, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (777, 'Rates.txt', 151291911, 171537408, 4, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (7777, 'Rates.txt', 151291909, 171537408, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (8, 'Inventory.txt', 151291915, 170579997, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (9, 'Transport.txt', 151291926, 171518976, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (99, 'Transport.txt', 151291906, 171518976, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (10, 'Potions.txt', 151291925, 170579995, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (100, 'Potions.txt', 151291923, 170579995, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (11, 'Chests.txt', 151291905, 170579976, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (111, 'Chests.txt', 151291907, 170579976, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (13, 'Style.txt', 172021769, 170579998, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (14, 'Crafting.txt', 151291920, 170579981, 1, 'f');

delete from item where true;

-- Popular 2 категория (рекоммендуем)
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 358712342, 1, 2, 1, 1, 'ITEM', 'SELLABLE', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739951516, 1, 2, 2, 1, 'ITEM', 'SELLABLE', null, 0);

-- Runes 4 категория (руны)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739878235, 1, 4, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 2147418912, 1, 4, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 67174436, 1, 4, 2, 1, 'ITEM', 'SELLABLE', null, 0);
--INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 169183234, 1, 4, 2, 1, 'ITEM', 'NON_SELLABLE', null, 0);

-- Services 6 категория (услуги)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 358712342, 1, 6, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739850139, 1, 6, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 199329797, 1, 6, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (222773250, 1, 6, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (215324713, 1, 6, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (222773264, 1, 6, 11, 1, 'ITEM', 'SELLABLE', null, 0);

-- Service Лабиринт 66 категория (услуги)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739814541, 1, 66, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739821903, 1, 66, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739821899, 1, 66, 5, 1, 'ITEM', 'SELLABLE', null, 0);

-- Service Кристаллы 666 категория (услуги)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (269163540, 1, 666, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (92134406, 1, 666, 2, 1, 'ITEM', 'SELLABLE', null, 0);

-- Rates 7 категория (рейты)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id)VALUES (739924511, 1, 7, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894819, 1, 7, 15, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215324712, 1, 7, 14, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 228926486, 1, 7, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894822, 1, 7, 13, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739830401, 1, 7, 9, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739861137, 1, 7, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 228926485, 1, 7, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739830400, 1, 7, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894818, 1, 7, 17, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 229716992, 1, 7, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894802, 1, 7, 19, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215324683, 1, 7, 18, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 208236609, 1, 7, 20, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215324736, 1, 7, 16, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739830402, 1, 7, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739919042, 1, 7, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215528450, 1, 7, 12, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 136308751, 1, 7, 21, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 177280003, 1, 7, 22, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 177280005, 1, 7, 23, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 161004556, 1, 7, 26, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 161004557, 1, 7, 27, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 161004561, 1, 7, 28, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 161004555, 1, 7, 29, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739917309, 1, 7, 30, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739870165, 1, 7, 31, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739870169, 1, 7, 32, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739870172, 1, 7, 36, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 196642826, 1, 7, 37, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 324220930, 1, 7, 38, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739915519, 1, 7, 41, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739915755, 1, 7, 42, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739915751, 1, 7, 43, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 228926483, 1, 7, 44, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739939740, 1, 7, 45, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 274863105, 1, 7, 46, 1, 'ITEM', 'SELLABLE', null, 0);

-- Rates 7777 Тайные знания (рейты) вехи
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739905382, 1, 7777, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739905383, 1, 7777, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739905374, 1, 7777, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739905375, 1, 7777, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739905376, 1, 7777, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 331550720, 1, 7777, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739919669, 1, 7777, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 136308737, 1, 7777, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 136308739, 1, 7777, 9, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 136308741, 1, 7777, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 275909633, 1, 7777, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 144597001, 1, 7777, 12, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 146239536, 1, 7777, 13, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 146239539, 1, 7777, 14, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740163584, 1, 7777, 15, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 740163585, 1, 7777, 16, 1, 'ITEM', 'SELLABLE', null, 0);

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

-- Transport 9 категория (транспорт)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (199225363, 1, 9, 17, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (328950808, 1, 9, 18, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (274484225, 1, 9, 14, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (280431627, 1, 9, 6, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308285442, 1, 9, 15, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (234, 1, 9, 23, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (236592137, 1, 9, 4, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (1049, 1, 9, 22, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739885448, 1, 9, 8, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (380827676, 1, 9, 13, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (353777669, 1, 9, 16, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (196216832, 1, 9, 2, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868955, 1, 9, 10, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (202200075, 1, 9, 5, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (304820232, 1, 9, 7, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (353753098, 1, 9, 12, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308750338, 1, 9, 11, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739851547, 1, 9, 9, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (8880496, 1, 9, 3, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739895630, 1, 9, 33, 1, 'ITEM', 'SELLABLE', null, 0);

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

-- Chest 11 категория (сундуки)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 169723906, 1, 11, 1, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739934582, 1, 11, 2, 1, 'ITEM', 'SELLABLE', null, 0);

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
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 8880461, 1,   13, 18, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949453, 1, 13, 19, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739951595, 1, 13, 20, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739885522, 1, 13, 21, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739919616, 1, 13, 22, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 335801344, 1, 13, 23, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 8880463, 1,   13, 24, 1, 'ITEM', 'SELLABLE', null, 0);
-- не рабоатет INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 8880465, 1,   13, 25, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 239792128, 1, 13, 33, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 334152705, 1, 13, 34, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 178556945, 1, 13, 35, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 275378176, 1, 13, 36, 1, 'ITEM', 'SELLABLE', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 178556974, 1, 13, 37, 1, 'ITEM', 'SELLABLE', null, 0);

-- Crafting - ремёсла 14 категория (ремёсла)
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 288729088, 1, 14, 1, 1, 'ITEM', 'SELLABLE', null, 0);
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

-- кристаллы 500
delete from item_price where item_id = (select id from item where item.res_id = 92134406) and currency_id = 2;
update item_price set price = 500, type = 'BOTH' where item_id = (select id from item where res_id = 92134406) and currency_id = 1;

-- премиальные кристаллы 500
delete from item_price where item_id = (select id from item where item.res_id = 269163540) and currency_id = 1;
update item_price set price = 500, type = 'BOTH' where item_id = (select id from item where res_id = 269163540) and currency_id = 2;