package pro.beam.api.resources;

/**
 * Channel
 * @author DragOnGamer626
 */
class Channel extends AbstractResource 
{
	public var id(default, set) : Int;
	public var online(default, set) : Bool = false;
	public var partnered(default, set) : Bool = false;
	public var interactive(default, set) : Bool = false;
	public var followers(default, set) : Int;
	public var subscribers(default, set) : Int;
	public var title(default, set) : String;
	public var game(default, set) : String;
	
	public function new(name:String, ?id) 
	{
		super(name);
		set_id(id);
	}
	
	function set_id(id)
	{
		return this.id = id;
	}
	
	function set_online(online)
	{
		return this.online = online;
	}
	
	function set_partnered(partnered)
	{
		return this.partnered = partnered;
	}
	
	function set_interactive(interactive)
	{
		return this.interactive = interactive;
	}
	
	function set_followers(followers)
	{
		return this.followers = followers;
	}
	
	function set_subscribers(subscribers)
	{
		return this.subscribers = subscribers;
	}
	
	function set_title(title)
	{
		return this.title = title;
	}
	
	function set_game(game)
	{
		return this.game = game;
	}
}