function acessarAPI(url) {
    let request = new XMLHttpRequest();
    request.open("POST", url, false);
    request.send();
    return request.responseText;
}

function carregarDadosAPI() {
    let dados = acessarAPI(
        "http://localhost/web-manha/api-agencia/view/noticia/listar.php");
    let noticias = JSON.parse(dados);
    console.log(noticias);

    divDados = '';
    noticias.forEach(e => {
        data = new Date(e.horario);
        divDados += '<div class="box_noticia">';
        divDados += '<h5>'+e.fonte+'</h5>';
        divDados += '<h3><a href="'+e.link+'" target="_blank">'+e.titulo+'</a></h3>';
        divDados += '<p>'+e.texto+'</p>';
        divDados += '<p>'+data.toLocaleString("pt-br")+'</p>';
        divDados += '</div>';
    }); // fim do vagas.forEach
    document.getElementById("dados").innerHTML = divDados;
} // fim do carregarDadosAPI

carregarDadosAPI();