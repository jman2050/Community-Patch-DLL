-- PANTHEONS

-- Goddess of the Hunt

-- Fertility Rites

-- God of Craftsmen

-- God of the Sea
UPDATE Belief_ImprovementYieldChanges
SET YieldType = 'YIELD_FAITH'
WHERE BeliefType = 'BELIEF_GOD_SEA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- God of the Open Sky

UPDATE Belief_ImprovementYieldChanges
SET YieldType = 'YIELD_FAITH'
WHERE BeliefType = 'BELIEF_OPEN_SKY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Messenger of the Gods

-- One With Nature

-- Liturgy (Now Goddess of Wisdom)

UPDATE Belief_ResourceYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_FORMAL_LITURGY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Stone Circles

-- God of War
UPDATE Beliefs
SET MaxDistance = '0'
WHERE Type = 'BELIEF_GOD_WAR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Sacred Waters

-- Goddess of Love
UPDATE Beliefs
SET MinPopulation = '0'
WHERE Type = 'BELIEF_GODDESS_LOVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET HappinessPerCity = '0'
WHERE Type = 'BELIEF_GODDESS_LOVE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Religious Settlements

UPDATE Beliefs
SET PlotCultureCostModifier = '-10'
WHERE Type = 'BELIEF_RELIGIOUS_SETTLEMENTS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- God of Festivals
UPDATE Belief_ResourceYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_GOD_FESTIVALS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Oral Tradition

UPDATE Belief_ImprovementYieldChanges
SET YieldType = 'YIELD_FAITH'
WHERE BeliefType = 'BELIEF_ORAL_TRADITION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Ancestor Worship
UPDATE Belief_BuildingClassYieldChanges
SET YieldChange = '0'
WHERE BeliefType = 'BELIEF_ANCESTOR_WORSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

--Desert Folklore

UPDATE Beliefs
SET RequiresResource = 'true'
WHERE Type = 'BELIEF_DESERT_FOLKLORE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresImprovement = 'true'
WHERE Type = 'BELIEF_DESERT_FOLKLORE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Sacred Path

UPDATE Belief_FeatureYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_SACRED_PATH' AND FeatureType = 'FEATURE_JUNGLE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Goddess of Protection

-- Faith Healers
UPDATE Beliefs
SET FriendlyHealChange = '20'
WHERE Type = 'BELIEF_FAITH_HEALERS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Monuments to the Gods
UPDATE Beliefs
SET WonderProductionModifier = '15'
WHERE Type = 'BELIEF_MONUMENT_GODS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Dance of the Aurora

UPDATE Beliefs
SET RequiresImprovement = 'true'
WHERE Type = 'BELIEF_DANCE_AURORA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresResource = 'true'
WHERE Type = 'BELIEF_DANCE_AURORA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

--  Tears of the Gods (Now Polytheism)
UPDATE Beliefs
SET HappinessPerPantheon = '1'
WHERE Type = 'BELIEF_TEARS_OF_GODS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Belief_ResourceYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_TEARS_OF_GODS' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Earth Mother
UPDATE Belief_ResourceYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_EARTH_MOTHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresResource = 'true'
WHERE Type = 'BELIEF_EARTH_MOTHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- God-King
UPDATE Belief_BuildingClassYieldChanges
SET YieldChange = '2'
WHERE BeliefType = 'BELIEF_GOD_KING' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

-- Sun God

UPDATE Belief_ResourceYieldChanges
SET Yield = '0'
WHERE BeliefType = 'BELIEF_SUN_GOD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresResource = 'true'
WHERE Type = 'BELIEF_SUN_GOD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Beliefs
SET RequiresImprovement = 'true'
WHERE Type = 'BELIEF_SUN_GOD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );