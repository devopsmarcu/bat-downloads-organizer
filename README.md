# 🗃️ bat-downloads-organizer

Script em **batch para Windows** que organiza automaticamente a pasta **Downloads** do usuário, movendo arquivos para pastas específicas com base em suas extensões. Ideal para manter o sistema limpo e organizado de forma rápida e silenciosa, sem prompts ou interações manuais.

---

### 📄 Nome do Script:

`organizar_downloads.bat`

---

### 📌 Objetivo:

Automatizar a organização de arquivos na pasta **Downloads**, criando subpastas e movendo arquivos para os diretórios corretos conforme a extensão. Inclui uma segunda varredura para corrigir arquivos mal salvos.

---

### 🖥️ Ambiente de Execução:

- **Sistema Operacional:** Windows 11 (compatível com versões anteriores)
- **Base de usuário automática:** O script usa a variável de ambiente `%USERNAME%`, tornando-se **compatível com qualquer conta de usuário local**.

---

### 📂 Estrutura de Pastas Organizadas:

| Categoria           | Pasta Destino                                      | Extensões Movidas                              |
|---------------------|----------------------------------------------------|-----------------------------------------------|
| Imagens             | `C:\Users\%USERNAME%\Pictures`                    | jpg, jpeg, png, gif, bmp, tiff, webp          |
| Vídeos              | `C:\Users\%USERNAME%\Videos`                      | mp4, mkv, mov, avi, wmv, flv, webm            |
| Documentos          | `C:\Users\%USERNAME%\Documents`                   | pdf, doc, docx, txt, xlsx, xls, ppt, pptx, odt|
| Músicas             | `C:\Users\%USERNAME%\Music`                       | mp3, wav, ogg, m4a, flac                      |
| Desktop (Scripts)   | `C:\Users\%USERNAME%\Desktop`                     | py, js, sh, ps1                               |
| Compactados         | `C:\Users\%USERNAME%\Downloads\Compactados`       | zip, rar, 7z, tar, gz                         |
| Executáveis         | `C:\Users\%USERNAME%\Downloads\Executaveis`       | exe, msi, bat, cmd                            |
| ISOs / Instaladores | `C:\Users\%USERNAME%\Downloads\ISOs_Instaladores` | iso, img, apk, deb, rpm                      |

---

### 🚩 Funcionalidades Principais:

- **Criação automática de subpastas necessárias**
- **Movimentação por extensão**
- **Correção de arquivos mal alocados entre Imagens, Vídeos, Documentos e Músicas**
- **Execução 100% silenciosa (sem prompts ou mensagens visíveis)**

---

### ⚙️ Como Executar Manualmente:

1. Faça o download do arquivo:  
👉 [`organizar_downloads.bat`](./organizar_downloads.bat)

2. Coloque o arquivo em uma pasta fixa (ex: `C:\Scripts\`).

3. Clique duas vezes para executar.  
*(Ou execute pelo Prompt de Comando com privilégios de administrador se desejar.)*

---

### ⏲️ Como Agendar a Execução Automática:

---

#### ✅ Opção 1: Rodar a cada 1 hora

1. Pressione `Win + R`, digite: taskschd.msc

e pressione **Enter**.

2. Clique em **Criar Tarefa**.

3. Aba **Geral**:
   - Nome: `Organizar Downloads`
   - Marque: **Executar com privilégios mais altos**

4. Aba **Disparadores**:
   - **Novo...**
   - Tipo: **Diariamente**
   - Repetir a cada: **1 hora**
   - Duração: **Indefinida**

5. Aba **Ações**:
   - Ação: **Iniciar um programa**
   - Programa/script: Caminho completo para o `.bat`, exemplo: C:\Scripts\organizar_downloads.bat

6. Salvar e concluir.

---

#### ✅ Opção 2: Executar ao Iniciar o Windows

**Método rápido:**

1. Pressione `Win + R`, digite: "shell:startup"

2. Copie o atalho do script para essa pasta.

**Método recomendado (Agendador de Tarefas):**

1. Na criação da tarefa, na aba **Disparadores**, selecione:
   - **"Ao iniciar o sistema"**  
   ou  
   - **"Ao fazer logon"**

---

### 🛠️ Personalização Adicional:

Para adaptar o caminho base manualmente (não recomendado se já estiver usando `%USERNAME%`):

```batch
set "BASEDIR=C:\Users\%USERNAME%"

