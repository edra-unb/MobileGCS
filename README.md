# Mobile_GMS
Aplicativo *Mobile Ground Station* com Flutter para monitorar nossos drones autônomos

# Sobre

## O que é o Mobile_GMS?

Aplicativo Android, desenvolvido para auxiliar a EDRA com a detecção de zonas livres para entregas de pacotes e a zona de decolagem, na missão ao ar livre da competição do [IMAV 2021](https://imav2020.inaoep.mx/portal/home), no México.


## Como funciona?

De acordo com as regras da competição [Regras IMAV 2021](https://imav2020.inaoep.mx/portal/outdoor_competition), o aplicativo permite que o usuário verifique se o drone fez a detecção das áreas livres e da zona de decolagem corretamente. A detecção será feita por meio de processamento de imagens. O aplicativo receberá as imagens via internet.


### Funcionalidades do Aplicativo

O drone capta as imagens e envia para o Banco de Dados, o aplicativo recebe as imagens do Banco de Dados e o usuário verifica se a imagem enviada pelo drone foi identificada corretamente, se sim, o usuário clica no botão "Next". Caso a imagem não tenha sido identificada corretamente pelo drone, o aplicativo permite que o usuário altere a classificação da imagem, clicando no botão de opções e depois em "Next", assim a imagem irá para o Banco de Dados com sua clasificação corrgida pelo o usúario do aplicativo, em seguida o drone receberá de volta a informação atualizada no Banco de Dados e seguirá seu curso de acordo com a decisão do seu algoritmo. É possível voltar até duas imagens para conferir/editar seus dados, basta clicar no botão "Back".

# Tecnologias
O aplicativo foi desenvolvido no sistema operacional Linux Ubuntu, a IDE [Visual Studio Code](https://code.visualstudio.com/), foi usado o kit de desenvolvimento de interface de usuário [flutter](https://flutter.dev/), que tem o [Dart](https://dart.dev/) como sua linguagem de programação e foi utilizado o [Firebase](https://firebase.google.com/) como Banco de Dados.
