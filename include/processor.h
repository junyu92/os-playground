#ifndef _PROCESSOR_H
#define _PROCESSOR_H

#define SCTLR_EL1_EE  (1 << 25)
#define SCTLR_EL1_EOE (1 << 24)

#define SCTLR_EL1_EE_MASK  (~(1 << 25))
#define SCTLR_EL1_EOE_MASK (~(1 << 24))

#endif
