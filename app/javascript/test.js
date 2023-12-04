//CIBLEGE DES ELEMENTS

const key = document.getElementsByClassName("container");
const inventory = document.getElementById("inventory");



//LES ACTIONS

key[0].addEventListener('keypress', open_close_invetory);



//OUVRIRE ET FERMER L'INVETAIRE (button utiliser "espace")
let count = 1;
function open_close_invetory(e) {
    if (e.keyCode == 32)
        if (count % 2 == 0) 
            inventory.classList.remove("hidden")
        else 
            inventory.classList.add("hidden");
    count++;
}

