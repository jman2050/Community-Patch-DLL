
UPDATE Defines
SET Value = '15'
WHERE Name = 'CULTURE_LEVEL_EXOTIC' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
		
UPDATE Defines
SET Value = '30'
WHERE Name = 'CULTURE_LEVEL_FAMILIAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
		
UPDATE Defines
SET Value = '60'
WHERE Name = 'CULTURE_LEVEL_POPULAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Defines
SET Value = '1'
WHERE Name = 'BASE_CULTURE_PER_GREAT_WORK' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Defines
SET Value = '33'
WHERE Name = 'TOURISM_MODIFIER_SHARED_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

--- These 5 values change the amount of science earned from trade routes with influence civs. Each is adding to an incremental value (so Familiar is already 1, Popular already 2, etc.)

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SCIENCE_INFLUENCE_LEVEL_FAMILIAR', '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
	
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SCIENCE_INFLUENCE_LEVEL_POPULAR', '2'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
	
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SCIENCE_INFLUENCE_LEVEL_INFLUENTIAL', '3'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
	
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SCIENCE_INFLUENCE_LEVEL_DOMINANT', '4'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
	
--- Reduce turns for conquest of cities. Base is 25 for each level of influence, this adds to it.

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_CONQUEST_REDUCTION_BOOST', '5'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

--- Set turns for spies to est. in cities based on influence.

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SPY_BOOST_INFLUENCE_EXOTIC', '5'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SPY_BOOST_INFLUENCE_FAMILIAR', '4'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SPY_BOOST_INFLUENCE_POPULAR', '3'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SPY_BOOST_INFLUENCE_INFLUENTIAL', '2'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_SPY_BOOST_INFLUENCE_DOMINANT', '1'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

--- These 5 values change the amount of gold earned from trade routes with influenced civs. Lower influence = more gold (trade-off for higher influence, as exoticism = more value).
	
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GOLD_INFLUENCE_LEVEL_EXOTIC', '300'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GOLD_INFLUENCE_LEVEL_FAMILIAR', '200'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
	
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GOLD_INFLUENCE_LEVEL_POPULAR', '100'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
	
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GOLD_INFLUENCE_LEVEL_INFLUENTIAL', '0'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
	
INSERT INTO Defines (
Name, Value)
SELECT 'BALANCE_GOLD_INFLUENCE_LEVEL_DOMINANT', '0'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );


-- Update text for tooltips based on what you changed above.	
INSERT INTO Language_en_US (
Text, Tag)
SELECT '[NEWLINE][NEWLINE]Accrued benefits:[NEWLINE]- Each Trade Route to influenced civ:[NEWLINE]+3 [ICON_GOLD] Gold[NEWLINE]- Each Trade Route to influenced civ:[NEWLINE]+1 [ICON_RESEARCH] Science[NEWLINE]- [ICON_SPY] Spies Establish Surveillance in 5 turns' , 'TXT_KEY_CO_INFLUENCE_BONUSES_EXOTIC'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

-- Update texts for tooltips based on what you changed above.
UPDATE Language_en_US
SET Text = '[NEWLINE][NEWLINE]Accrued benefits:[NEWLINE]- Each Trade Route to influenced civ:[NEWLINE]+2 [ICON_GOLD] Gold[NEWLINE]- Each Trade Route to influenced civ:[NEWLINE]+2 [ICON_RESEARCH] Science[NEWLINE]- [ICON_SPY] Spies Establish Surveillance in 4 turns[NEWLINE]- When conquering influenced city of civ:[NEWLINE]30% reduction in Unrest time/Population loss.'
WHERE Tag = 'TXT_KEY_CO_INFLUENCE_BONUSES_FAMILIAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

-- Update texts for tooltips based on what you changed above.
UPDATE Language_en_US
SET Text = '[NEWLINE][NEWLINE]Accrued benefits:[NEWLINE]- Each Trade Route to influenced civ:[NEWLINE]+1 [ICON_GOLD] Gold[NEWLINE]- Each Trade Route to influenced civ:[NEWLINE]+4 [ICON_RESEARCH] Science[NEWLINE]- [ICON_SPY] Spies Establish Surveillance in 3 turns[NEWLINE]- When conquering influenced city of civ:[NEWLINE]55% reduction in Unrest time/Population loss.'
WHERE Tag = 'TXT_KEY_CO_INFLUENCE_BONUSES_POPULAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

-- Update texts for tooltips based on what you changed above.
UPDATE Language_en_US
SET Text = '[NEWLINE][NEWLINE]Accrued benefits:[NEWLINE]- Each Trade Route to influenced civ:[NEWLINE]+0 [ICON_GOLD] Gold[NEWLINE]- Each Trade Route to influenced civ:[NEWLINE]+6 [ICON_RESEARCH] Science[NEWLINE]- [ICON_SPY] Spies Establish Surveillance in 2 turns[NEWLINE]- When conquering influenced city of civ:[NEWLINE]80% reduction in Unrest time/Population loss.'
WHERE Tag = 'TXT_KEY_CO_INFLUENCE_BONUSES_INFLUENTIAL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

