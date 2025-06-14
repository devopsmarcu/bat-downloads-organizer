# bat-downloads-organizer
Script em batch para Windows que organiza automaticamente a pasta de Downloads, movendo arquivos para pastas específicas com base em suas extensões. Ideal para manter o sistema limpo e organizado de forma rápida e silenciosa, sem prompts ou interações manuais.

### Documentação - Script de Organização de Downloads no Windows (Batch)

---

#### 📄 Nome do Script:

`organizar_downloads.bat`

---

### 📌 Objetivo:

Automatizar a organização de arquivos na pasta **Downloads** do usuário, movendo os arquivos para pastas adequadas com base nas extensões, incluindo também a correção de arquivos que possam ter sido salvos em pastas erradas.

---

### 🖥️ Ambiente de Execução:

* Sistema Operacional: **Windows 11** (compatível também com versões anteriores do Windows que suportem scripts `.bat`)
* Caminho base configurado:
  `C:\Users\marcu`

---

### 📂 Estrutura de Pastas Envolvidas:

| Categoria           | Pasta Destino                                | Extensões Movidas                              |
| ------------------- | -------------------------------------------- | ---------------------------------------------- |
| Imagens             | `C:\Users\marcu\Pictures`                    | jpg, jpeg, png, gif, bmp, tiff, webp           |
| Vídeos              | `C:\Users\marcu\Videos`                      | mp4, mkv, mov, avi, wmv, flv, webm             |
| Documentos          | `C:\Users\marcu\Documents`                   | pdf, doc, docx, txt, xlsx, xls, ppt, pptx, odt |
| Músicas             | `C:\Users\marcu\Music`                       | mp3, wav, ogg, m4a, flac                       |
| Desktop (Scripts)   | `C:\Users\marcu\Desktop`                     | py, js, sh, ps1                                |
| Compactados         | `C:\Users\marcu\Downloads\Compactados`       | zip, rar, 7z, tar, gz                          |
| Executáveis         | `C:\Users\marcu\Downloads\Executaveis`       | exe, msi, bat, cmd                             |
| ISOs / Instaladores | `C:\Users\marcu\Downloads\ISOs_Instaladores` | iso, img, apk, deb, rpm                        |

---

### 🚩 Funcionalidades:

#### 1. **Criação de Subpastas**

Se as pastas de destino dentro de Downloads (`Compactados`, `Executaveis`, `ISOs_Instaladores`) não existirem, o script cria automaticamente.

#### 2. **Movimentação de Arquivos por Extensão**

* Arquivos na pasta Downloads são movidos para os diretórios correspondentes baseados em suas extensões.

#### 3. **Correção de Arquivos Mal Salvos**

* O script faz uma segunda varredura em **Pictures**, **Videos**, **Documents** e **Music** para corrigir arquivos que estejam fora de suas pastas corretas.

---

### ⚙️ Modo de Execução:

1. Salve o script como `organizar_downloads.bat`.
2. Execute clicando duas vezes ou via Prompt de Comando.
3. O script roda de forma silenciosa (**não exibe mensagens no terminal** e **não requer interação**).

---

### 🚫 Observações:

* **Sem Prompt ou Mensagens:**
  O script foi intencionalmente escrito para **não exibir prompts de pausa ou mensagens na tela**.

* **Requisitos de Permissão:**
  O usuário precisa ter permissões de gravação nas pastas de destino.

* **Limitações:**
  O script **não verifica conflitos de nomes de arquivos**. Se dois arquivos com o mesmo nome existirem, o Windows sobrescreverá o arquivo destino (dependendo da configuração do sistema).

---

### 🛠️ Personalização:

Se desejar adaptar para outro usuário, apenas altere a variável:

```batch
set "BASEDIR=C:\Users\marcu"
```

Para:

```batch
set "BASEDIR=C:\Users\NOME_DO_USUARIO"
```

---
