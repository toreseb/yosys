#include "kernel/yosys.h"
#include "kernel/sigtools.h"

USING_YOSYS_NAMESPACE
PRIVATE_NAMESPACE_BEGIN

struct Test1Pass : public Pass {
    Test1Pass() : Pass("test1", "creating the absval module") {}
    void execute(std::vector<std::string>, RTLIL::Design *design) override
    {
        if (design->has("\\absval") != 0)
            log_error("A module with the name absval already exists!\n");
        RTLIL::Module *module = design->addModule("\\absval");
        log("name of this module: %s\n",module);

        RTLIL::Wire *a = module->addWire("\\a",4);
        a->port_input = true;
        a->port_id = 1;
        
        RTLIL::Wire *y = module->addWire("\\y",4);
        y->port_output = true;
        a->port_id = 2;
        
        RTLIL:Wire *a_inv = module->addWire(NEW_ID,4);
        module->addNeg(NEW_ID, a, a_inv, true);
        module->addMux(NEW_ID, a, a_inv, RTLIL::SigSpec(a,3),y);

        module->fixup_ports();
    }
} Test1Pass;

struct CustomPass1 : public ScriptPass {
    CustomPass1() : ScriptPass("Custom1", "Testing the pass functions") { }
    
    void execute(std::vector<std::string> args, RTLIL::Design *design) override
    {
        string run_from, run_to;
        run_script(design,run_from,run_to);
    }

    void script() override
    {
        run("opt");
    }

    
} CustomPass1;


PRIVATE_NAMESPACE_END