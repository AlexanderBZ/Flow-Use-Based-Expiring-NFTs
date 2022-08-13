import ExpiringNFT from 0xf8d6e0586b0a20c7

transaction {
    prepare(auth: AuthAccount) {
        let collectionReference = acct.borrow<&ExpiringNFT.Collection>(from: /storage/CryptoRaptorsCollection) ?? panic("Collection couldn't be found")

        let collectionReference.deposit(token: <- ExpiringNFT.mintNFT())
    }

    execute {
        log("NFT was succesfully minted")
    }
}