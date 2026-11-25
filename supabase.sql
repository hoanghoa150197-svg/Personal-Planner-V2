-- Chạy trong Supabase SQL Editor của project dùng chung. Chỉ cần chạy một lần.
-- Mỗi user chỉ được đọc/ghi đúng bản ghi của mình nhờ Row Level Security.
create table if not exists public.planner_state (
  user_id uuid primary key references auth.users(id) on delete cascade,
  payload jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
alter table public.planner_state enable row level security;
revoke all on public.planner_state from anon;
grant select,insert,update,delete on public.planner_state to authenticated;
drop policy if exists "planner_select_own" on public.planner_state;
drop policy if exists "planner_insert_own" on public.planner_state;
drop policy if exists "planner_update_own" on public.planner_state;
drop policy if exists "planner_delete_own" on public.planner_state;
create policy "planner_select_own" on public.planner_state for select to authenticated using ((select auth.uid())=user_id);
create policy "planner_insert_own" on public.planner_state for insert to authenticated with check ((select auth.uid())=user_id);
create policy "planner_update_own" on public.planner_state for update to authenticated using ((select auth.uid())=user_id) with check ((select auth.uid())=user_id);
create policy "planner_delete_own" on public.planner_state for delete to authenticated using ((select auth.uid())=user_id);
