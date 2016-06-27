package pro.beam.api.resources;

/**
 * Channel
 * @author DragOnGamer626
 */
class Channel extends AbstractResource 
{
	public var id(default, set) : Int;
	
	public function new(name:String, ?id) 
	{
		super(name);
		set_id(id);
	}
	
	function set_id(id)
	{
		return this.id = id;
	}
	
}