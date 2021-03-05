PublicInjury.destroy_all
Cancellation.destroy_all
ContractPlan.destroy_all
Contract.destroy_all
Festival.destroy_all
User.destroy_all

dom1 = User.create!(email: "dom2.galluzzo@gmail.com", password: "111111")
dom2 = User.create!(email: "dom1.galluzzo@gmail.com", password: "111111")

fest1 = Festival.create!(start_date: DateTime.new(2021,1,1), end_date: DateTime.new(2021,1,2), genre: "Music", address: "Westminster, London SW1A 0AA, United Kingdom", name: "Cool Festival", venue: "Cool Venue", user: dom1)
fest2 = Festival.create!(start_date: DateTime.new(2021,2,2), end_date: DateTime.new(2021,2,3), genre: "Race", address: "Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France", name: "Cool Race", venue: "Cool Race Place", user: dom2)

contract1 = Contract.create!(total_cost: 10000, festival: fest1)
contract2 = Contract.create!(total_cost: 5000, festival: fest2)

injury1 = PublicInjury.create!(liability: 100, daily: 10, total: 15, usa: true, dangerous: true, sub: true)
injury2 = PublicInjury.create!(liability: 200, daily: 20, total: 25, usa: true, dangerous: true, sub: true)

cancel1 = Cancellation.create!(budget: 100, terrorism: false, location: "Outdoors", rain: true, flood: false, loss: true, weather: true)
cancel2 = Cancellation.create!(budget: 100, terrorism: false, location: "Outdoors", rain: true, flood: false, loss: true, weather: true)

contract_plan1 = ContractPlan.create!(contract: contract1, plannable: injury1)
contract1.contract_plans.create!(plannable: cancel1)

contract_plan2 = ContractPlan.create!(contract: contract2, plannable: cancel2)
