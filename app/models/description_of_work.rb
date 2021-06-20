class DescriptionOfWork < ApplicationRecord
  enum types: { construction: 0, dismantlement: 1 }
  # construction=組立,dismantlement=解体
  enum floors: { second_floor: 0, third_floor: 1 }
  # second_floor=2F,third_floor=3F
  enum buildings: { apartment: 0, condominium: 1, single_house: 2 }
  # apartment=アパート、condominium=マンション、single_house=戸建て
  enum modes: { new_construction: 0, repair: 1 }
  # new_construction=新築、repair=改修
  enum formation_levels: { side: 0, one_side: 1, two_sides: 2, three_sides: 3, four_sides: 4 }
  # side=面、one_side=一面、two_sides=2面、three_sides、=3面、four_sides=4面,
  enum work_times: { forenoon: 0, 、afternoon: 1 }
  # forenoon=午前、、afternoon=午後
end
