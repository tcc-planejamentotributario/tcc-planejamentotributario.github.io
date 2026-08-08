# Central do TCC — Grupo 5

Página única com tudo que falta no TCC: plano por pessoa, problemas, cronograma,
checklist ABNT, documentos a pedir para a empresa e quem escreveu cada seção.

**No ar:** https://vitoriacarol744-coder.github.io/tcc-central/

## Como atualizar o conteúdo

1. Abra o `index.html` aqui no GitHub.
2. Clique no lápis (canto direito), edite o texto.
3. "Commit changes" no fim da página.

O site atualiza sozinho em cerca de 40 segundos, no mesmo link.

## Regra dos ids das tarefas

Cada checkbox tem um `data-id` fixo, tipo `plano-nathan-02`. É por ele que a marcação
é guardada.

- Editar o **texto** de uma tarefa pode, à vontade.
- **Nunca renumere** um id que já existe — quem tinha marcado perde a marcação.
- Tarefa nova ganha o próximo número livre daquele grupo (ex.: `plano-nathan-05`).

## Marcações

São compartilhadas: todo mundo do grupo vê o que já foi feito e quem marcou.
Qualquer um pode marcar ou desmarcar qualquer tarefa — não tem senha.

O arquivo `_supabase.sql` cria a tabela que guarda isso. Enquanto as chaves não
estiverem preenchidas no topo do script do `index.html`, a página funciona igual,
mas cada marcação fica só no aparelho de quem marcou.
