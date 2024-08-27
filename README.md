# Circom-Gates
In this project, you'll code a circuit using gates such as AND, NOT, and OR in the Circom language. You'll then deploy a verifier to a testnet, such as [Amoy](https://amoy.polygonscan.com/), and generate a proof for specific inputs. Finally, you'll verify this proof using the deployed verifier.

## Discriptiom

This project provides resources to get started with Circom for coding zkSNARK circuits. Here’s a breakdown of the gates and their logic used in the program:

1. AND Gate (andGate): Takes two inputs (A, B) and returns an output (X):
   - \( A \) and \( B \) ==> \( X \)
   - \( 1 \) and \( 0 \) ==> \( 0 \)
   - \( 1 \) and \( 1 \) ==> \( 1 \)
   - \( 0 \) and \( 0 \) ==> \( 0 \)
   - \( 0 \) and \( 1 \) ==> \( 0 \)

2. NOT Gate (notGate): Takes one input (A) and returns an output (X):
   - \( A \) ==> \( X \)
   - \( 1 \) ==> \( 0 \)
   - \( 0 \) ==> \( 1 \)

3. OR Gate (orGate): Takes two inputs (A, B) and returns an output (X):
   - \( A \) or \( B \) ==> \( X \)
   - \( 1 \) or \( 0 \) ==> \( 1 \)
   - \( 1 \) or \( 1 \) ==> \( 1 \)
   - \( 0 \) or \( 0 \) ==> \( 0 \)
   - \( 0 \) or \( 1 \) ==> \( 1 \)

These gates will be used in the project, which includes using pre-made gate templates from [circomlib](https://github.com/iden3/circomlib). The circuit diagram can be referenced [here](https://authoring.metacrafters.io/assets/cms/Assessment_b05f6ed658.png?updated_at=2023-02-24T00:00:37.278Z).

## Getting started

To get started, follow these steps:

1. Set Up Your IDE:
   - You can use an offline IDE like [VSCode](https://code.visualstudio.com/download) or online IDEs like [Remix](https://remix.ethereum.org/) or [Gitpod](https://gitpod.io/).

2. Install Necessary Dependencies:
   - Hardhat: [Install Hardhat](https://hardhat.org/)
   - Node.js: [Install Node.js](https://nodejs.org/en/download/current)

3. Design Your Circuit:
   - Use gate templates provided [here](https://github.com/iden3/circomlib) to create your circuit.

Installing

Here’s how to set up and run your project:

1. Install Project Template Circuit Files:
   - Clone the project repository or start with a fresh template from [TEMPLATE](https://github.com/gmchad/zardkat).

2. Secure Your Private Keys:
   - Add an .env file for secure storage of your private keys. Install dotenv by following the instructions [here](https://www.npmjs.com/package/dotenv).

3. Configure Testnet Details:
   - Set up your testnet details in circuits.config.json. Refer to the [Hardhat Network](https://hardhat.org/tutorial/deploying-to-a-live-network) for guidance.

4. Obtain Test MATIC:
   - Ensure your wallet has test MATIC. If not, get some for free from the [Faucet](https://faucet.polygon.technology/).

5. Update Environment Configuration:
   - Paste your PRIVATE_KEY into the .env.example file as PRIVATE_KEY='Your Key Here'.
   - Rename .env.example to .env.

6. Run the Program:
   - With all configurations set, you’re ready to run your program.

## Executing

Here’s a step-by-step guide to compile, deploy, and verify your zkSNARK circuit:

1. Install Dependencies:
   - Run:
```
     npm i
     
```
2. Compile the Circuit:
Compile the circuit with
```
     npx hardhat circom

```

This will generate the out directory with circuit intermediaries and the MultiplierVerifier.sol contract.

3. Provide Input Data:
   - Update input.json with your input values for the AND gate:
         {
       "a": "0",
       "b": "1"
     }
   This data will be used to generate the proof.

4. Deploy Verifier and Verify Proof:
   - Deploy the verifier to the Amoy testnet and verify the proof with:
 ```
     npx hardhat run scripts/deploy.ts --network amoy
 ```

This script will:
1. Deploy MultiplierVerifier.sol to the Amoy testnet
2. Generate a proof with generateProof() using inputs (0,1).
3. Generate calldata with generateCallData().
4. Verify the proof with verifyProof() on the deployed verifier contract.

5. Check Verifier Contract:
 Verify your contract creation on [Amoy Testnet Polyscan](https://amoy.polygonscan.com/) by pasting your contract ID.
  
### Directory Structure
**circuits**
```
├── multiplier
│   ├── circuit.circom
│   ├── input.json
│   └── out
│       ├── circuit.wasm
│       ├── multiplier.r1cs
│       ├── multiplier.vkey
│       └── multiplier.zkey
├── new-circuit
└── powersOfTau28_hez_final_12.ptau

```
Each new circuit lives in it's own directory. At the top level of each circuit directory lives the circom circuit and input to the circuit.
The **out** directory will be autogenerated and store the compiled outputs, keys, and proofs. The Powers of Tau file comes from the Polygon Hermez ceremony, which saves time by not needing a new ceremony. 


**contracts**
```
contracts
└── MultiplierVerifier.sol
```
Verifier contracts are autogenerated and prefixed by the circuit name, in this example **Multiplier**
## Help
* You can just get output simply by installing all libraries and coding an circuit using the guide and instruction given
in the project or in circolibraries
* even after That You Encounter some issues dont Hesitate To Contact Me On EMAIL:
```
afsalmy04@gmail.com
```

## Authors

Contributors names and contact info:

Afsal
[@afsal](afsalmy04@gmail.com)


## License

This project is licensed under the [AKITO] License - see the LICENSE.md file for details
