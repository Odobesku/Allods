-- delete from currency where true;

-- INSERT INTO "currency"("id", "name") VALUES (1, 'MAIN');
-- INSERT INTO "currency"("id", "name") VALUES (2, 'HAPPY');

delete from category where true;

INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (1, 'Favorites.txt', 151291905, 97905665, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (2, 'Popular.txt', 151291905, 170579988, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (3, 'Event.txt', 151291905, 170579971, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (4, 'Runes.txt', 151291905, 170579996, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (5, 'Halo.txt', 151291905, 170579989, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (6, 'Services.txt', 151291905, 170579972, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (7, 'Rates.txt', 151291905, 171537408, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (77, 'Rates.txt', 155176960, 171537408, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (8, 'Inventory.txt', 151291905, 170579997, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (9, 'Transport.txt', 151291905, 171518976, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (99, 'Transport.txt', 151291906, 171518976, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (10, 'Potions.txt', 151291905, 170579995, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (11, 'Chests.txt', 151291905, 170579976, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (111, 'Chests.txt', 151291907, 170579976, 2, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (12, 'Sets.txt', 151291905, 170579970, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (13, 'Style.txt', 151291905, 170579998, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (14, 'Crafting.txt', 151291905, 170579981, 1, 'f');

delete from item where true;

-- Runes 4 категория
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739878235, 1, 4, 4, 1, 'ITEM', 'sellable', null, 0);
-- todo для прода раскомментить INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 2147418912, 1, 4, 1, 1, 'ITEM', 'sellable', null, 0);
-- todo для прода раскомментить INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 169183234, 1, 4, 2, 1, 'ITEM', 'sellable', null, 0);

-- Services 6 категория
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 358712342, 1, 6, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 199329797, 1, 6, 3, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917218, 1, 6, 9, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (222773250, 1, 6, 10, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (275909633, 1, 6, 7, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (215324713, 1, 6, 8, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (222773264, 1, 6, 11, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739913833, 1, 6, 12, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (2173, 1, 6, 13, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950235, 1, 6, 14, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739952613, 1, 6, 15, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739955849, 1, 6, 16, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950343, 1, 6, 17, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917043, 1, 6, 18, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (167888900, 1, 6, 19, 1, 'ITEM', 'sellable', null, 0);

-- Rates 7 категория
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id)VALUES (739924511, 1, 7, 11, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894819, 1, 7, 15, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215324712, 1, 7, 14, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 228926486, 1, 7, 4, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 228926483, 1, 7, 2, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739939740, 1, 7, 5, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894822, 1, 7, 13, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739830401, 1, 7, 9, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739861137, 1, 7, 7, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 228926485, 1, 7, 3, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739830400, 1, 7, 8, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894818, 1, 7, 17, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 229716992, 1, 7, 1, 1, 'ITEM', 'sellable', null, 0);

INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894802, 1, 7, 19, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215324683, 1, 7, 18, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 208236609, 1, 7, 20, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215324736, 1, 7, 16, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739830402, 1, 7, 10, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739919042, 1, 7, 6, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215528450, 1, 7, 12, 1, 'ITEM', 'sellable', null, 0);

INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 136308751, 1, 7, 21, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 136308737, 1, 7, 22, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 136308739, 1, 7, 23, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 136308741, 1, 7, 24, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 177280003, 1, 7, 25, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 177280005, 1, 7, 26, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 177280007, 1, 7, 27, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739918560, 1, 7, 28, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 161004556, 1, 7, 29, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 161004557, 1, 7, 30, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 161004561, 1, 7, 31, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 161004555, 1, 7, 32, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739917309, 1, 7, 33, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739870165, 1, 7, 34, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739870169, 1, 7, 35, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739870172, 1, 7, 36, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 196642826, 1, 7, 37, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 324220930, 1, 7, 38, 1, 'ITEM', 'sellable', null, 0);

-- Rates 77 категория
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739871766, 1, 77, 111, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739952090, 1, 77, 112, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739951516, 1, 77, 113, 1, 'ITEM', 'sellable', null, 0);

-- Inventory 8 категория
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739871028, 1, 8, 2, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 108144673, 1, 8, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739872994, 1, 8, 3, 1, 'ITEM', 'sellable', null, 0);

-- Transport 9 категория
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (328950808, 1, 9, 17, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (274484225, 1, 9, 14, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (280431627, 1, 9, 6, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308285442, 1, 9, 15, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (234, 1, 9, 18, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (236592137, 1, 9, 4, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (1049, 1, 9, 2, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739885448, 1, 9, 8, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (380827676, 1, 9, 13, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (353777669, 1, 9, 16, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (196216832, 1, 9, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868955, 1, 9, 10, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (202200075, 1, 9, 5, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (304820232, 1, 9, 7, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (353753098, 1, 9, 12, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308750338, 1, 9, 11, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739851547, 1, 9, 9, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (8880496, 1, 9, 3, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739895630, 1, 9, 33, 1, 'ITEM', 'sellable', null, 0);

-- Transport - корабли - 99 категория
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (135547904, 1, 99, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (156825600, 1, 99, 2, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (145421314, 1, 99, 3, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (156735493, 1, 99, 4, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (232348672, 1, 99, 5, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (186595328, 1, 99, 6, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (329207810, 1, 99, 7, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (357114881, 1, 99, 8, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739826321, 1, 99, 9, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739848792, 1, 99, 11, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868623, 1, 99, 12, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739884615, 1, 99, 13, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739911531, 1, 99, 14, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (145421318, 1, 99, 15, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931360, 1, 99, 16, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931359, 1, 99, 17, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931354, 1, 99, 19, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931241, 1, 99, 21, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739931634, 1, 99, 22, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739889098, 1, 99, 23, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (277113866, 1, 99, 24, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739884746, 1, 99, 25, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739901189, 1, 99, 26, 1, 'ITEM', 'sellable', null, 0);

-- Potions 10 категория
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739911465, 1, 10, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 273925141, 1, 10, 2, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 273925145, 1, 10, 3, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 274167817, 1, 10, 4, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949305, 1, 10, 5, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949132, 1, 10, 6, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949136, 1, 10, 7, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949138, 1, 10, 8, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 288729088, 1, 10, 9, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949226, 1, 10, 10, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949227, 1, 10, 11, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949313, 1, 10, 12, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 285227026, 1,10, 13, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 501681, 1,    10, 14, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 501679, 1,    10, 15, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 501678, 1,    10, 16, 1, 'ITEM', 'sellable', null, 0);

INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949336, 1,    10, 17, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949334, 1,    10, 18, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949333, 1,    10, 19, 1, 'ITEM', 'sellable', null, 0);

INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952581, 1,    10, 21, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952587, 1,    10, 22, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952590, 1,    10, 23, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952592, 1,    10, 24, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952596, 1,    10, 25, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952600, 1,    10, 26, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952601, 1,    10, 27, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952604, 1,    10, 28, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952607, 1,    10, 29, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952613, 1,    10, 30, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (284952618, 1,    10, 31, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739935219, 1,    10, 32, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739935227, 1,    10, 33, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739935238, 1,    10, 34, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917496, 1,    10, 35, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917497, 1,    10, 36, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (338235467, 1,    10, 37, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (338235399, 1,    10, 38, 1, 'ITEM', 'sellable', null, 0);

-- Chest 11 категория
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 169723906, 1, 11, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739934582, 1, 11, 2, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 334152705, 1, 11, 3, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 178556945, 1, 11, 4, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 275378176, 1, 11, 5, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 178556974, 1, 11, 6, 1, 'ITEM', 'sellable', null, 0);

-- Chest - сундуки 111 категория
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739952597, 1, 111, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739955833, 1, 111, 2, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917271, 1, 111, 3, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739920553, 1, 111, 4, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739917178, 1, 111, 5, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950283, 1, 111, 6, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739932802, 1, 111, 7, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739949293, 1, 111, 8, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739886550, 1, 111, 9, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739950330, 1, 111, 11, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739948657, 1, 111, 12, 1, 'ITEM', 'sellable', null, 0);

delete from item_price where true;

insert into item_price (item_id, price, currency_id, type)
select  i.id as item_id , 1 as price , 1 as currency_id,'BUYONLY' from item as i;

insert into item_price (item_id, price, currency_id, type)
select  i.id as item_id , 1 as price , 2 as currency_id,'BUYONLY' from item as i;