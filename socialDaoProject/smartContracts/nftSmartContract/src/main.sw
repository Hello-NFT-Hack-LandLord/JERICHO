contract;

dep nftStruct;
dep abiNft;

use nftStruct::nftContent;
use abiNft::abiNftFunctions;
us std::{
    auth::msg_sender,
    storage::StorageVec,
}

storage
{
    // The initialzation state of the contract
    state: State = State::NotInitialized;

    // 
    linkIdToStruct: StorageMap<u64, nftContent> = StorageMap {},
    
    // 
    vectorStructNfts: Vec<nftContent>
}

impl abiNftFunctions for Contract 
{
    //"FUNCIONES"///
    #[storage(read, write)]
    fn constructor() {
        require(storage.state == State::NotInitialized, InitializationError::CannotReinitialize);
    }
}
