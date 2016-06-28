package pro.beam.api.resources;

/**
 * Slug
 * @author DragOnGamer626
 */
class Achievement extends AbstractResource 
{
	public var slug(default, set) : String;
	public var description(default, set) : String;
	public var points(default, set) : Int;
	public var earned(default, set) : Bool = false;
	public var progress(default, set) : Float;
	
	public function new(name:String, ?description) 
	{
		super(name);
		set_description(description);
	}
	
	function set_slug(slug)
	{
		return this.slug = slug;
	}
	
	function set_description(description)
	{
		return this.description = description;
	}
	
	function set_points(points)
	{
		return this.points = points;
	}
	
	function set_earned(earned)
	{
		return this.earned = earned;
	}
	
	function set_progress(progress)
	{
		return this.progress = progress;
	}
}