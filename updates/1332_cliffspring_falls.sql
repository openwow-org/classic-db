-- Lord Sinslayer
-- has 3 diff spawn possitions
-- 1st spawn
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid = 37089;
-- other spawns
-- missing added - UDB free guids reused
DELETE FROM creature WHERE guid IN (36942,60818,37522);
DELETE FROM creature_addon WHERE guid IN (36942,60818,37522);
DELETE FROM creature_movement WHERE id IN (36942,60818,37522);
DELETE FROM game_event_creature WHERE guid IN (36942,60818,37522);
DELETE FROM game_event_creature_data WHERE guid IN (36942,60818,37522);
DELETE FROM creature_battleground WHERE guid IN (36942,60818,37522);
DELETE FROM creature_linking WHERE guid IN (36942,60818,37522) OR master_guid IN (36942,60818,37522);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(36942,7017,1,0,627,6749.1,-694.138,69.3058,1.77401,7200,5,0,356,0,0,1),
(60818,7017,1,0,627,6763.87,-707.292,89.846,0.829961,7200,5,0,356,0,0,1);
-- Only one can be spawned at at the same time
DELETE FROM pool_template WHERE entry = 1215;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(1215,1,'Lord Sinslayer - 7017');
DELETE FROM pool_creature_template WHERE pool_entry = 25522;
INSERT INTO pool_creature_template (id, pool_entry, chance, description) VALUES
(7017, 1215, 0, 'Lord Sinslayer - 7017');
-- drop
DELETE FROM creature_loot_template WHERE entry = 7017;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
(7017,774,0.28,0,1,1,0),
(7017,818,0.82,0,1,1,0),
(7017,856,0.03,0,1,1,0),
(7017,858,1.5,0,1,1,0),
(7017,955,0.09,0,1,1,0),
(7017,1179,2,0,1,1,0),
(7017,1180,1.36,0,1,1,0),
(7017,1181,1.36,0,1,1,0),
(7017,1210,0.54,0,1,1,0),
(7017,1738,0.13,0,1,1,0),
(7017,1739,0.11,0,1,1,0),
(7017,1740,0.2,0,1,1,0),
(7017,1742,0.11,0,1,1,0),
(7017,1743,0.16,0,1,1,0),
(7017,1744,0.12,0,1,1,0),
(7017,1745,0.14,0,1,1,0),
(7017,1764,0.1,0,1,1,0),
(7017,1766,0.16,0,1,1,0),
(7017,1767,0.19,0,1,1,0),
(7017,1768,0.09,0,1,1,0),
(7017,1769,0.18,0,1,1,0),
(7017,1770,0.2,0,1,1,0),
(7017,1787,0.19,0,1,1,0),
(7017,1788,0.4,0,1,1,0),
(7017,1789,0.2,0,1,1,0),
(7017,1791,0.16,0,1,1,0),
(7017,1792,0.3,0,1,1,0),
(7017,1793,0.14,0,1,1,0),
(7017,1794,0.13,0,1,1,0),
(7017,1811,0.18,0,1,1,0),
(7017,1812,0.2,0,1,1,0),
(7017,1813,0.3,0,1,1,0),
(7017,1814,0.17,0,1,1,0),
(7017,1815,0.2,0,1,1,0),
(7017,1816,0.2,0,1,1,0),
(7017,1817,0.3,0,1,1,0),
(7017,2216,0.4,0,1,1,0),
(7017,2217,0.2,0,1,1,0),
(7017,2287,0.28,0,1,1,0),
(7017,2449,0.28,0,1,1,0),
(7017,2455,0.6,0,1,1,0),
(7017,2589,20,0,1,3,0),
(7017,2592,19,0,1,2,0),
(7017,2657,0.03,0,1,1,0),
(7017,2698,0.82,0,1,1,0),
(7017,2764,0.3,0,1,1,0),
(7017,2780,0.3,0,1,1,0),
(7017,2781,0.2,0,1,1,0),
(7017,3013,0.28,0,1,1,0),
(7017,3040,0.05,0,1,1,0),
(7017,3184,0.13,0,1,1,0),
(7017,3195,0.05,0,1,1,0),
(7017,3304,0.28,0,1,1,0),
(7017,3306,0.03,0,1,1,0),
(7017,3311,0.7463,0,1,1,0),
(7017,3376,0.2,0,1,1,0),
(7017,3377,0.15,0,1,1,0),
(7017,4568,0.03,0,1,1,0),
(7017,4575,0.11,0,1,1,0),
(7017,4605,0.28,0,1,1,0),
(7017,4687,0.28,0,1,1,0),
(7017,5207,0.03,0,1,1,0),
(7017,5498,0.28,0,1,1,0),
(7017,5503,5.98,0,1,1,0),
(7017,5523,36,0,1,1,0),
(7017,6271,0.28,0,1,1,0),
(7017,6289,5,0,1,1,0),
(7017,6344,0.04,0,1,1,0),
(7017,6390,0.03,0,1,1,0),
(7017,6536,4,0,1,1,0),
(7017,6538,3,0,1,1,0),
(7017,6540,4,0,1,1,0),
(7017,6545,4,0,1,1,0),
(7017,6549,3.52,0,1,1,0),
(7017,6552,4,0,1,1,0),
(7017,6553,5,0,1,1,0),
(7017,6555,2.98,0,1,1,0),
(7017,6562,1.8,0,1,1,0),
(7017,6563,2,0,1,1,0),
(7017,6564,1.9,0,1,1,0),
(7017,6565,0.6,0,1,1,0),
(7017,6570,0.8,0,1,1,0),
(7017,6574,0.7,0,1,1,0),
(7017,6575,2,0,1,1,0),
(7017,6576,0.7,0,1,1,0),
(7017,6581,2,0,1,1,0),
(7017,6582,0.8,0,1,1,0),
(7017,6583,2,0,1,1,0),
(7017,6585,2,0,1,1,0),
(7017,9749,0.03,0,1,1,0),
(7017,9766,2,0,1,1,0),
(7017,9767,4,0,1,1,0),
(7017,9768,4,0,1,1,0),
(7017,9770,4,0,1,1,0),
(7017,9771,2,0,1,1,0),
(7017,9772,0.6,0,1,1,0),
(7017,9775,4,0,1,1,0),
(7017,9776,3,0,1,1,0),
(7017,9777,4,0,1,1,0),
(7017,9779,6,0,1,1,0),
(7017,9780,3,0,1,1,0),
(7017,9781,0.9,0,1,1,0),
(7017,9783,2,0,1,1,0),
(7017,9784,3,0,1,1,0),
(7017,9787,4,0,1,1,0),
(7017,9788,4,0,1,1,0),
(7017,9789,4,0,1,1,0),
(7017,9812,0.6,0,1,1,0),
(7017,10287,0.9,0,1,1,0),
(7017,10405,0.5,0,1,1,0),
(7017,10407,0.6,0,1,1,0),
(7017,14121,0.03,0,1,1,0),
(7017,14122,0.05,0,1,1,0),
(7017,14129,0.05,0,1,1,0),
(7017,14131,0.05,0,1,1,0),
(7017,14146,0.03,0,1,1,0),
(7017,14160,0.08,0,1,1,0),
(7017,14161,0.05,0,1,1,0),
(7017,14169,0.04,0,1,1,0),
(7017,14367,0.11,0,1,1,0),
(7017,14370,0.04,0,1,1,0),
(7017,14560,0.13,0,1,1,0),
(7017,14564,0.04,0,1,1,0),
(7017,14726,0.03,0,1,1,0),
(7017,14727,0.04,0,1,1,0),
(7017,14745,0.03,0,1,1,0),
(7017,15013,0.54,0,1,1,0),
(7017,15014,0.04,0,1,1,0),
(7017,15018,0.03,0,1,1,0),
(7017,15110,0.03,0,1,1,0),
(7017,15114,0.03,0,1,1,0),
(7017,15211,0.03,0,1,1,0),
(7017,15222,0.12,0,1,1,0),
(7017,15307,0.04,0,1,1,0),
(7017,15310,0.03,0,1,1,0),
(7017,15497,0.06,0,1,1,0),
(7017,15498,0.2,0,1,1,0),
(7017,15508,0.03,0,1,1,0),
(7017,24060,1,1,-24060,1,0),
(7017,24062,1,1,-24062,1,0),
(7017,24070,5,1,-24070,1,0),
(7017,24071,5,1,-24071,1,0),
(7017,24076,1,1,-24076,1,0),
(7017,24077,1,1,-24077,1,0);
-- Stormscale Wave Rider
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE guid = 37497;
DELETE FROM creature_movement WHERE id = 37497;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(37497, 1, 6768.16,-689.049,89.3329, 0, 0,1.25778, 0, 0),
(37497, 2, 6773.96,-677.609,89.3417, 0, 0,0.857226, 0, 0),
(37497, 3, 6782.86,-668.704,89.3448, 0, 0,0.735489, 0, 0),
(37497, 4, 6801.05,-661.372,89.155, 0, 0,0.188067, 0, 0),
(37497, 5, 6818.28,-661.963,86.8664, 0, 0,6.18458, 0, 0),
(37497, 6, 6839.91,-667.683,83.8997, 0, 0,5.91755, 0, 0),
(37497, 7, 6851.98,-674.263,83.6308, 0, 0,5.43061, 0, 0),
(37497, 8, 6853.49,-684.046,82.565, 0, 0,4.60013, 0, 0),
(37497, 9, 6842.07,-711.065,82.7247, 0, 0,3.99538, 0, 0),
(37497, 10, 6829.03,-718.909,80.2218, 0, 0,3.57127, 0, 0),
(37497, 11, 6816.43,-721.171,78.1265, 0, 0,3.17228, 0, 0),
(37497, 12, 6804.55,-717.892,75.6674, 0, 0,2.63036, 0, 0),
(37497, 13, 6796.95,-712.09,74.2867, 0, 0,2.38296, 0, 0),
(37497, 14, 6787.63,-700.867,74.3674, 0, 0,1.95963, 0, 0),
(37497, 15, 6785.96,-687.973,69.9268, 0, 0,1.51279, 0, 0),
(37497, 16, 6790.77,-677.926,67.5577, 0, 0,0.824, 0, 0),
(37497, 17, 6802.9,-672.974,64.9071, 0, 0,0.172119, 0, 0),
(37497, 18, 6813.67,-673.613,64.7535, 0, 0,6.149, 0, 0),
(37497, 19, 6823.71,-678.64,64.5991, 0, 0,5.50262, 0, 0),
(37497, 20, 6827.08,-688.399,64.5075, 0, 0,4.77613, 0, 0),
(37497, 21, 6822.56,-695.867,64.5168, 0, 0,3.8478, 0, 0),
(37497, 22, 6814.34,-698.526,64.4119, 0, 0,3.06004, 0, 0),
(37497, 23, 6807.48,-694.007,64.5385, 0, 0,1.98797, 0, 0),
(37497, 24, 6808.84,-680.426,64.8789, 0, 0,1.90943, 0, 0),
(37497, 25, 6804.65,-674.004,64.8789, 0, 0,2.83043, 0, 0),
(37497, 26, 6793.89,-674.265,66.3667, 0, 0,3.62761, 0, 0),
(37497, 27, 6786.81,-684.854,69.1311, 0, 0,4.40515, 0, 0),
(37497, 28, 6785.74,-693.738,71.8132, 0, 0,4.87953, 0, 0),
(37497, 29, 6787.16,-700.994,74.3111, 0, 0,5.24866, 0, 0),
(37497, 30, 6797.48,-713.948,74.1704, 0, 0,5.5903, 0, 0),
(37497, 31, 6811.48,-721.537,77.1693, 0, 0,6.13065, 0, 0),
(37497, 32, 6825.3,-720.502,79.4368, 0, 0,0.217389, 0, 0),
(37497, 33, 6836.51,-715.885,81.3701, 0, 0,0.521338, 0, 0),
(37497, 34, 6842.75,-710.872,82.7626, 0, 0,1.00043, 0, 0),
(37497, 35, 6850.04,-695.095,82.7166, 0, 0,1.15751, 0, 0),
(37497, 36, 6854.42,-682.282,82.7314, 0, 0,1.48345, 0, 0),
(37497, 37, 6853.25,-675.25,83.5474, 0, 0,2.04658, 0, 0),
(37497, 38, 6845.24,-668.969,83.6298, 0, 0,2.76993, 0, 0),
(37497, 39, 6829.27,-662.566,86.0913, 0, 0,2.8524, 0, 0),
(37497, 40, 6819.1,-661.331,86.8223, 0, 0,3.15085, 0, 0),
(37497, 41, 6807.57,-660.407,88.2472, 0, 0,3.19798, 0, 0),
(37497, 42, 6798.3,-662.107,89.3332, 0, 0,3.42181, 0, 0),
(37497, 43, 6778.3,-671.196,89.3499, 0, 0,3.90719, 0, 0),
(37497, 44, 6770.81,-680.555,89.3396, 0, 0,4.21114, 0, 0),
(37497, 45, 6765.18,-703.097,89.4646, 0, 0,4.43105, 0, 0);
-- Stormscale Siren
UPDATE creature SET movementtype = 2, spawndist = 0 WHERE guid = 37515;
DELETE FROM creature_movement WHERE id = 37515;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(37515, 1, 6808.75,-762.765,68.8449, 0, 0,3.26687, 0, 0),
(37515, 2, 6806.02,-768.576,69.1828, 0, 0,4.78661, 0, 0),
(37515, 3, 6813.14,-779.647,68.6957, 0, 0,5.47383, 0, 0),
(37515, 4, 6823.43,-790.236,67.5209, 0, 0,5.75578, 0, 0),
(37515, 5, 6833.14,-794.737,65.3031, 0, 0,6.20875, 0, 0),
(37515, 6, 6844.47,-794.202,63.3445, 0, 0,0.239723, 0, 0),
(37515, 7, 6852.77,-788.815,61.9014, 0, 0,0.758086, 0, 0),
(37515, 8, 6857.61,-777.811,60.5616, 0, 0,1.65573, 0, 0),
(37515, 9, 6852.91,-765.669,59.9527, 0, 0,2.26505, 0, 0),
(37515, 10, 6840.7,-756.169,58.7106, 0, 0,2.75188, 0, 0),
(37515, 11, 6828.7,-751.625,58.5826, 0, 0,2.51626, 0, 0),
(37515, 12, 6821.59,-740.184,59.8178, 0, 0,1.85495, 0, 0),
(37515, 13, 6819.83,-722.425,61.3164, 0, 0,1.67431, 0, 0),
(37515, 14, 6817.91,-706.298,64.1137, 3000, 0,1.63504, 0, 0),
(37515, 16, 6820.27,-728.113,61.1021, 0, 0,4.86852, 0, 0),
(37515, 17, 6822.04,-742.678,59.5579, 0, 0,5.22744, 0, 0),
(37515, 18, 6828.66,-752.552,58.4691, 0, 0,5.68219, 0, 0),
(37515, 19, 6846.42,-762.149,59.3612, 0, 0,5.52746, 0, 0),
(37515, 20, 6852.55,-771.033,60.0298, 0, 0,4.98711, 0, 0),
(37515, 21, 6852.89,-780.528,60.811, 0, 0,4.45305, 0, 0),
(37515, 22, 6845.64,-791.227,62.9676, 0, 0,3.5844, 0, 0),
(37515, 23, 6835.67,-792.358,64.9489, 0, 0,2.91131, 0, 0),
(37515, 24, 6826.51,-787.855,66.9343, 0, 0,2.38667, 0, 0),
(37515, 25, 6819.6,-779.197,68.2743, 0, 0,1.92878, 0, 0),
(37515, 26, 6814.57,-765.085,68.7551, 0, 0,1.9759, 0, 0);
-- randomovements
DELETE FROM creature_movement WHERE id IN (37513,37514,37486);
UPDATE creature SET spawndist = 5, MovementType = 1 WHERE guid IN (37513,37514,37486);