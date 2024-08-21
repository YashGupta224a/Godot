using System;
using Godot;

namespace Firstproject.scripts.Buttons
{
    public partial class PlayButtonNew : GameButtonNew
    {
        public override void _Ready()
        {
            Position = new Vector2(100, 200);
            Size = new Vector2(100, 100);
            Text = "new play button";
        }
    }
}