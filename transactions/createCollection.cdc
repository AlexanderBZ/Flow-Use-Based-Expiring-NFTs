import ExpiringNFT from 0xf8d6e0586b0a20c7

transaction {
    prepare(acct: AuthAccount) {
        acct.save(<- ExpiringNFT.createCollection(), to: /storage/CryptoRaptorsCollection)

        acct.link<&ExpiringNFT.Collection{ExpiringNFT.CollectionPublic}>(/public/CryptoRaptorsCollection, target: /storage/CryptoRaptorsCollection)
    }

    execute {
        log("Collection created")
    }
}