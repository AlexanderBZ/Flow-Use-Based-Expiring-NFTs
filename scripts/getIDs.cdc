import ExpiringNFT from 0xf8d6e0586b0a20c7

pub fun main(acct: Address): [UInt64] {
    let publicRef = getAccount(acct).getCapability(/public/CryptoRaptorsCollection).borrow<&ExpiringNFT.Collection{ExpiringNFT.CollectionPublic}>() 
                ?? panic ("Oof ouch owie this account doesn't have a collection there")

    return publicRef.getIDs()
}