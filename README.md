# Central do TCC — Grupo 5

Página única com tudo que falta no TCC: plano por pessoa, problemas, cronograma,
checklist ABNT, documentos a pedir para a empresa e quem escreveu cada seção.

**No ar:** https://tcc-planejamentotributario.github.io/

## Como atualizar o conteúdo

1. Abra o `index.html` aqui no GitHub.
2. Clique no lápis (canto direito), edite o texto.
3. "Commit changes" no fim da página.

O site atualiza sozinho em cerca de 40 segundos, no mesmo link.

## Regra dos ids — a única coisa que dá para quebrar sem perceber

A marcação de cada caixinha é guardada por um id.

**Na aba Erros**, o id é o campo `id` de cada item do array `ERROS` (`nat1`, `vic5`, `ger12`).
Editar o `txt` e o `det` à vontade. Mas:

- **Nunca reaproveite um id para outro erro.** Se `yas4` era "escrever o resumo" e virar
  "conferir as referências do Sebrae", quem tinha marcado o primeiro aparece marcando o
  segundo. Erro que sai não devolve o id: o próximo ganha número novo.
- Erro novo do Nathan entra como `nat13`, não como `nat1` reaproveitado.

**Nas outras listas** (Tarefas, Fases, ABNT, Documentos, Dados) o id é gerado a partir do
texto do item. Reordenar e inserir itens é seguro. Reescrever o título de um item zera a
marcação **daquele item só** — o resto não se mexe.

## Marcações

São compartilhadas: todo mundo do grupo vê o que já foi feito e quem marcou.
Qualquer um pode marcar ou desmarcar qualquer tarefa — não tem senha.

A sincronização está ligada: quando alguém marca, aparece no celular dos outros
sem precisar recarregar. O arquivo `_supabase.sql` é o que criou a tabela.

Se a internet cair, a página continua funcionando com a última versão que ela
tinha, e volta a sincronizar quando a conexão voltar.
