require_relative 'ext/raylib/raylib'
def color(r, g, b, a = 255)
  col = Raylib::Color.new
  col.r = r
  col.g = g
  col.b = b
  col.a = a
  col
end
MAROON   = color(190,  33,  55, 255)
RAYWHITE = color(245, 245, 245, 255)
Raylib.InitWindow(500, 500, "Ruby Raylib test")
Raylib.SetTargetFPS(30)
until Raylib.WindowShouldClose
  Raylib.BeginDrawing
    Raylib.ClearBackground(RAYWHITE)
    Raylib.DrawCircle(250, 250, 200, MAROON)
  Raylib.EndDrawing
end