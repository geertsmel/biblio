function rechercher(){
    let table = document.querySelector("table").children[1];
    for (let i = 0; i < table.children.length; i++) {
        const element = table.children[i];
        element.hidden = false;
        if(!element.children[0].textContent.includes(mot.value) && !element.children[1].textContent.includes(mot.value) && !element.children[2].textContent.includes(mot.value) && !element.children[3].textContent.includes(mot.value) ){
            element.hidden = true;
        }
        console.log(element.children[0].textContent.includes(mot.value));
        
    }
    console.log(table);
}