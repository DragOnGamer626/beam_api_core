package pro.beam.api.resources;

import haxe.Json;
import pro.beam.api.utils.Serializable;

/**
 * AbstractResource
 * @author DragOnGamer626
 */
class AbstractResource implements Serializable 
{
	var maps : Array<Map<String, Dynamic>>;
	var json : String;
	var name : String;
	
	public function new(name : String) 
	{
		this.name = name;
		this.maps = new Array<Map<String, Dynamic>>();
	}
	
	
	/* INTERFACE pro.beam.api.utils.Serializable */
	
	public function add(name:String, value:Dynamic):Serializable 
	{
		var map = null;
		if (name != null && value != null)
		{
			map = new Map<String, Dynamic>();
			map.set(name, value);
			maps.push(map);
		}
		return this;
	}
	
	public function build():Void 
	{
		if (maps != null)
			this.json = Json.stringify(maps);
	}
	
	public function getJson() : String
	{
		return json;
	}
		
	public function getResources() : Array<Map<String, Dynamic>>
	{
		return maps;
	}
	
	public function getName() : String
	{
		return name;
	}
	
}