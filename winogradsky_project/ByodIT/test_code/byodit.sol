pragma solidity ^0.4.2;
    // 'pragma' indique au compileur dans quelle version de Solidity ce code est écrit 
contract Byodit {

    // variables
    //// Valeur des donées en ByoditCoin
    uint public rate;
    bool private transactionOK;

    //// Colonnes
    mapping (address => uint) public dataProduction;
    mapping (address => uint) public totalDataConsumption;
    ///// dataConsumption[msg.sender][origin]
    mapping (address => mapping (address => uint)) public dataConsumption;
    ///// allowance[seller][msg.sender]
    mapping (address => mapping (address => uint)) public allowance;

    //// list of sellers
    struct Seller {
        uint index;
      }
    mapping (address => Seller) private sellersList;
    address[] public sellerIndex;

    // constructeur
    /// 
    function Byodit() {
        rate = 1; // (=> 1Go = 1 ByoditCoin)
    }

    // définition des events (pour affichage à partir de la lecture des logs)
    event Produce(address from, uint data);
    event Consume(address from, address origin, uint data);
    event Buy(address from, address to, uint data);

    // fonction permettant de payer en ByoditCoin
	function sendCoin(address coinContractAddress,
	                  address dataBuyer,
	                  address dataSeller,
	                  uint amount)
	                  returns (bool success){
		token m = token(coinContractAddress);
		success = m.transferFrom(dataBuyer, dataSeller, amount);
		return success;
	}


    function nbSellers() public constant returns (uint) {
        return sellerIndex.length;
    }


    function isSeller(address sellerAddress) public constant returns(bool isSeller) {
        if(sellerIndex.length == 0) return false;
        return (sellerIndex[sellersList[sellerAddress].index] == sellerAddress);
    }


    function addSeller(address sellerAddress) private returns (uint nbSellers) {
        if(!isSeller(sellerAddress)) {
            sellersList[sellerAddress].index = sellerIndex.push(sellerAddress)-1;
        }
    }


    // fonction permettant de mettre à jour la donnée produite et
    // donc dispo à la vente
    // seul le propriétaire du compte peut mettre à jour sa prod
    function setProduction(uint data) returns (uint dataProd) {
        dataProduction[msg.sender] += data;

        //event
        Produce(msg.sender, data);

        return dataProduction[msg.sender];
    }

    // fonction permettant de consommer de la donée
    // seul le propriétaire du compte peut mettre à jour sa prod
    function consumeData (address origin, uint data) returns (uint DataCons) {
        // dans le cas où on achète de la donnée d'un autre noeud
        if ( origin != msg.sender &&
             data > allowance[origin][msg.sender] ) throw;
        else allowance[origin][msg.sender]    -= data;

        dataConsumption[msg.sender][origin] += data;
        totalDataConsumption[msg.sender]    += data;

        // event
        Consume(msg.sender, origin, data);

        return totalDataConsumption[msg.sender];
    }

    // fonction permettant la vente de donées
    function buyData(address coinContractAddress, address seller, uint data) returns (bool transactionOK) {

        // on verifie d'abord que l'acheteur n'achète pas ses propres données
        if (msg.sender == seller) throw;

        // appel de la fonction de transfer de ByoditCoin
        // 1Go = 1ByoditCoin, pas de besoin de conversion
        transactionOK = sendCoin(coinContractAddress, msg.sender, seller, data);
        if (transactionOK != true) throw;

        // on met à jour :
        // - la liste des vendeurs
        addSeller(seller);
        // - la quantité de donnée pouvant être consommée
        allowance[seller][msg.sender] += data;

        //event
        Buy(msg.sender, seller, data);

        return transactionOK;
    }

}
