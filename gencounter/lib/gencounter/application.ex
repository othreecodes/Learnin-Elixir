defmodule Gencounter.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    # List all child processes to be supervised
    children = [
      worker(Gencounter.Producer, [0]),
      worker(Gencounter.ProducerConsumer,[]),
      worker(Gencounter.Consumer, [], id: :a),
      worker(Gencounter.Consumer, [], id: :b),
      # Starts a worker by calling: Gencounter.Worker.start_link(arg)
      # {Gencounter.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Gencounter.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
