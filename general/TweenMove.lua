local G=game:GetService("Players")
local H=G.LocalPlayer;
local E=game:GetService("TweenService")
local a4=H.Character
local a5 = game.workspace.Something.CFrame -- This must be a CFrame, you can also use CFrame.new(x, y, z)
function tweenMove(_,a0)
	local a1=Instance.new("CFrameValue")
	a1.Value=_:GetPrimaryPartCFrame()
	a1:GetPropertyChangedSignal("Value"):connect(function()_:SetPrimaryPartCFrame(a1.Value)end)
	local a2=TweenInfo.new((_:GetPrimaryPartCFrame().Position-a0.Position).magnitude/250,Enum.EasingStyle.Linear,Enum.EasingDirection.Out,0,false,0)
	local a3=E:Create(a1,a2,{Value=a0})
	a3:Play()
end;
tweenMove(a4,a5)
