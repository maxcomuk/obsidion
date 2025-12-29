getgenv().FolderName = "ModdedLibrary"
getgenv().UILogo = "rbxassetid://126152115075698"

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/cryptium-lua/encrypted/refs/heads/main/lalalalala"))()

local Window = Library:Window({ Name = "Game Name", SubTitle = "Hub Name", ExpiresIn = "N/A" })
Window:Category("Catagory")

local TestPage = Window:Page({ Name = "Page", Icon = "" })
local TestSubPage = TestPage:SubPage({ Name = "Testing" })

Window:Category("Settings")
local SettingsPage = Window:CreateSettingsPage()

for Index = 1, 2 do
    local TestSection = TestSubPage:Section({ Name = "Test", Icon = "", Side = Index })

    TestSection:Toggle({
        Name = "Toggle",
        Flag = "Toggle",
        Callback = function(Value)
            print("Toggle:", Value)
        end
    })

    TestSection:Button({
        Name = "Button",
        Callback = function()
            print("Button pressed")
        end
    })

    TestSection:Slider({
        Name = "Slider",
        Flag = "Slider",
        Min = 0,
        Max = 100,
        Default = 50,
        Suffix = "%",
        Decimals = 1,
        Callback = function(Value)
            print("Slider:", Value)
        end
    })

    TestSection:Dropdown({
        Name = "Dropdown",
        Flag = "Dropdown",
        Items = { "Optionn 1", "Optionn 2", "Optionn 3", "Optionn 4" },
        Default = "Optionn 2",
        Multi = false,
        Callback = function(Value)
            print("Dropdown:", Value)
        end
    })

    TestSection:Label("Label"):Colorpicker({
        Flag = "Colorpicker",
        Default = Color3.fromRGB(255, 255, 255),
        Callback = function(Value)
            print("Color:", Value)
        end
    })

    TestSection:Label("Label"):Keybind({
        Flag = "Keybind",
        Default = Enum.KeyCode.E,
        Mode = "Toggle",
        Callback = function(Value)
            print("Keybind changed:", Value)
        end
    })

    TestSection:Textbox({
        Flag = "Textbox",
        Placeholder = "Placeholder",
        Default = "Text",
        Finished = false,
        Numeric = false,
        Callback = function(Value)
            print("Textbox:", Value)
        end
    })
end
