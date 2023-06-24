const background = document.querySelector("#container")
const acender = document.querySelector("#lampada")
const lampadaLigada = document.querySelector("#title")
const imageLampada = document.querySelector("#image-lampada")
const botao = document.querySelector("#bt-lampada")

botao.addEventListener("click",() => {
    if(botao.innerHTML === "Ligar"){
        lampadaLigada.innerHTML = "Ligada";
        imageLampada.src = "./lampada_ligada.png";
        background.style.backgroundColor = "yellow"
        botao.innerHTML = "Desligar"
        
    } else {
        lampadaLigada.innerHTML = "Desligada";
        imageLampada.src = "./image-lampada-apagada-semfundo.png";
        background.style.backgroundColor = "white"
        botao.innerHTML = "Ligar"
    }
})