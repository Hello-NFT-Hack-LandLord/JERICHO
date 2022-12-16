//f22053e8e2e58cc9493dfb4f0c84fb35ab5d3b207e8b393c36382edbfaaafa60
//0xc851f0f2dfe7e2e107a196abb72d329c300dba814aba581ef30c606d5dd9fb6e
contract;

use nftInterface::{nftAbi, nftContent};
use std::storage::StorageVec;

storage {
    linkIdToNftStruct: StorageMap<u64, nftContent> = StorageMap {}, //Empieza en 1.
    vectorStructNfts: StorageVec<nftContent> = StorageVec {}, //El vector empieza en el indice 1.
}

impl nftAbi for Contract {
  //Inicializa el contrato.
    #[storage(read, write)]
    fn constructor() {}

  //Crea un nuevo NFT.
    #[storage(read, write)]
    fn setNewNft(
        interactionTypeParam: u64,
        globalIdParam: u64,
        localIdParam: u64,
    ) {
        let newNft = nftContent {
            interactionType: interactionTypeParam,
            globalId: globalIdParam,
            localId: localIdParam,
        };

        let mut length = storage.vectorStructNfts.len();
        length += 1;

        storage.vectorStructNfts.insert(length, newNft);

        storage.linkIdToNftStruct.insert(length, newNft);
    }

  //Devuelve el struct del contenido del NFT.
    #[storage(read)]
    fn getNftById(generalNft: u64) -> nftContent {
        let returningNftStruct = storage.linkIdToNftStruct.get(generalNft);
        return returningNftStruct;
    }
}

/*
us std::{
    auth::msg_sender,
    storage::StorageVec,
}
*/
