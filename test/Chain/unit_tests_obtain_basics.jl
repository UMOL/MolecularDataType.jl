test_obtain_Chain(make_chain(name="C"), :name, "C")
test_obtain_Chain(make_chain(name="C"), :chain_name, "C")
test_obtain_Chain(make_chain(index=7), :index, 7)
test_obtain_Chain(make_chain(system="S"), :system_name, "S")

