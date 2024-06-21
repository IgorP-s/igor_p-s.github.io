<?php
// Conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "senai";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar se a conexão foi estabelecida com sucesso
if ($conn->connect_error) {
  die("Erro de conexão: ". $conn->connect_error);
}

// Verificar se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $ra = $_POST["ra"];
  $password = $_POST["password"];

  // Consultar a tabela de usuários
  $sql = "SELECT * FROM login_alu WHERE ra = '$ra' AND senha = '$password'";
  $result = $conn->query($sql);

  // Verificar se o usuário existe e a senha está correta
  if ($result->num_rows > 0) {
    // Login bem-sucedido, redirecionar para a página de destino
    header("Location: area_alu.html");
    exit;
  } else {
    // Login falhou, exibir mensagem de erro
    echo "Erro: RA ou senha incorretos.";
  }
}
exit;
?>

