contract ByodIT {

    Colonne[] public colonnes;
    uint public currentTime;
    uint data;

    /* Colonnes */
    struct Colonne {
        address addr;
        uint[] conso;
        uint[] prod;
        uint[] disponible;

        string nom;
        uint credit;
    }

    Usager anusager;

    /*  Initialisation */
    function ByodIT() {
        currentTime = 0;
    }   


    function () {
        bool trouve=false;

        for (uint i = 0; i < colonnes.length; ++i) {
            if(colonnes[i].addr == msg.sender){
                colonnes[i].credit = colonnes[i].credit + msg.value;
                trouve=true;
                }
        }  
        if(trouve){

        }else {
            throw;
        }

    }

    function ajoutercolonne(
        string name
        ) {
        Colonne nouvellecolonne = ancolonne;
        nouvelColonne.nom = name;
        nouvelColonne.credit = msg.value;
        nouvelColonne.addr = msg.sender;


        colonnes[colonnes.length++] = nouvelleColonne;

        // {addr: msg.sender, credit: msg.value, nom: name, conso:[0], prod: [0], disponible:[0]}
        for (uint i = 0; i < currentTime; ++i) {
            colonnes[colonnes.length].conso[i]=0;  
            colonnes[colonnes.length].prod[i]=0;
            colonnes[colonnes.length].disponible[i]=0;
          } 
    }

    function publier(uint consoActuelle, uint prodActuelle) {
        uint prodDiff = prodActuelle - consoActuelle;
        // address totem;
        bool termine;

        for (uint i = 0; i < colonnes.length; ++i) {
            if(colonnes[i].addr == msg.sender){
                colonnes[i].conso[currentTime] = consoActuelle;
                colonnes[i].prod[currentTime] = prodActuelle;

                if(prodDiff>0){
                    colonnes[i].disponible[currentTime] = prodDiff;
                } else {
                    for (uint j = 0; j < usagers.length; ++j) {
                        if(colonnes[j].disponible[currentTime-1]> 0){
                            // totem = usagers[j].addr;
                            uint dispo;

                            if (prodDiff > dispo){
                                colonnes[j].disponible[currentTime-1] = 0;
                                colonnes[j].credit +=  dispo * data;
                                colonnes[i].credit -=  dispo * data;
                                prodDiff -= dispo;
                            }else {
                                usagers[j].disponible[currentTime-1] -= prodDiff;
                                usagers[j].credit +=  prodDiff * data;
                                usagers[i].credit -=  prodDiff * data;

                                termine = true;
                                return;
                            }
                        }
                    }
                    if(termine){

                    }else{
                        /*Partager hors totems*/
                    }

                }
            }
        } 
    }

    function nextTime() {
        currentTime++; 
    }

}
