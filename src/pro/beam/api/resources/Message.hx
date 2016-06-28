package pro.beam.api.resources;

/**
 * Message
 * @author DragOnGamer626
 */
class Message extends AbstractResource 
{
	public var data(default, set) : String;
	public var type(default, set) : String;
	
	public function new(?name:String, ?data, ?type) 
	{
		super(name);
		set_data(data);
		set_type(type);
	}
	
	function set_data(data)
	{
		return this.data = data;
	}
	
	function set_type(type)
	{
		return this.type = type;
	}
}