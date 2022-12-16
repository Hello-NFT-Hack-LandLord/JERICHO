library abiNft

dep nftStruct;

use nftStruct::nftContent;

abi abiNftFunctions
{
    /*
    Initialize the Smart Contract
  
   # Arguments
   None
  
   # Error cases
   If the constructor is called more than once
  */
    #[storage(read, write)]
    fn constructor();

  /* Create a new NFT
  
    # Arguments
    - Takes 0 arguments.

    # Error cases

  */
    #[storage(read, write)]
    fn setNewNft();

  /* Return the identifier of an specific NFT by ID

    # Arguments
    - 'localId' - Identifier used to specify an NFT (0 <= localId <= NftCount)

    # Error cases
    - When the localId is greater to the NftCount
  */
    #[storage(read)]
    fn getNftById(localId: u64);
}
