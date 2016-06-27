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
	
	public var id(default, set) : Int;
	public var name(default, set) : String;
	public var createdAt(default, set) : Date;
	public var updatedAt(default, set) : Date;
	
	public function new(?name : String) 
	{
		set_name(name);
		this.maps = new Array<Map<String, Dynamic>>();
	}
	
	function set_id(id)
	{
		return this.id = id;
	}
	
	function set_name(name)
	{
		return this.name = name;
	}
	
	function set_createdAt(createdAt)
	{
		return this.createdAt = createdAt;
	}
	
	function set_updatedAt(updatedAt)
	{
		return this.updatedAt = updatedAt;
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
	
}