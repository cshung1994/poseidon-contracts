pragma solidity >=0.5.0;

interface Compliance {
    /**
     *  @dev Checks if a transfer can occur between the from/to addresses.
     *
     *  Both addresses must be whitelisted, unfrozen, and pass all compliance rule checks.
     *  THROWS when the transfer should fail.
     *  @param initiator The address initiating the transfer.
     *  @param from The address of the sender.
     *  @param to The address of the receiver.
     *  @param tokens The number of tokens being transferred.
     *  @return If a transfer can occur between the from/to addresses.
     */
    function canTransfer(address initiator, address from, address to, uint256 tokens) external returns (bool);
}
