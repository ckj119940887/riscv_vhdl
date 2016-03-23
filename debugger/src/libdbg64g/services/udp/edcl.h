/**
 * @file
 * @copyright  Copyright 2016 GNSS Sensor Ltd. All right reserved.
 * @author     Sergey Khabarov - sergeykhbr@gmail.com
 * @brief      Access to a hardware via Ethernet EDCL interface implementaion.
 */

#ifndef __DEBUGGER_EDCL_H__
#define __DEBUGGER_EDCL_H__

#include "iclass.h"
#include "iservice.h"
#include "coreservices/itap.h"
#include "coreservices/iudp.h"
#include <inttypes.h>

namespace debugger {

class EdclService : public IService,
                    public ITap {
public:
    EdclService(const char *name);

    /** IService interface */
    virtual void postinitService();

    /** ITap interface */
    virtual int read(uint64_t addr, int bytes, uint8_t *obuf);
    virtual int write(uint64_t addr, int bytes, uint8_t *ibuf);

private:
    int write16(uint8_t *buf, int off, uint16_t v);
    int write32(uint8_t *buf, int off, uint32_t v);
    uint32_t read32(uint8_t *buf);

private:
    /** This is limitation of the MAC fifo. Protocol allows increase the
     * following value up to 242 words. */
    static const int EDCL_PAYLOAD_MAX_WORDS32 = 8;
    static const int EDCL_PAYLOAD_MAX_BYTES  = 4*EDCL_PAYLOAD_MAX_WORDS32;

    uint8_t tx_buf_[4096];
    uint8_t rx_buf_[4096];
    IUdp *itransport_;
    AttributeType transport_;
    AttributeType seq_cnt_;
};

class EdclServiceClass : public IClass {
public:
    EdclServiceClass() : IClass("EdclServiceClass") {}

    virtual IService *createService(const char *obj_name) { 
        EdclService *serv = new EdclService(obj_name);
        AttributeType item(static_cast<IService *>(serv));
        listInstances_.add_to_list(&item);
        return serv;
    }
};

}  // namespace debugger

#endif  // __DEBUGGER_EDCL_H__