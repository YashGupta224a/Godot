extends Camera2D
class_name CustomCamera

func _ready() -> void:
    zoom = Vector2(2,2)
    make_current()
    enabled=true


using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Godot;

namespace Firstproject.scripts.camera
{
    public class CustomCamera : Camera2D
    {
        public override void _Ready()
        {
            Zoom = new Vector2(2, 2);
            MakeCurrent();
            Enabled = true;
        }
    }
}
    

