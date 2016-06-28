package pro.beam.api.resources;

/**
 * Cover
 * @author DragOnGamer626
 */
class Cover extends AbstractResource 
{
	public var remotePath(default, set) : String;
	public var type(default, set) : String;
	public var url(default, set) : String;
	
	public function new(?name:String) 
	{
		super(name);
		
	}
	
	function set_remotePath(remotePath)
	{
		return this.remotePath = remotePath;
	}
	
	function set_type(type)
	{
		return this.type = type;
	}
	
	function set_url(url)
	{
		return this.url = url;
	}
	
}