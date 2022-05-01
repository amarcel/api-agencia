<?php
include '../../conexao/Conexao.php';

class Noticia {
    private $id;
	private $titulo;
    private $texto;
    private $horario;

    function getId() {
        return $this->id;
    }

    function getTitulo() {
        return $this->titulo;
    }

    function getTexto() {
        return $this->texto;
    }

    function getHorario() {
        return $this->horario;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setTitulo($titulo) {
        $this->titulo = $titulo;
    }

    function setTexto($texto) {
        $this->texto = $texto;
    }

    function setHorario($horario) {
        $this->horario = $horario;
    }

    public function insert($dados){
    	$sql = "INSERT INTO noticia(titulo,texto,horario) VALUES (:titulo,:texto,:horario)";
    	$consulta = Conexao::getInstance()->prepare($sql);
        $consulta->bindValue('titulo',  $dados['titulo']);
        $consulta->bindValue('texto', $dados['texto']);
        $consulta->bindValue('horario' , $dados['horario']);
    	return $consulta->execute();

	}

	public function update($dados, $id){
		$sql = "UPDATE noticia SET titulo = :titulo, texto = :texto,horario = :horario WHERE id = :id ";
		$consulta = Conexao::getInstance()->prepare($sql);
		$consulta->bindValue('titulo', $dados['titulo']);
		$consulta->bindValue('texto', $dados['texto']);
		$consulta->bindValue('horario' , $dados['horario']);
		$consulta->bindValue('id', $id);
		return $consulta->execute();
	}

	public function delete($id){
		$sql =  "DELETE FROM noticia WHERE id = :id";
		$consulta = Conexao::getInstance()->prepare($sql);
		$consulta->bindValue('id', $id);
		$consulta->execute();
	}

	public function find($id = null){

	}

	public function findAll(){
		$sql = "SELECT * FROM noticia";
		$consulta = Conexao::getInstance()->prepare($sql);
		$consulta->execute();
		return $consulta->fetchAll();
	}

}

?>