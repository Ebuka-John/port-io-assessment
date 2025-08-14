{
  replicas: .spec.replicas,
  strategy: .spec.strategy.type,
  labelCombo: (.metadata.labels | "\(.service)-\(.environment)")
}