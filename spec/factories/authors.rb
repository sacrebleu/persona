FactoryBot.define do
  factory :author do

    first_name "Jeremy"
    last_name  "Botha"
    date_of_birth { Time.strptime('1978-01-01', '%Y-%m-%d') }
    nationalities "British"
    current_location "London"
    degree "B.Sc (Hons) Computer Science"


  end
end