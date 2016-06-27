package pro.beam.api.resources;

/**
 * Notification
 * @author DragOnGamer626
 */
class Notification extends AbstractResource 
{
	public var readAt(default, set) : Date;
	public var type(default, set) : String;
	public var user(default, set) : User;
	
	var data : Array<Dynamic>;
	
	public function new(name:String)
	{
		super(name);
		this.data = new Array<Dynamic>();
	}
	
	function set_readAt(readAt)
	{
		return this.readAt = readAt;
	}
	
	function set_type(type)
	{
		return this.type = type;
	}
	
	function set_user(user)
	{
		return this.user = user;
	}
	
	public function addData(data) : Notification
	{
		this.data.push(data);
		return this;
	}
	
	public function getData() : Array<Dynamic>
	{
		return data;
	}

}