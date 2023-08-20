#include "gcpph.hpp"

int main () {

  // cout << "\n===================================================================================" << endl;
  // cout << "This is MicroQiskitCpp: an extremely minimal version of Qiskit, implemented in C++." << endl;
  // cout << "\nFor the standard version of Qiskit, see qiskit.org. To run your quantum programs\non real quantum hardware, see quantum-computing.ibm.com." << endl;
  // cout << "===================================================================================\n" << endl;


  std::cout << "\n**We start with a Bell pair: the standard 'Hello World' of quantum computing.**" << std::endl;

  // initialize a circuit with two qubits 
  QuantumCircuit qc;
  qc.set_registers(2);  
  // add the gates to create a Bell pair
  qc.h(0);
  qc.cx(0,1);

  // initialize another circuit with two qubits and two output bits
  QuantumCircuit meas;
  meas.set_registers(2,2);
  // add the measurements
  meas.measure(0,0);
  meas.measure(1,1);

  // add the measurement circuit to the end of the original circuit
  qc.add(meas);

  // simulate the circuit and get a result
  Simulator result (qc);

  // we can use the result to see what the Qiskit syntax would be
  std::cout << "\nThis circuit could be expressed in Qiskit as:" << std::endl;
  std::cout << result.get_qiskit() << std::endl;
  
  // we can use the result to see also what the QASM syntax would be
  std::cout << "\nThis circuit could be expressed in Qasm as:" << std::endl;
  std::cout << result.get_qasm() << std::endl;

  // and also to get the counts
  std::map<std::string, int> counts = result.get_counts();

  // let's print this to screen
  std::cout << "The counts are:" << std::endl;
  for(std::map<std::string, int>::iterator iter = counts.begin(); iter != counts.end(); ++iter){

    std::string bitstring = iter->first;
    int count = iter->second;
  
    std::cout << "Counts for "+bitstring+" = " << count << "\n";

  }

  std::cout << "\n**Now let's try single qubit rotations and a statevector output.**" << std::endl;

  // initialize a circuit with two qubits
  QuantumCircuit qc2;
  qc2.set_registers(2);  
  // add some single qubit gates
  qc2.rx(M_PI/4,0);
  qc2.ry(M_PI/2,1);
  qc2.rz(M_PI/8,0);

  // no measurements needed for a statevector output

  // simulate the circuit and get a result
  Simulator result2 (qc2);

   // we can use the result to see what the Qiskit syntax would be
  std::cout << "\nThis circuit could be expressed in Qiskit as:" << std::endl;
  std::cout << result2.get_qiskit() << std::endl;

  std::cout << "Note: It could also be expressed more efficiently in Qiskit, but MicroQiskit compiles everything down to x, rx, h and cx." << std::endl;

  // and also get the statevector
  std::vector<std::complex<double>> ket = result2.get_statevector();

  // let's print this to screen
  std::cout << "\nThe statevector is:" << std::endl;
  for (int j=0; j<ket.size(); j++){
    std::cout << "(" << real(ket[j]) << ") + (" << imag(ket[j]) << ")" <<  "*i" << std::endl;
  }

  std::cout << "\n**Finally, a three qubit GHZ with a memory output.**" << std::endl;

  // the circuit
  QuantumCircuit qc3;
  qc3.set_registers(3,3);  
  qc3.h(1);
  qc3.cx(1,0);
  qc3.cx(1,2);
  qc3.measure(0,0);
  qc3.measure(1,1);
  qc3.measure(2,2);

  // simulating and getting the result for 10 shots
  Simulator result3 (qc3,10);
  std::vector<std::string> memory = result3.get_memory();

  std::cout << "\nThis circuit could be expressed in Qiskit as:" << std::endl;
  std::cout << result3.get_qiskit() << std::endl;

  // print to screen
  std::cout << "The results are:" << std::endl;
  for (int j=0; j<memory.size(); j++){
    std::cout << "Result for sample " << j+1 << " = " << memory[j] << std::endl;
  }

  return 0;
}
