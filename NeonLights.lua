--This script enables neon when you go through corridor of lights.
--Add blocks called "hitbox" and "LeftWall", "RightWall", "Ceiling". 
--You can add additional parts if you want to.

local neonMaterial = Enum.Material.Neon
local originalMaterialRightWall, originalMaterialLeftWall, originalMaterialCeiling
local lightingDelay = 0.8

script.Parent.hitbox.Touched:Connect(function()
  if script.Parent.RightWall.Material ~= neonMaterial then
    originalMaterialRightWall = script.Parent.RightWall.Material
    originalMaterialLeftWall = script.Parent.LeftWall.Material
    originalMaterialCeiling = script.Parent.Ceiling.Material
    script.Parent.RightWall.Material = neonMaterial
    script.Parent.LeftWall.Material = neonMaterial
    script.Parent.Ceiling.Material = neonMaterial
  end
end)


script.Parent.hitbox.TouchEnded:Connect(function()
  wait(lightingDelay)
  script.Parent.RightWall.Material = originalMaterialRightWall
  script.Parent.LeftWall.Material = originalMaterialLeftWall 
  script.Parent.Ceiling.Material = originalMaterialCeiling
end)