pragma solidity ^0.8.0;

contract ModelVerification {
    struct Model {
        string name;
        string version;
        bytes32 hashOfModel;
        address owner;
        uint256 timestamp;
    }

    mapping(bytes32 => Model) public models;

    event ModelAdded(bytes32 indexed modelId, string name, string version, address owner);

    function addModel(string memory _name, string memory _version, bytes32 _hashOfModel) public {
        bytes32 modelId = keccak256(abi.encodePacked(_name, _version, _hashOfModel));
        require(models[modelId].owner == address(0), "Model already exists");

        Model memory newModel = Model({
            name: _name,
            version: _version,
            hashOfModel: _hashOfModel,
            owner: msg.sender,
            timestamp: block.timestamp
        });

        models[modelId] = newModel;
        emit ModelAdded(modelId, _name, _version, msg.sender);
    }

    function getModel(bytes32 _modelId) public view returns (string memory, string memory, bytes32, address, uint256) {
        Model memory model = models[_modelId];
        return (model.name, model.version, model.hashOfModel, model.owner, model.timestamp);
    }
}