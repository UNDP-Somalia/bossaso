require_dependency Rails.root.join("app", "models", "user").to_s

class User
  GENDER = %w[male female].freeze
  EDUCATION_LEVEL = %w[
    non
    primary_elementary
    preparatory
    secondary
    diploma
    bachelor
    master
    phd
  ].freeze

  VILLAGE = %w[
    horseed
    kulmiye
    hawl_wadaag
    october
    hormuud
    wadajir
    x_carab
    1da_luulyo
    suweeto
    dayax
    gusoore
    26_june
    girible_a
    sanfarow
    gitible_b
    girible_ubax
  ].freeze

  validates :gender, inclusion: { in: GENDER }, allow_blank: true
  validates :last_education_degree, inclusion: { in: EDUCATION_LEVEL }, allow_blank: true
  validates :village, inclusion: { in: VILLAGE }, allow_blank: true
end