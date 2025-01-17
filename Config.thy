theory Config
  imports Main Types
begin

definition GENESIS_EPOCH :: Epoch where
  "GENESIS_EPOCH = Epoch 0"

definition TIMELY_SOURCE_FLAG_INDEX :: nat where
  "TIMELY_SOURCE_FLAG_INDEX = 0"

definition TIMELY_TARGET_FLAG_INDEX :: nat where
  "TIMELY_TARGET_FLAG_INDEX = 1"

definition TIMELY_HEAD_FLAG_INDEX :: nat where
  "TIMELY_HEAD_FLAG_INDEX = 2"

definition TIMELY_SOURCE_WEIGHT :: u64 where
  "TIMELY_SOURCE_WEIGHT = 14"

definition TIMELY_TARGET_WEIGHT :: u64 where
  "TIMELY_TARGET_WEIGHT = 26"

definition TIMELY_HEAD_WEIGHT :: u64 where
  "TIMELY_HEAD_WEIGHT = 14"

definition SYNC_REWARD_WEIGHT :: u64 where
  "SYNC_REWARD_WEIGHT = 2"

definition PROPOSER_WEIGHT :: u64 where
  "PROPOSER_WEIGHT = 8"

definition WEIGHT_DENOMINATOR :: u64 where
  "WEIGHT_DENOMINATOR = 64"

definition PARTICIPATION_FLAG_WEIGHTS :: "u64 list" where
  "PARTICIPATION_FLAG_WEIGHTS = [
    TIMELY_SOURCE_WEIGHT,
    TIMELY_TARGET_WEIGHT,
    TIMELY_HEAD_WEIGHT
  ]"

definition INACTIVITY_PENALTY_QUOTIENT_ALTAIR :: u64 where
  "INACTIVITY_PENALTY_QUOTIENT_ALTAIR = 50331648"

record Config =
  SLOTS_PER_HISTORICAL_ROOT :: u64
  HISTORICAL_ROOTS_LIMIT :: u64
  EPOCHS_PER_ETH1_VOTING_PERIOD :: u64
  SLOTS_PER_EPOCH :: u64
  VALIDATOR_REGISTRY_LIMIT :: u64
  EPOCHS_PER_HISTORICAL_VECTOR :: u64
  EPOCHS_PER_SLASHINGS_VECTOR :: u64
  JUSTIFICATION_BITS_LENGTH :: u64
  SYNC_COMMITTEE_SIZE :: u64
  EFFECTIVE_BALANCE_INCREMENT :: u64
  BASE_REWARD_FACTOR :: u64
  MIN_EPOCHS_TO_INACTIVITY_PENALTY :: u64
  INACTIVITY_SCORE_BIAS :: u64

definition SLOTS_PER_ETH1_VOTING_PERIOD :: "Config \<Rightarrow> u64" where
  "SLOTS_PER_ETH1_VOTING_PERIOD c \<equiv> EPOCHS_PER_ETH1_VOTING_PERIOD c * SLOTS_PER_EPOCH c"

end