-- Update texts for tooltips based on what you changed above.
UPDATE Language_en_US
SET Text = '[NEWLINE][NEWLINE]Accrued benefits:[NEWLINE]- Each Trade Route to influenced civ:[NEWLINE]+0 [ICON_GOLD] Gold[NEWLINE]- Each Trade Route to influenced civ:[NEWLINE]+8 [ICON_RESEARCH] Science[NEWLINE]- [ICON_SPY] Spies Establish Surveillance in 1 turn[NEWLINE]- When conquering influenced city of civ:[NEWLINE]100% reduction in Unrest time/Population loss.'
WHERE Tag = 'TXT_KEY_CO_INFLUENCE_BONUSES_DOMINANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

-- Text for trade view tooltip.
INSERT INTO Language_en_US (
Text, Tag)
SELECT 'Cultural Influence: +{2_Num} [ICON_GOLD] Gold (due to your Cultural Influence over {1_CivName})', 'TXT_KEY_CHOOSE_INTERNATIONAL_TRADE_ROUTE_ITEM_TT_YOUR_GOLD_EXPLAINED'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

-- Text for trade view tooltip.
INSERT INTO Language_en_US (
Text, Tag)
SELECT 'Cultural Influence: +{2_Num} [ICON_GOLD] Gold (due to the Cultural Influence of {1_CivName} over you)', 'TXT_KEY_CHOOSE_INTERNATIONAL_TRADE_ROUTE_ITEM_TT_THEIR_GOLD_EXPLAINED'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

-- Text changes for Vote Purchase
UPDATE Language_en_US
SET Text = 'In the next World Congress session, [COLOR_POSITIVE_TEXT]{1_NumVotes}[ENDCOLOR] {1_NumVotes: plural 1?Delegate; other?Delegates;} currently controlled by this player will support {2_ChoiceText} on the proposal to [COLOR_POSITIVE_TEXT]enact[ENDCOLOR] these changes:[NEWLINE][NEWLINE]{3_ProposalText}[NEWLINE][NEWLINE]The number of delegates above is based on the number of delegates this player controls, and the Rank of your [ICON_DIPLOMAT] Diplomat. Higher ranks allow you to trade for more delegates.'
WHERE Tag = 'TXT_KEY_DIPLO_VOTE_TRADE_ENACT_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'In the next World Congress session, [COLOR_POSITIVE_TEXT]{1_NumVotes}[ENDCOLOR] {1_NumVotes: plural 1?Delegate; other?Delegates;} currently controlled by this player will support {2_ChoiceText} on the proposal to [COLOR_WARNING_TEXT]repeal[ENDCOLOR] these effects:[NEWLINE][NEWLINE]{3_ProposalText}[NEWLINE][NEWLINE]The number of delegates above is based on the number of delegates this player controls, and the rank of your [ICON_DIPLOMAT] Diplomat. Higher ranks allow you to trade for more delegates.'
WHERE Tag = 'TXT_KEY_DIPLO_VOTE_TRADE_REPEAL_TT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

-- Theming Bonuses increased in all buildings
		
UPDATE Building_ThemingBonuses
SET Bonus = '6'
WHERE BuildingType = 'BUILDING_UFFIZI' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
		
UPDATE Building_ThemingBonuses
SET Bonus = '4'
WHERE BuildingType = 'BUILDING_GLOBE_THEATER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
		
UPDATE Building_ThemingBonuses
SET Bonus = '6'
WHERE BuildingType = 'BUILDING_BROADWAY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );
		
UPDATE Building_ThemingBonuses
SET Bonus = '6'
WHERE BuildingType = 'BUILDING_HERMITAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '4'
WHERE BuildingType = 'BUILDING_OXFORD_UNIVERSITY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '4'
WHERE BuildingType = 'BUILDING_SISTINE_CHAPEL' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '8'
WHERE BuildingType = 'BUILDING_LOUVRE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '4'
WHERE BuildingType = 'BUILDING_GREAT_LIBRARY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '4'
WHERE BuildingType = 'BUILDING_SYDNEY_OPERA_HOUSE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '3'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_1' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '3'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_2' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '2'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_3' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '2'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_4' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '2'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_5' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '2'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_6' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '2'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_7' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );

UPDATE Building_ThemingBonuses
SET Bonus = '2'
WHERE BuildingType = 'BUILDING_MUSEUM' AND Description = 'TXT_KEY_THEMING_BONUS_MUSEUM_8' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_TOURISM_CHANGES' AND Value= 1 );




