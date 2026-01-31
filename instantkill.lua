
local G2L = {};

-- StarterGui.KillGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[KillGui]];
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.KillGui.Menu
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 270, 0, 175);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2"]["Name"] = [[Menu]];


-- StarterGui.KillGui.Menu.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KillGui.Menu.Topbar
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["4"]["Size"] = UDim2.new(0, 269, 0, 36);
G2L["4"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4"]["Name"] = [[Topbar]];


-- StarterGui.KillGui.Menu.Topbar.UICorner
G2L["5"] = Instance.new("UICorner", G2L["4"]);
G2L["5"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KillGui.Menu.Topbar.Close
G2L["6"] = Instance.new("ImageButton", G2L["4"]);
G2L["6"]["Active"] = false;
G2L["6"]["BackgroundTransparency"] = 1;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 86, 128);
G2L["6"]["Selectable"] = false;
G2L["6"]["Size"] = UDim2.new(0, 21, 0, 21);
G2L["6"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6"]["Name"] = [[Close]];
G2L["6"]["Position"] = UDim2.new(0.89599, 0, 0.19444, 0);


-- StarterGui.KillGui.Menu.Topbar.Close.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);
G2L["7"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.KillGui.Menu.Topbar.Close.UIStroke
G2L["8"] = Instance.new("UIStroke", G2L["6"]);
G2L["8"]["Color"] = Color3.fromRGB(64, 64, 64);


-- StarterGui.KillGui.Menu.Topbar.Close.ImageLabel
G2L["9"] = Instance.new("ImageLabel", G2L["6"]);
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["ImageColor3"] = Color3.fromRGB(135, 135, 135);
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["9"]["Image"] = [[rbxassetid://7743878857]];
G2L["9"]["Size"] = UDim2.new(0, 21, 0, 21);
G2L["9"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.KillGui.Menu.Topbar.Close.ImageLabel.UIScale
G2L["a"] = Instance.new("UIScale", G2L["9"]);
G2L["a"]["Scale"] = 0.7;


-- StarterGui.KillGui.Menu.Topbar.Close.LocalScript
G2L["b"] = Instance.new("LocalScript", G2L["6"]);



-- StarterGui.KillGui.Menu.Topbar.Title
G2L["c"] = Instance.new("TextButton", G2L["4"]);
G2L["c"]["Active"] = false;
G2L["c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c"]["TextSize"] = 13;
G2L["c"]["TextColor3"] = Color3.fromRGB(162, 162, 162);
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["c"]["Selectable"] = false;
G2L["c"]["BackgroundTransparency"] = 1;
G2L["c"]["Size"] = UDim2.new(0, 200, 0, 36);
G2L["c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["c"]["Text"] = [[Instant Kill Gui]];
G2L["c"]["Name"] = [[Title]];
G2L["c"]["Position"] = UDim2.new(0.00193, 0, 0, 0);


-- StarterGui.KillGui.Menu.Topbar.Title.UIPadding
G2L["d"] = Instance.new("UIPadding", G2L["c"]);
G2L["d"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.KillGui.Menu.UIStroke
G2L["e"] = Instance.new("UIStroke", G2L["2"]);
G2L["e"]["Color"] = Color3.fromRGB(35, 35, 35);


-- StarterGui.KillGui.Menu.Toolbar
G2L["f"] = Instance.new("Frame", G2L["2"]);
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["f"]["Size"] = UDim2.new(1, 0, 0, 5);
G2L["f"]["Position"] = UDim2.new(0, 0, 0.186, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["f"]["Name"] = [[Toolbar]];


-- StarterGui.KillGui.Menu.Toolbar.UICorner
G2L["10"] = Instance.new("UICorner", G2L["f"]);
G2L["10"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KillGui.Menu.Toolbar.SecondSeperator
G2L["11"] = Instance.new("Frame", G2L["f"]);
G2L["11"]["ZIndex"] = 5;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(53, 53, 53);
G2L["11"]["Size"] = UDim2.new(1, 0, 0, 1);
G2L["11"]["Position"] = UDim2.new(-0.00193, 0, 0, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["11"]["Name"] = [[SecondSeperator]];


-- StarterGui.KillGui.Menu.ExampleContainer
G2L["12"] = Instance.new("Frame", G2L["2"]);
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["Size"] = UDim2.new(0, 270, 0, 132);
G2L["12"]["Position"] = UDim2.new(-0.00178, 0, 0.24091, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["12"]["Name"] = [[ExampleContainer]];
G2L["12"]["BackgroundTransparency"] = 1;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle
G2L["13"] = Instance.new("ScrollingFrame", G2L["12"]);
G2L["13"]["Name"] = [[Middle]];
G2L["13"]["ScrollBarImageTransparency"] = 1;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["Size"] = UDim2.new(0, 270, 0, 141);
G2L["13"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Position"] = UDim2.new(0, 0, -0.06587, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["13"]["ScrollBarThickness"] = 0;
G2L["13"]["BackgroundTransparency"] = 1;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.UIListLayout
G2L["14"] = Instance.new("UIListLayout", G2L["13"]);
G2L["14"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection
G2L["15"] = Instance.new("Frame", G2L["13"]);
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["15"]["Size"] = UDim2.new(0, 255, 0, 1);
G2L["15"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["15"]["Name"] = [[ExampleSection]];
G2L["15"]["BackgroundTransparency"] = 1;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.1
G2L["16"] = Instance.new("Frame", G2L["15"]);
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["Size"] = UDim2.new(0, 231, 0, 29);
G2L["16"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["16"]["Name"] = [[1]];
G2L["16"]["LayoutOrder"] = -1;
G2L["16"]["BackgroundTransparency"] = 1;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.1.TextLabel
G2L["17"] = Instance.new("TextLabel", G2L["16"]);
G2L["17"]["TextSize"] = 12;
G2L["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["17"]["TextColor3"] = Color3.fromRGB(131, 131, 131);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Size"] = UDim2.new(0, 255, 0, 34);
G2L["17"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["17"]["Text"] = [[Kill Stuff]];


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.UIListLayout
G2L["18"] = Instance.new("UIListLayout", G2L["15"]);



-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.UIPadding
G2L["19"] = Instance.new("UIPadding", G2L["15"]);
G2L["19"]["PaddingLeft"] = UDim.new(0, 20);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2
G2L["1a"] = Instance.new("Frame", G2L["15"]);
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1a"]["Size"] = UDim2.new(0, 234, 0, 67);
G2L["1a"]["Position"] = UDim2.new(0, 0, 0.28713, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["1a"]["Name"] = [[2]];
G2L["1a"]["BackgroundTransparency"] = 1;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill
G2L["1b"] = Instance.new("TextButton", G2L["1a"]);
G2L["1b"]["AutoButtonColor"] = false;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["1b"]["Selectable"] = false;
G2L["1b"]["Size"] = UDim2.new(0, 231, 0, 31);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["1b"]["Text"] = [[]];
G2L["1b"]["Name"] = [[Kill]];
G2L["1b"]["Position"] = UDim2.new(0, 0, 0.43939, 0);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill.UICorner
G2L["1c"] = Instance.new("UICorner", G2L["1b"]);
G2L["1c"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill.UIStroke
G2L["1d"] = Instance.new("UIStroke", G2L["1b"]);
G2L["1d"]["Color"] = Color3.fromRGB(51, 51, 51);
G2L["1d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill.TextLabel
G2L["1e"] = Instance.new("TextLabel", G2L["1b"]);
G2L["1e"]["TextSize"] = 12;
G2L["1e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1e"]["TextColor3"] = Color3.fromRGB(194, 194, 194);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Size"] = UDim2.new(0, 194, 0, 31);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["1e"]["Text"] = [[Kill Target]];


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill.TextLabel.UIPadding
G2L["1f"] = Instance.new("UIPadding", G2L["1e"]);
G2L["1f"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill.Status
G2L["20"] = Instance.new("Frame", G2L["1b"]);
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["Size"] = UDim2.new(0, 37, 0, 31);
G2L["20"]["Position"] = UDim2.new(0.83983, 0, 0, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["20"]["Name"] = [[Status]];
G2L["20"]["BackgroundTransparency"] = 1;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill.Status.ActualThing
G2L["21"] = Instance.new("Frame", G2L["20"]);
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(107, 0, 255);
G2L["21"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["21"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["21"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["21"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["21"]["Name"] = [[ActualThing]];
G2L["21"]["BackgroundTransparency"] = 1;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill.Status.ActualThing.ImageLabel
G2L["22"] = Instance.new("ImageLabel", G2L["21"]);
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["ImageColor3"] = Color3.fromRGB(105, 105, 105);
G2L["22"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["22"]["Image"] = [[rbxassetid://7734010488]];
G2L["22"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["22"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["22"]["BackgroundTransparency"] = 1;
G2L["22"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill.Status.ActualThing.ImageLabel.UIScale
G2L["23"] = Instance.new("UIScale", G2L["22"]);
G2L["23"]["Scale"] = 0.8;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill.LocalScript
G2L["24"] = Instance.new("LocalScript", G2L["1b"]);



-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Input
G2L["25"] = Instance.new("TextButton", G2L["1a"]);
G2L["25"]["AutoButtonColor"] = false;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["25"]["Selectable"] = false;
G2L["25"]["Size"] = UDim2.new(0, 231, 0, 51);
G2L["25"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["25"]["Text"] = [[]];
G2L["25"]["Name"] = [[Input]];
G2L["25"]["Position"] = UDim2.new(0, 0, 0.70659, 0);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Input.UICorner
G2L["26"] = Instance.new("UICorner", G2L["25"]);
G2L["26"]["CornerRadius"] = UDim.new(0, 4);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Input.UIStroke
G2L["27"] = Instance.new("UIStroke", G2L["25"]);
G2L["27"]["Color"] = Color3.fromRGB(51, 51, 51);
G2L["27"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Input.TextLabel
G2L["28"] = Instance.new("TextLabel", G2L["25"]);
G2L["28"]["TextSize"] = 12;
G2L["28"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["28"]["TextColor3"] = Color3.fromRGB(194, 194, 194);
G2L["28"]["BackgroundTransparency"] = 1;
G2L["28"]["Size"] = UDim2.new(0, 194, 0, 29);
G2L["28"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["28"]["Text"] = [[Player name]];


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Input.TextLabel.UIPadding
G2L["29"] = Instance.new("UIPadding", G2L["28"]);
G2L["29"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Input.Status
G2L["2a"] = Instance.new("Frame", G2L["25"]);
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["Size"] = UDim2.new(0, 212, 0, 28);
G2L["2a"]["Position"] = UDim2.new(0.04122, 0, 0.45098, 0);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2a"]["Name"] = [[Status]];
G2L["2a"]["BackgroundTransparency"] = 1;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Input.Status.TextBox
G2L["2b"] = Instance.new("TextBox", G2L["2a"]);
G2L["2b"]["CursorPosition"] = -1;
G2L["2b"]["Active"] = false;
G2L["2b"]["PlaceholderColor3"] = Color3.fromRGB(105, 105, 105);
G2L["2b"]["TextSize"] = 12;
G2L["2b"]["TextColor3"] = Color3.fromRGB(178, 178, 178);
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(31, 31, 31);
G2L["2b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2b"]["ClearTextOnFocus"] = false;
G2L["2b"]["ClipsDescendants"] = true;
G2L["2b"]["PlaceholderText"] = [[Display Name, Username, Others]];
G2L["2b"]["Size"] = UDim2.new(0, 212, 0, 17);
G2L["2b"]["Position"] = UDim2.new(0, 0, 0.22581, 0);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2b"]["Text"] = [[]];


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Input.Status.TextBox.UIStroke
G2L["2c"] = Instance.new("UIStroke", G2L["2b"]);
G2L["2c"]["Color"] = Color3.fromRGB(66, 66, 66);
G2L["2c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Input.Status.TextBox.UICorner
G2L["2d"] = Instance.new("UICorner", G2L["2b"]);
G2L["2d"]["CornerRadius"] = UDim.new(0, 2);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Input.Status.TextBox.UIPadding
G2L["2e"] = Instance.new("UIPadding", G2L["2b"]);
G2L["2e"]["PaddingRight"] = UDim.new(0, -5);
G2L["2e"]["PaddingLeft"] = UDim.new(0, -5);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.UIListLayout
G2L["2f"] = Instance.new("UIListLayout", G2L["1a"]);
G2L["2f"]["Padding"] = UDim.new(0, 5);


-- StarterGui.KillGui.Menu.ExampleContainer.Middle.UIPadding
G2L["30"] = Instance.new("UIPadding", G2L["13"]);
G2L["30"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.KillGui.Menu.shadowHolder
G2L["31"] = Instance.new("Frame", G2L["2"]);
G2L["31"]["ZIndex"] = 0;
G2L["31"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["31"]["Name"] = [[shadowHolder]];
G2L["31"]["BackgroundTransparency"] = 1;


-- StarterGui.KillGui.Menu.shadowHolder.umbraShadow
G2L["32"] = Instance.new("ImageLabel", G2L["31"]);
G2L["32"]["ZIndex"] = 0;
G2L["32"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
G2L["32"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["32"]["ImageTransparency"] = 0.86;
G2L["32"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["32"]["Image"] = [[rbxassetid://1316045217]];
G2L["32"]["Size"] = UDim2.new(1.00385, 10, 1.00645, 10);
G2L["32"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["32"]["BackgroundTransparency"] = 1;
G2L["32"]["Name"] = [[umbraShadow]];
G2L["32"]["Position"] = UDim2.new(0.5, 0, 0.50108, 0);


-- StarterGui.KillGui.Menu.shadowHolder.penumbraShadow
G2L["33"] = Instance.new("ImageLabel", G2L["31"]);
G2L["33"]["ZIndex"] = 0;
G2L["33"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
G2L["33"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["33"]["ImageTransparency"] = 0.88;
G2L["33"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["33"]["Image"] = [[rbxassetid://1316045217]];
G2L["33"]["Size"] = UDim2.new(1.00385, 10, 1.00645, 10);
G2L["33"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["33"]["BackgroundTransparency"] = 1;
G2L["33"]["Name"] = [[penumbraShadow]];
G2L["33"]["Position"] = UDim2.new(0.5, 0, 0.50108, 0);


-- StarterGui.KillGui.Menu.shadowHolder.ambientShadow
G2L["34"] = Instance.new("ImageLabel", G2L["31"]);
G2L["34"]["ZIndex"] = 0;
G2L["34"]["SliceCenter"] = Rect.new(10, 10, 118, 118);
G2L["34"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["34"]["ImageTransparency"] = 0.88;
G2L["34"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["34"]["Image"] = [[rbxassetid://1316045217]];
G2L["34"]["Size"] = UDim2.new(1.00385, 10, 1.00645, 10);
G2L["34"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["Name"] = [[ambientShadow]];
G2L["34"]["Position"] = UDim2.new(0.5, 0, 0.50108, 0);


-- StarterGui.KillGui.Menu.FrameDrag
G2L["35"] = Instance.new("LocalScript", G2L["2"]);
G2L["35"]["Name"] = [[FrameDrag]];


-- StarterGui.KillGui.Menu.Topbar.Close.LocalScript
local function C_b()
local script = G2L["b"];
	script.Parent.MouseButton1Click:Connect(function()
		G2L["1"]:Destroy()
	end)
end;
task.spawn(C_b);
-- StarterGui.KillGui.Menu.ExampleContainer.Middle.ExampleSection.2.Kill.LocalScript
local tws = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(1,Enum.EasingStyle.Linear)
function notice(title, msg)
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = title,
		Text = msg,
		Duration = 15,
	})

end
local players = game:GetService("Players")
local plr = players.LocalPlayer
function getChar()
	return plr.Character
end
function getBp()
	return plr.Backpack
end
function getPlr(str)
	local targetss = {}
	str = str:lower()

	for _, v in pairs(players:GetPlayers()) do
		if v.Name:lower():match(str) or v.DisplayName:lower():match(str) then
			return {v} -- Return as a table
		end
	end
	if str == "others" then
		for _, v in pairs(players:GetPlayers()) do
			if v ~= plr then
				table.insert(targetss, v)
			end
		end
		return targetss
	end
	return {} -- Return empty table if no match
end
local objectStates = {}

function Firetouchinterest(object1, object2, touch)
	if not object1 then 
		task.wait() 
		error("Sending A firetouchinterest With An Invalid Value: object1") 
		return 
	end
	if not object2 then 
		task.wait() 
		error("Sending A firetouchinterest With An Invalid Value: object2") 
		return 
	end
	if touch == 0 then 
		objectStates[object1] = {
			CFrame = object1.CFrame,
			CanCollide = object1.CanCollide
		}
		object1.CFrame = object2.CFrame
		object1.CanCollide = false
		task.wait()
		return

	elseif touch == 1 then
		local savedState = objectStates[object1]
		if savedState then
			object1.CFrame = savedState.CFrame
			object1.CanCollide = savedState.CanCollide
			objectStates[object1] = nil 
		end

		task.wait()
		return

	else 
		error("Sending A firetouchinterest With An Invalid Number: " .. tostring(touch))
		return
	end
end

function enableToolAnim()
	local animate = plr.Character.Animate
	if not animate:FindFirstChild("PlayEmote") then
		local PlayEmote = Instance.new("BindableFunction")
		PlayEmote.Name = "PlayEmote"
		PlayEmote.Parent = animate
	end
	animate.Disabled = true
	animate.Disabled = false
end

-- Disable tool animations
function disableToolAnim()
	local animate = plr.Character.Animate
	if not animate:FindFirstChild("PlayEmote") then
		enableToolAnim()
	end
	animate.PlayEmote:Destroy()
	animate.Disabled = true
	animate.Disabled = false
end

function stopsoundinobj(obje)
	for _, v in pairs(obje:GetDescendants()) do
		if v:IsA("Sound") then
			v.Playing = false
			v:Stop()
		end
	end
end

function kill(target)
	repeat task.wait() until target.Character and not target.Character:FindFirstChild("ForceField")

	local tool = getBp():FindFirstChildOfClass("Tool") or getChar():FindFirstChildOfClass("Tool")
	if not tool or not tool:FindFirstChild("Handle") then notice("Warning", "Failed Your Player Has No Tool") task.wait() return end

	if getChar():FindFirstChild("Humanoid").Sit then notice("Warning", "Failed Your Player Is Sitting") task.wait() return end
	if target.Character:FindFirstChild("Humanoid").Health <= 0 or getChar():FindFirstChild("Humanoid").Health <= 0 or target.Character:FindFirstChild("HumanoidRootPart") == nil then task.wait() return end
	if getChar():FindFirstChild("Humanoid").Health <= 0 then notice("Warning", "Failed Your Player Is Dead") task.wait() return end
	local originalGrip = tool.Grip
	local originalShape = tool.Handle.Shape
	local originalSize = tool.Handle.Size
	local toolGUI
	for _, v in pairs(game:GetService("CoreGui"):FindFirstChild("RobloxGui"):FindFirstChild("Backpack"):FindFirstChild("Hotbar"):GetDescendants()) do
		if v:FindFirstChild("ToolName") and v:FindFirstChild("ToolName") ~= nil and v:FindFirstChild("ToolName").Text == tool.Name then
			toolGUI = v
		end
	end
	tool.Handle.Massless = true
	tool.Grip = CFrame.new(0, 5774, 0)
	tool.Handle.Shape = "Ball"
	tool.Handle.Size = Vector3.new(10,10,10)
	disableToolAnim()
	tool.Parent = getChar()
	toolGUI:FindFirstChild("Equipped").Visible = false
	stopsoundinobj(tool.Handle)
	tool.Enabled = false
	repeat 
		Firetouchinterest(target.Character:FindFirstChild("HumanoidRootPart"), tool:FindFirstChild("Handle"), 0)
		Firetouchinterest(target.Character:FindFirstChild("HumanoidRootPart"), tool:FindFirstChild("Handle"), 1)
	until not target.Character or target.Character.Humanoid.Health <= 0 or getChar().Humanoid.Health <= 0 or not target.Character:FindFirstChild("HumanoidRootPart")
	tool.Enabled = true
	stopsoundinobj(tool.Handle)
	tool.Handle.Shape = originalShape
	tool.Handle.Size = originalSize
	enableToolAnim()
	toolGUI:FindFirstChild("Equipped").Visible = true
	stopsoundinobj(tool.Handle)
	getChar():FindFirstChildOfClass("Humanoid"):UnequipTools()
	tool.Grip = originalGrip
end
function firesound(soundid)
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://"..soundid..""
	sound.Parent = game:GetService("SoundService")
	sound:Play()
end

local function C_24()
	local script = G2L["24"];
	G2L["2b"]:GetPropertyChangedSignal("Text"):Connect(function()
		firesound(15675032796) 
	end)
	script.Parent.MouseButton1Click:Connect(function()
		local a = tws:Create(script.Parent,tweeninfo,{BorderColor3=Color3.fromRGB(35, 35, 35)})
		local b = tws:Create(script.Parent,tweeninfo,{BorderColor3=Color3.fromRGB(45, 45, 45)})
		a:Play()
		local target = getPlr(G2L["2b"].Text:lower())
		for i,v in pairs(target)do
			if #target == 0 then return end
			kill(v)
			if v.Character.Humanoid.Health <= 0 then 
				notice("Killed","Killed "..v.Name..".")
			elseif v.Character.Humanoid.Health >= 1 then
				notice("Failed","Failed "..v.Name.." Did Not Die")
			end
		end
		a.Completed:Wait()
		b:Play()
	end)
end;
task.spawn(C_24);
-- StarterGui.KillGui.Menu.FrameDrag
local function C_35()
local script = G2L["35"];
	local frame = script.Parent
	local userInput = game:GetService("UserInputService")
	
	local dragging = false
	local dragStart
	local startPos
	
	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
		end
	end)
	
	frame.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)
	
	userInput.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dragStart
			frame.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end
	end)
end;
task.spawn(C_35);

return G2L["1"], require;
