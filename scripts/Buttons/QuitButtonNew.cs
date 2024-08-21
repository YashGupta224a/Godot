using System;
using Godot;

namespace Firstproject.scripts.Buttons
{
        public partial class QuitButtonNew : GameButtonsNew
    {
        public override void _Ready()
        {
            Position = new Vector2(600, 200);
            Size = new Vector2(100, 100);
            Text = "new quit button";
        }
    }

}