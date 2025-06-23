---

# 🗃️ Downloads Organizer (Windows e Linux)

Scripts para **organizar automaticamente a pasta de Downloads do usuário**, movendo arquivos para pastas específicas com base em suas extensões.
Ideal para manter o sistema limpo e organizado de forma rápida e silenciosa, sem prompts ou interações manuais.

---

## 📄 Nomes dos Scripts:

* **Windows:** `organizar_downloads.bat`
* **Linux:** `organizar_downloads.sh`

---

## 📌 Objetivo:

Automatizar a organização de arquivos na pasta **Downloads**, criando subpastas e movendo arquivos para os diretórios corretos conforme a extensão. Inclui uma segunda varredura para corrigir arquivos mal salvos (ex: fotos salvas por engano na pasta de vídeos).

---

## 🖥️ Ambiente de Execução:

| Sistema Operacional                  | Script                    | Observação                                                     |
| ------------------------------------ | ------------------------- | -------------------------------------------------------------- |
| Windows 10 / 11 (e anteriores)       | `organizar_downloads.bat` | Usa variável `%USERPROFILE%`, compatível com qualquer usuário. |
| Linux (Ubuntu, Debian, Fedora, etc.) | `organizar_downloads.sh`  | Usa `$HOME`, compatível com qualquer usuário.                  |

---

## 📂 Estrutura de Pastas Organizadas:

| Categoria           | Pasta Destino                   | Extensões Movidas                              |
| ------------------- | ------------------------------- | ---------------------------------------------- |
| Imagens             | `~/Pictures`                    | jpg, jpeg, png, gif, bmp, tiff, webp           |
| Vídeos              | `~/Videos`                      | mp4, mkv, mov, avi, wmv, flv, webm             |
| Documentos          | `~/Documents`                   | pdf, doc, docx, txt, xlsx, xls, ppt, pptx, odt |
| Músicas             | `~/Music`                       | mp3, wav, ogg, m4a, flac                       |
| Desktop (Scripts)   | `~/Desktop`                     | py, js, sh, ps1                                |
| Compactados         | `~/Downloads/Compactados`       | zip, rar, 7z, tar, gz                          |
| Executáveis         | `~/Downloads/Executaveis`       | exe, msi, bat, cmd, sh                         |
| ISOs / Instaladores | `~/Downloads/ISOs_Instaladores` | iso, img, apk, deb, rpm                        |

*(Em Windows, o equivalente de `~` é `%USERPROFILE%` → Exemplo: `C:\Users\NomeDoUsuario\Pictures`)*

---

## 🚩 Funcionalidades Principais:

✅ Criação automática de subpastas
✅ Movimentação de arquivos por extensão
✅ Segunda varredura para corrigir arquivos mal alocados
✅ Execução silenciosa (sem prompts)
✅ Compatível com múltiplos usuários sem necessidade de ajuste manual

---

## ⚙️ Como Executar:

### Windows:

1. Baixe o script: [`organizar_downloads.bat`](./organizar_downloads.bat)
2. Execute clicando duas vezes ou pelo terminal (cmd/powershell).

---

### Linux:

1. Baixe o script: [`organizar_downloads.sh`](./organizar_downloads.sh)
2. Dê permissão de execução:

```bash
chmod +x organizar_downloads.sh
```

3. Execute:

```bash
./organizar_downloads.sh
```

---

## ⏲️ Como Agendar a Execução Automática:

### Windows - Opção 1: Executar a cada 1 hora (Agendador de Tarefas)

* Criar nova tarefa → Definir disparadores e ações → Programar execução do `.bat`.

### Windows - Opção 2: Rodar ao iniciar o Windows (Startup)

* Copie um atalho do `.bat` para a pasta `%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup`.

### Linux - Cronjob:

Para executar, por exemplo, a cada hora:

```bash
crontab -e
```

Adicione:

```bash
0 * * * * /caminho/para/organizar_downloads.sh
```

---

## 🛠️ Personalização Adicional:

### Windows:

O script já detecta automaticamente o caminho base com:

```batch
set "BASEDIR=%USERPROFILE%"
```

Se quiser forçar manualmente outro caminho:

```batch
set "BASEDIR=D:\MeuUsuario"
```

---

### Linux:

Já usa automaticamente o home do usuário com:

```bash
BASEDIR="$HOME"
```

Se quiser mudar, edite manualmente o script.

---

## ✅ Última Atualização: Junho de 2025
