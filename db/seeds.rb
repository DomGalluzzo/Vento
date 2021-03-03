PublicInjury.destroy_all
Cancellation.destroy_all
ContractPlan.destroy_all
Contract.destroy_all
Festival.destroy_all

dom = User.create!(email: "dom123.galluzzo@gmail.com", password: "111111")
fest = Festival.create!(start_date: DateTime.new, end_date: DateTime.new, user: dom)

contract1 = Contract.create(festival: fest)

injury1 = PublicInjury.create!(liability: 100, daily: 10, total: 15, usa: true, dangerous: true, sub: true)
injury2 = PublicInjury.create!(liability: 200, daily: 20, total: 25, usa: false, dangerous: false, sub: false)
cancel = Cancellation.create!(budget: 100, terrorism: true, location: "London", rain: true, flood: true, loss: true, weather: true)

contract_plan1 = ContractPlan.create(contract: contract1, plannable: injury1)
