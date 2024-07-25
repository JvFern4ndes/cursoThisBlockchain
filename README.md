# Curso ThisBlockchain 

## Como instalar o Git

### Passo 1: Instalar o Chocolatey

1 - Abra o Prompt de Comando (cmd) como Administrador. Para fazer isso, pesquise por "cmd" no menu Iniciar, clique com o botão direito no Prompt de Comando e selecione "Executar como administrador".

2 - No Prompt de Comando, copie e cole o seguinte comando para instalar o Chocolatey:

```sh
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

3 - Pressione Enter e aguarde a conclusão da instalação.

### Passo 2: Instalar o Git usando o Chocolatey

1 - Depois que o Chocolatey estiver instalado, ainda no Prompt de Comando como Administrador, digite o seguinte comando para instalar o Git:

```sh
choco install git -y
```

2 - Aguarde a conclusão da instalação.

### Passo 3: Verificar a Instalação

1 - Para verificar se o Git foi instalado corretamente, digite o seguinte comando no Prompt de Comando:

```
git --version
```

2 - Você deve ver a versão do Git instalada.

### Passo 4: Configurar o Git

1 - Configure seu nome de usuário e e-mail do Git com os seguintes comandos:

```
git config --global user.name "Seu Nome"
git config --global user.email "seuemail@exemplo.com"
```

Após seguir esses passos, o Git estará instalado e configurado na sua máquina Windows.
