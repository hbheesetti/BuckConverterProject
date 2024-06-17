from PyLTSpice import SimRunner, SpiceEditor, LTspice

runner = SimRunner(output_folder='./temp_batch3', simulator=LTspice) 


netlist = SpiceEditor("TraditionalBuckConverter.net") 

netlist.set_parameters(res=0, cap=100e-6)

netlist.add_instructions(
        "; Simulation settings",
)

runner.run(netlist)