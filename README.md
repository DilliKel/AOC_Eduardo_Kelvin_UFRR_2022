<br />
<p align="center">
  <a href="">
    <img src="https://user-images.githubusercontent.com/49700354/114078715-a61b2f00-987f-11eb-8eef-6fd7cfc17d33.png" alt="" width="80" height="80">
  </a>

  <h1 align="center">Projeto CPU EK</h1>
  
  <p align="center">
    Este é um projeto de um processador de 8 bits, com arquitetura RISC, baseado no processador MIPS.
    Ele foi desenvolvido na IDE Quartus Prime, da Intel.
    <br />
    <br />
    <a href="https://github.com/ed-henrique/AOC_Eduardo_Kelvin_UFRR_2022/tree/main/relatorio">Relatório</a>
    |
    <a href="https://github.com/ed-henrique/AOC_Eduardo_Kelvin_UFRR_2022/blob/main/apresentacao/Apresenta%C3%A7%C3%A3o.pdf">Slides</a>
    |
    <a href="https://github.com/ed-henrique/AOC_Eduardo_Kelvin_UFRR_2022/tree/main/CPU_EK">Processador</a>
  </p>
  
  <h1 align="center">Datapath da CPU EK</h1>
  <p align="center">
    <a href="https://github.com/ed-henrique/AOC_Eduardo_Kelvin_UFRR_2022/tree/main/relatorio">
      <img src="https://raw.githubusercontent.com/ed-henrique/AOC_Eduardo_Kelvin_UFRR_2022/main/datapath/Datapath.png" alt="Datapath Processador EK">
    </a>
  </p>
</p>

## Como executar o projeto da CPU EK?

1. Baixar e instalar o Quartus Prime Lite (De preferência a versão 20.1, que fornece o modelsim gratuitamente)
2. Clonar a pasta CPU_EK do repositório
3. Abrir o projeto CPU_EK.qpf
4. Retire o comentário das instruções desejadas no arquivo ROM.vhd
5. Realize a análise e síntese
6. Crie um arquivo .vwf para ver/editar as waveforms
