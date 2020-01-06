alias ProjectManagement.Repo
alias ProjectManagement.Management.Project

Repo.insert!(%Project{
  title: "DNA",
  description: "Life's work"
})

Repo.insert!(%Project{
  title: "Core",
  description: "Customer frontend"
})

Repo.insert!(%Project{
  title: "Project API",
  description: "Learning elixir!"
})
