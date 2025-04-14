INSERT INTO "currency"("id", "name") VALUES (1, 'MAIN');
INSERT INTO "currency"("id", "name") VALUES (2, 'HAPPY');

-- delete from item where true;

INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (1, 'Favorites.txt', 151291907, 97905665, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (2, 'Popular.txt', 151291910, 170579988, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (3, 'Event.txt', 151291922, 170579971, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (4, 'Runes.txt', 151291910, 170579996, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (5, 'Halo.txt', 151291922, 170579989, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (6, 'Services.txt', 151291905, 170579972, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (7, 'Rates.txt', 151291905, 171537408, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (8, 'Inventory.txt', 151291915, 170579997, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (9, 'Transport.txt', 151291905, 171518976, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (10, 'Potions.txt', 151291925, 170579995, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (11, 'Chests.txt', 151291907, 170579976, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (12, 'Sets.txt', 151291924, 170579970, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (13, 'Style.txt', 151291924, 170579998, 1, 'f');
INSERT INTO "category"("id", "name", "cat_res_id", "root_category_res_id", "position", "hidden") VALUES (14, 'Crafting.txt', 151291920, 170579981, 1, 'f');

delete from item where true;

INSERT INTO public.item (category_id, res_id, stack_count, position, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (3, 160164868, 1, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (67174436, 5, 4, 3, 1, 'ITEM', 'sellable', null, 0);

INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739869562	, 1 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739819638	, 2 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 285781054	, 3 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739852725	, 4 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739852725	, 5 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739913015	, 6 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739869898	, 7 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739911861	, 8 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 182583302	, 9 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739815345	, 10 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739978606	, 11 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739978607	, 12 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739917181	, 13 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739882940	, 14 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 95143937	, 15 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 103920643	, 16 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 2313	, 17 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739934925	, 19 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739895630	, 20 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739850140	, 21 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739939022	, 22 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739869546	, 24 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739966105	, 25 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 276480000	, 26 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 225693722	, 27 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739852441	, 28 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739883007	, 29 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 274863105	, 30 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 199329797	, 31 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739871766	, 32 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739952090	, 33 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739951516	, 34 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 296494082	, 35 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 331945993	, 36 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 331945987	, 37 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 330285057	, 38 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 108106803	, 39 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 108106805	, 40 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739913937	, 41 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 329433089	, 42 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739950630	, 43 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739950628	, 44 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739917496	, 45 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739917497	, 46 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 170352643	, 47 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 260440079	, 48 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 132810763	, 49 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 358712342	, 50 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 169217029	, 51 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 167407623	, 52 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 108144673	, 53 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739814541	, 54 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739825022	, 55 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739821903	, 56 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739821899	, 57 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 200593419	, 59 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 200593417	, 60 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 200593408	, 61 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 200593412	, 62 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 200593415	, 63 , 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (6, 739850170	, 64 , 1, 1, 'ITEM', 'sellable', null, 0);


INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739934582,	1, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739868726,	2, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739872554,	3, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 169723906,	4, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 251574274,	5, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 287478784,	6, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 359942144,	7, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 334152705,	8, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 178556945,	9, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 275378176,	10, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 178556974,	11, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739952597,	12, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739955833,	13, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739917271,	14, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739920553,	15, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739917178,	16, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739950283,	17, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739932802,	18, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739949293,	19, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739886550,	20, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739950330,	21, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (11, 739948657,	22, 1, 1, 'ITEM', 'sellable', null, 0);

INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 135547904, 	1, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 156825600, 	2, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 145421314, 	3, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 156735493, 	4, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 232348672, 	5, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 186595328, 	6, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 329207810, 	7, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 357114881, 	8, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739826321, 	9, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739848792	, 10, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739868623	, 11, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739884615	, 12, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739911531	, 13, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 145421318	, 14, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739931360	, 15, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739931359	, 16, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739931354	, 17, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739931241	, 18, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739931634	, 19, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739889098	, 20, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 277113866	, 21, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739884746	, 22, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 739901189	, 23, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 147145739	, 24, 1 , 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (category_id, res_id, position, stack_count, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (9, 196216832	, 25, 1 , 1, 'ITEM', 'sellable', null, 0);




INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id)
VALUES (739924511, 1, 7, 11, 1, 'ITEM', 'sellable', null, 0);
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
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 144597001, 1, 6, 4, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739870546, 1, 6, 2, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 358712342, 1, 6, 1, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 199329797, 1, 6, 3, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 146239536, 1, 6, 5, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739878235, 1, 4, 4, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739871028, 1, 8, 2, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 108144673, 1, 8, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739872994, 1, 8, 3, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 2147418912, 5, 4, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 169183234, 5, 4, 2, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739894802, 1, 7, 19, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215324683, 1, 7, 18, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 208236609, 1, 7, 20, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215324736, 1, 7, 16, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739830402, 1, 7, 10, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739919042, 1, 7, 6, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 215528450, 1, 7, 12, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739911465, 1, 14, 1, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949132, 1, 14, 6, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 273925141, 1, 14, 2, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 274167817, 1, 14, 4, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949138, 1, 14, 8, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949305, 1, 14, 5, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 285227026, 15, 14, 13, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949313, 1, 14, 12, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 288729088, 1, 14, 9, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 273925145, 1, 14, 3, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949227, 1, 14, 11, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949136, 1, 14, 7, 1, 'ITEM', 'sellable', null, 0);
INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES ( 739949226, 1, 14, 10, 1, 'ITEM', 'sellable', null, 0);
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
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (383, 739917218, 1, 6, 9, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (384, 222773250, 1, 6, 10, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (270, 275909633, 1, 6, 7, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (382, 215324713, 1, 6, 8, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (269, 146239539, 1, 6, 6, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (796, 222773264, 1, 6, 11, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (797, 739913833, 1, 6, 12, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (798, 2173, 1, 6, 13, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (799, 739950235, 1, 6, 14, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (800, 739952613, 1, 6, 15, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (801, 739955849, 1, 6, 16, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (802, 739950343, 1, 6, 17, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (803, 739917043, 1, 6, 18, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (id, res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (804, 167888900, 1, 6, 19, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (328950808, 1, 9, 17, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (274484225, 1, 9, 14, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (280431627, 1, 9, 6, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308285442, 1, 9, 15, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (234, 1, 9, 18, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (236592137, 1, 9, 4, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (1049, 1, 9, 2, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739885448, 1, 9, 8, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (380827676, 1, 9, 13, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (353777669, 1, 9, 16, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (196216832, 1, 9, 1, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739868955, 1, 9, 10, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (202200075, 1, 9, 5, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (304820232, 1, 9, 7, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (353753098, 1, 9, 12, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (308750338, 1, 9, 11, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (739851547, 1, 9, 9, 1, 'ITEM', 'sellable', null, 0);
-- INSERT INTO public.item (res_id, stack_count, category_id, position, is_activated, type, sellable, bundle_id, event_res_id) VALUES (8880496, 1, 9, 3, 1, 'ITEM', 'sellable', null, 0);


delete from item_price where true;

insert into item_price (item_id, price, currency_id, type)
select  i.id as item_id , 10 as price , 1 as currency_id,'BUYONLY' from item as i;

insert into item_price (item_id, price, currency_id, type)
select  i.id as item_id , 1 as price , 2 as currency_id,'BUYONLY' from item as i;