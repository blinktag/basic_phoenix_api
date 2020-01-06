alias ProjectManagement.Repo
alias ProjectManagement.Management.Document

Repo.insert!(%Document{
  name: "RFC 1234",
  content: "Some made up standards",
  view_count: 3,
  published: true,
  project_id: 1
})

Repo.insert!(%Document{
  name: "RFC 1235",
  content: "Another made up standard",
  view_count: 0,
  published: true,
  project_id: 2
})
