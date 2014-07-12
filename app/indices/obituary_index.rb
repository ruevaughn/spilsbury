# http://pat.github.io/thinking-sphinx/indexing.html

ThinkingSphinx::Index.define :obituary, with: :active_record do
  indexes first_name
  indexes middle_name
  indexes last_name
  indexes death_date, sortable: true
end
