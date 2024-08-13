# Decentralized Model Verification System

## Overview

This project implements a blockchain-based system for verifying the integrity and provenance of machine learning models. It's designed to demonstrate the integration of blockchain technology with machine learning processes, particularly focusing on model verification and tracking.

## Components

1. Smart Contract (Solidity): Manages the storage and retrieval of model metadata on the blockchain.
2. Python Scripts: 
   - ML model creation and training
   - Interaction with the blockchain (deploying contracts, adding models, retrieving model info)
3. Local Blockchain: Ganache for development and testing

## Prerequisites

- Python 3.7+
- Node.js and npm
- Ganache
- Truffle Suite
- Web3.py

## Setup Instructions

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/decentralized-model-verification.git
   cd decentralized-model-verification
   ```

2. Install Python dependencies:
   ```
   pip install -r requirements.txt
   ```

3. Install Truffle and Ganache:
   ```
   npm install -g truffle
   npm install -g ganache-cli
   ```

4. Start your local blockchain with Ganache:
   ```
   ganache-cli
   ```

5. Compile and deploy the smart contract:
   ```
   truffle compile
   truffle migrate
   ```

6. Run the Python script to create and verify a model:
   ```
   python src/main.py
   ```

## Project Structure

```
decentralized-model-verification/
│
├── contracts/
│   └── ModelVerification.sol
│
├── migrations/
│   └── 1_initial_migration.js
│
├── src/
│   ├── main.py
│   ├── ml_model.py
│   └── blockchain_interaction.py
│
├── test/
│   └── test_model_verification.js
│
├── README.md
├── requirements.txt
└── truffle-config.js
```

## Usage

1. Create and train a simple ML model using `ml_model.py`.
2. Use `blockchain_interaction.py` to interact with the smart contract:
   - Deploy the contract
   - Add a new model to the blockchain
   - Retrieve model information

## Contributing

We welcome contributions! Please see our CONTRIBUTING.md file for details on how to submit pull requests.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Agregar Technologies for inspiration
- The Ethereum and Truffle communities for their excellent documentation and tools