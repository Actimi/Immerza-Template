@tool
extends Node3D;

@export var maximum_refresh_rate : int = 90

var xr_interface : XRInterface;

func _ready():
	xr_interface = XRServer.find_interface("OpenXR");
	if xr_interface and xr_interface.is_initialized():
		print("OpenXR initialized successfully");
		
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED);
		get_viewport().use_xr = true;
		
	else:
		print("OpenXR failed to initialize, check headset connection.");
