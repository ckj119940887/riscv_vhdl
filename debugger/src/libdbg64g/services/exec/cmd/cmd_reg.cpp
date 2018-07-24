/*
 *  Copyright 2018 Sergey Khabarov, sergeykhbr@gmail.com
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

#include "cmd_reg.h"

namespace debugger {

CmdReg::CmdReg(ITap *tap, ISocInfo *info) 
    : ICommand ("reg", tap, info) {

    briefDescr_.make_string("Read/write register value");
    detailedDescr_.make_string(
        "Description:\n"
        "    Read or modify the specific CPU's register.\n"
        "Usage:\n"
        "    reg name\n"
        "    reg name wrvalue\n"
        "Example:\n"
        "    reg\n"
        "    reg pc\n"
        "    reg sp 0x10007fc0\n");
}

bool CmdReg::isValid(AttributeType *args) {
    if ((*args)[0u].is_equal(cmdName_.to_string()) 
     && (args->size() == 2 || args->size() == 3)) {
        return CMD_VALID;
    }
    return CMD_INVALID;
}

void CmdReg::exec(AttributeType *args, AttributeType *res) {
    if (!isValid(args)) {
        generateError(res, "Wrong argument list");
        return;
    }
    res->make_nil();

    uint64_t val;
    const char *reg_name = (*args)[1].to_string();
    uint64_t addr = info_->reg2addr(reg_name);
    if (addr == REG_ADDR_ERROR) {
        char tstr[128];
        RISCV_sprintf(tstr, sizeof(tstr), "%s not found", reg_name);
        generateError(res, tstr);
        return;
    }

    if (args->size() == 2) {
        int err = tap_->read(addr, 8, reinterpret_cast<uint8_t *>(&val));
        if (err == TAP_ERROR) {
            return;
        }
        res->make_uint64(val);
    } else {
        val = (*args)[2].to_uint64();
        tap_->write(addr, 8, reinterpret_cast<uint8_t *>(&val));
    }
}

}  // namespace debugger
