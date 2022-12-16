contract;

use mainInterface::mainAbi;
use nftInterface::nftContent;
use publicationInterface::{publicationAbi, publicationContent};

storage {
    nftsMintedQuantity: u64 = 0,
    publicationsQuantity: u64 = 0,
    proposalsQuantity: u64 = 0,
    linkNftIdToProposal: StorageMap<u64, nftContent> = StorageMap {},
    //"FALTA EL MAPSTORAGE DE ID A PROPUESTA"///
}

impl mainAbi for Contract 
{
//Inicializa el contrato.
    #[storage(read, write)]
    fn constructor() 
    {
        storage.nftsMintedQuantity = 0;
        storage.publicationsQuantity = 0;
        storage.proposalsQuantity = 0;
    }

  //****DEBE RECIBIR EL STRING PARA SETEARLO EN EL CONTENIDO DEL NFT.
    #[storage(read, write)]
    fn setNewPublicationWithOutProposal(stringContent: str[280]) 
    {
      let publicationContract = abi(publicationAbi, ContractId::from(0x852a59e20274388603ac44b2a9d4659f2380c839e254f9696d1e2d1da277d131).into());
      publicationContract.setNewPublication(1, stringContent);
      
      //FALTA AGREGARLO A VEC DE MAIN DE PUBLICATION.
        storage.publicationsQuantity += 1;
        storage.nftsMintedQuantity += 1;
    }

  //****DEBE RECIBIR EL STRING PARA SETEARLO EN EL CONTENIDO DEL NFT.
    #[storage(read, write)]
    fn setNewPublicationWithProposal(stringContent: str[280]) {
      let publicationContract = abi(publicationAbi, ContractId::from(0x852a59e20274388603ac44b2a9d4659f2380c839e254f9696d1e2d1da277d131).into());
      publicationContract.setNewPublication(0, stringContent);

    //FALTA AGREGARLO A VEC DE MAIN DE PUBLICATION.
        storage.publicationsQuantity += 1;
        storage.nftsMintedQuantity += 1;
    }

    //****DEBE RECIBIR EL STRING PARA SETEARLO EN EL CONTENIDO DEL NFT.
    #[storage(read, write)]
    fn commentWithOutProposal(globalIdParam: u64) {
      let publicationContract = abi(publicationAbi, ContractId::from(0x6d1eb6a8dea1084d986bca71876c02039f0133e1ec6f08ffe13828f83ec8577c).into());
        //publicationContract.setNewPublication(1);

        storage.nftsMintedQuantity += 1;
    }

  //****DEBE RECIBIR EL STRING PARA SETEARLO EN EL CONTENIDO DEL NFT.
    #[storage(read, write)]
    fn commentWithProposal(globalIdParam: u64) {
        storage.nftsMintedQuantity += 1;
    }

  //Devuelve la cantidad total de publicaciones.
    #[storage(read)]
    fn getPublicationsQuantity() -> u64 {
        return storage.publicationsQuantity;
    }

  
  //Devuelve una publicacion en especifico en base a un globalId.
  #[storage(read)]
  fn getPublicationById(globalIdParam: u64) -> publicationContent
  {
    let publicationContract = abi(publicationAbi, ContractId::from(0x6d1eb6a8dea1084d986bca71876c02039f0133e1ec6f08ffe13828f83ec8577c).into());
    let returnedPublication = publicationContract.getPublicationById(globalIdParam);
    return returnedPublication;
  }
  //"FALTAN LAS FUNCIONES PARA EL SINGLENFT Y LAS PROPUESTAS"///
}
