package pro.beam.api.resources;

/**
 * Notification
 * @author DragOnGamer626
 */
class Notification extends AbstractResource 
{
	public var createdAt(default, set) : Date;
	public var readAt(default, set) : Date;
	
	var data : Array<Dynamic>;
	
	public function new(name:String)
	{
		super(name);
		this.data = new Array<Dynamic>();
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