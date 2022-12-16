contract;

dep nftStruct;
dep abiNft;
dep errorEvents;

use nftStruct::nftContent;

use abiNft::{
    State,
    abiNftFunctions
}

use errorEvents::*;

use std::{
    auth::msg_sender,
    storage::StorageVec,
}

storage
{
    // The initialzation state of the contract
    state: State = State::NotInitialized;

    // Identifier of an NftId to its structure of information
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
