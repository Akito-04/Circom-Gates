pragma circom 2.0.0;

/*Circuit Contains Three Gates : AND Gate, NOT Gate and OR Gate*/  

template Multiplier2 () {  

   // signals to AND & NOT Gates
      signal input a;
      signal input b;


  //signal To Input Of OR Gate
      signal x;
      signal y;


// Signal from Output Of OR Gate
      signal output q;

      component andGate = AND();
      component notGate = NOT();
      component orGate = OR();


//input Declaration

      andGate.a <== a;
      andGate.b <== b;
      notGate.in <== b;
//Intermediate Signal Input Giving

      x <== andGate.out;
      y <== notGate.out;
  //Input for OR Gate Declaring

      orGate.a <== x;
      orGate.b <== y;
//output From OR Gate

      q <== orGate.out;

   
}
//TEMPLATE OF THE GATES : AND,NOT,OR ARE GIVEN
template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}
template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

component main = Multiplier2();
