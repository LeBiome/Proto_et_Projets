---
title: Practice pour débutant
description: Découvrir et pratiquer le monitoring de sol - Tuto
image_url: https://framapic.org/DpALMj4XtTCp/wTYgiZa5Xpcg.jpg
---


# [[#BretagneLabTour](https://hackpad.com/ep/search/?q=%23BretagneLabTour&via=tPQn73EJTY4)] Atelier de construction d'un kit de mesure / suivi d'humidité d'une bouture aromatique

Pour le #BretagneLabTour, le [LabFab](http://labfab.fr) de Rennes a accueilli le 16 octobre 2015 un atelier dédié à la fabrication d'un kit de mesure de température et humidité sur une bouture de plante aromatique.

*   Ce projet devrait intéresser [Nomade des Mers ](http://nomadedesmers.org/)pour leur culture potagère sur un bateau. Pour rappel, le [#BretagneLabTour](https://hackpad.com/ep/search/?q=%23BretagneLabTour&via=z8dtT2HL8ik) est passé par Concarneau le vendredi 9 octobre (cf. ce [PAD](https://hackpad.com/BretagneLabTour-3me-tape-Concarneau-Explore-9-octobre-qfpS66vvoQx)).
*

![](https://framapic.org/DpALMj4XtTCp/wTYgiZa5Xpcg.jpg)

L'atelier s'est appuyé sur une carte électronique [Particle.io](https://www.particle.io), sous la conduite de [Thomas](https://fr.linkedin.com/in/thomasmeghe) (LabFab).

![](https://hackpad-attachments.s3.amazonaws.com/hackpad.com_z8dtT2HL8ik_p.62368_1444988216634_IMG_3787.JPG)

**<u>Participants</u>**

*   Thomas Meghe, LabFab
*   Flavie Ferchaud, Rennes 2
*   Xavier Coadic, Le Biome
*   Marie Baron, MakerTour
*   Nicolas Loubet, Cellabz

**<u>Matériel</u>**

*   1 pot pour plante ou plaque de bouturage
*   1 carte Photon (19 dollars) 3 volt
*   7 fils électriques pour arduino
*   1 connectique (4 câbles)
*   1 capteur d'humidité arduino ou '[moisture sensor](http://wiki.iteadstudio.com/Moisture_Sensor)'
*   1 bread bord pour les branchements
*   1 résistance 10k Ohm
*   1  capteur DHT11 compatible module de capteur d'humidité numérique de la température  
*   1 câble USB
*   Logiciel arduino 
*   Node JS pour faire des serveurs internet en local (gratuit)

![](https://hackpad-attachments.s3.amazonaws.com/hackpad.com_z8dtT2HL8ik_p.62368_1444988337971_materiel.jpg)

![](https://hackpad-attachments.s3.amazonaws.com/hackpad.com_z8dtT2HL8ik_p.266912_1444988436963_rennes blt2.jpg)

Vous avez également possibilité de rajouter des capteurs 3 volts pour mesurer / suivre : la qualité air, la luminosité, la concentration en particules fines, le mouvement. 

**Étape 1**

*   Installation des pré-requis (NodeJS & Driver si Windows)

*   Se rendre sur [](https://docs.particle.io/guide/getting-started/connect/photon/)https://docs.particle.io/guide/getting-started/connect/photon/ puis consulter l'étape relative à votre système d'exploitation afin d'initialiser le Particle Photon :

*   Installation de NodeJS : se rendre sur [](https://nodejs.org)https://nodejs.org puis télécharger et installer le logiciel correspondant à votre OS

*   Redémarrer son ordinateur (utilisateurs Windows)

![](https://hackpad-attachments.s3.amazonaws.com/hackpad.com_z8dtT2HL8ik_p.266912_1444985790662_node js blt.PNG)

*   Installer le driver de Particle [Download it here.](https://s3.amazonaws.com/spark-website/Particle.zip) (Windows)

*   Dézipper le fichier

*   Aller dans le gestionnaire de périphérique puis sélectionner la carte particle, clique droit mettre à jour et sélectionner photon.cat

*   Ouvrir un invite de commande sur windows (en mode administrateur) puis taper la ligne suivante : **npm install -g particle-cli**

![](https://hackpad-attachments.s3.amazonaws.com/hackpad.com_z8dtT2HL8ik_p.266912_1444987407793_blt rennes 3.PNG)

*    Taper la nouvelle commande après chargement " particule setup" puis Enter

*   Une fois les lignes de commande chargée, entrer les lignes de codes suivantes dans la carte connectée à votre ordinateur par le câble USB

NB : l'installation de particle-cli sur Win 8 pose souci (prob. nodejs serial package deprecated).

**Étape 2**

_Décrire ci après le montage de la carte, les branchements, la résistance_

Aperçu du montage final (récupération de données d'humidité d'un pot de thym citron).

![](https://hackpad-attachments.s3.amazonaws.com/hackpad.com_z8dtT2HL8ik_p.266912_1444990261998_blt rennes5.jpg)

**Étape 3**

_Décrire ci après le démarrage des mesures sur le plant d'aromate_

## Licence d'utilisation

![](https://hackpad-attachments.s3.amazonaws.com/hackpad.com_CJCut6qvqG0_p.266912_1444998003182_cc-by-sa.png)

Le [Tour de Bretagne des lieux d](https://hackpad.com/CJCut6qvqG0)['](https://hackpad.com/CJCut6qvqG0)[innovation ouverte et des communautés](https://hackpad.com/CJCut6qvqG0)[é](https://hackpad.com/CJCut6qvqG0)[collaboratives](https://hackpad.com/CJCut6qvqG0) est mis à disposition sous la [licence CC-BY-SA](http://creativecommons.org/licenses/by-sa/4.0/) 4.0 ([](https://hackpad.com/ep/group/F3B8qERPRcQ))[https://hackpad.com/ep/group/F3B8qERPRcQ](https://hackpad.com/ep/group/F3B8qERPRcQ)). 
