import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

    connect() {

        // LES VARIABLE

        const key = document.getElementsByTagName("main");
        const element = this.element
        let count = 1;



        // ECOUTE D'EVENEMENT
        key[0].addEventListener('keypress', open_close_invetory);
        


        // VERIFIER L'ETAT DE L'INEVENTAIRE APRES CHAQUE ACTUALISATION

        if(localStorage.getItem('block_or_hidden')) {
            count = localStorage.getItem('block_or_hidden')

            if(localStorage.getItem('block_or_hidden') % 2 == 0)
                element.classList.remove("hidden")
            else
                element.classList.add("hidden")
        }



        // AFFICHER OU CACHER L'INVENTAIRE QUAND ON APPUIT SUR "ESPACE"

        function open_close_invetory(e) {
            if (e.keyCode == 32) {
                count++
                console.log(count);
                
                if (count % 2 == 0) {
                    element.classList.remove("hidden")
                } else {
                    element.classList.add("hidden");
                }
                localStorage.setItem('block_or_hidden', count)
            }
        }
    }
}