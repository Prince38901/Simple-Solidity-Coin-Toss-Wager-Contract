// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ColorRegistry {
    // Struct to hold color info
    struct Color {
        string code;      // e.g. "#FF5733" or "rgb(255,87,51)"
        address owner;    // who registered it
        uint256 timestamp; // when it was registered
    }

    // Mapping from color code to Color struct
    mapping(string => Color) private colors;

    // Array of all color codes for enumeration
    string[] private colorList;

    // Event emitted when a color is registered
    event ColorRegistered(string code, address indexed owner, uint256 timestamp);

    /// @notice Register a new color if not already taken
    /// @param _code HEX or RGB color code
    function registerColor(string memory _code) public {
        require(bytes(_code).length > 0, "Color code cannot be empty");
        require(colors[_code].owner == address(0), "Color already registered");

        colors[_code] = Color({
            code: _code,
            owner: msg.sender,
            timestamp: block.timestamp
        });

        colorList.push(_code);

        emit ColorRegistered(_code, msg.sender, block.timestamp);
    }

    /// @notice Get details of a color
    /// @param _code HEX or RGB code
    /// @return owner The address that registered the color
    /// @return timestamp The time it was registered
    function getColor(string memory _code) 
        public 
        view 
        returns (address owner, uint256 timestamp) 
    {
        Color memory c = colors[_code];
        require(c.owner != address(0), "Color not found");
        return (c.owner, c.timestamp);
    }

    /// @notice Get all registered colors
    /// @return Array of all color codes
    function getAllColors() public view returns (string[] memory) {
        return colorList;
    }
}
