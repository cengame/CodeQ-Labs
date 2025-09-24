OPENQASM 2.0;
include "qelib1.inc";

qreg q[2];
creg c[2];

// nos placeholders abaixo, substitua pelos valores já quantizados
// theta_A, theta_F ∈ {0, π/4, π/2, 3π/4, π}

u3(2* 3/4, 2, 8) q[0];
u3(2* 3.14, 2, 6) q[1];

// opcional: explorar correlação
cx q[0], q[1];

measure q[0] -> c[0];
measure q[1] -> c[1];
