using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Godot;

namespace Firstproject.scripts.Buttons
{
    public partial class GameButtonNew : Button
    {
        public override void _Ready()
        {
            GD.Print("c# script");
        }
    }
}