local part = game.Workspace.Works.Courier.Model["Work_Courier"]
part.Courier.HoldDuration = 0.001
game.Players.LocalPlayer.Character:MoveTo(part.Position)
game.Players.LocalPlayer.Character
game.ReplicatedStorage.CourierWork.OnClientEvent:Connect(function(p1, p2)
  game.Players.LocalPlayer.Character.Torso.Anchored = true
  game.Players.LocalPlayer.Character.HumanoidRootPart.Position = p2.Position
  wait(0.2)
  game.ReplicatedStorage.CourierWork:FireServer("Point")
  wait(0.2)
  local part = game.Workspace.Works.Courier.Model["Work_Courier"]
  part.Courier.HoldDuration = 0.001
  game.Players.LocalPlayer.Character.HumanoidRootPart.Position = part.Position
  game.Players.LocalPlayer.Character.Torso.Anchored = false
end)
