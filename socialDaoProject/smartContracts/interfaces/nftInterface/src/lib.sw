library nftInterface;

pub struct nftContent {
    interactionType: u64,
    globalId: u64,
    localId: u64,
    stringContent: str[280],
}

abi nftAbi {
  //Inicializa el contrato.
    #[storage(read, write)]
    fn constructor();

  //Crea un nuevo NFT.
    #[storage(read, write)]
    fn setNewNft(interactionType: u64, globalId: u64, localId: u64, stringContent: str[280]);

  //Devuelve el struct del contenido del NFT.
    #[storage(read)]
    fn getNftById(localId: u64) -> nftContent;
}
