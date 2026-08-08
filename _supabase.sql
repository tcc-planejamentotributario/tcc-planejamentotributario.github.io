-- Central do TCC Grupo 5 — tabela das marcações compartilhadas.
-- Rodar UMA vez no SQL Editor do projeto Supabase novo (nada a ver com outros projetos).

create table if not exists public.marcacoes (
  tarefa     text primary key,          -- o data-id da checkbox no HTML
  pessoa     text not null,             -- quem marcou
  criado_em  timestamptz not null default now()
);

alter table public.marcacoes enable row level security;

-- A página é pública e sem login: leitura e escrita liberadas para a chave anon.
-- Quem tiver o link consegue marcar e desmarcar. É o combinado para um grupo de 6.
create policy "leitura publica"    on public.marcacoes for select using (true);
create policy "insercao publica"   on public.marcacoes for insert with check (true);
create policy "atualizacao publica" on public.marcacoes for update using (true) with check (true);
create policy "remocao publica"    on public.marcacoes for delete using (true);

-- Faz a marcação de um aparecer no celular do outro sem F5.
alter publication supabase_realtime add table public.marcacoes;

-- ROLLBACK: drop table public.marcacoes;
