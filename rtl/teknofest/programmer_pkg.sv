package programmer_pkg;
   typedef enum logic [2:0] {
      SequenceWait,
      SequenceReceive,
      SequenceCheck,
      SequenceLengthCalc,
      SequenceProgram,
      SequenceFinish
   } state_prog_t;
endpackage : programmer_pkg

import programmer_pkg::*;
