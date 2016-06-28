package pro.beam.api.resources;

/**
 * Channel
 * @author DragOnGamer626
 */
class Channel extends AbstractResource 
{
	public var audience(default, set) : String;
	public var badge(default, set) : Badge;
	public var badgeID(default, set) : String;
	// Cache param here
	public var cover(default, set) : Cover;
	public var coverID(default, set) : String;
	public var deletedAt(default, set) : Date;
	public var description(default, set) : String;
	public var featured(default, set) : Bool = false;
	public var ftl(default, set) : Int;
	public var online(default, set) : Bool = false;
	public var partnered(default, set) : Bool = false;
	public var interactive(default, set) : Bool = false;
	public var followers(default, set) : Int;
	public var subscribers(default, set) : Int;
	public var title(default, set) : String;
	public var streamType(default, set) : String;
	public var game(default, set) : String;
	
	public function new(?name:String, ?id) 
	{
		super(name);
		set_id(id);
	}
	
	function set_audience(audience)
	{
		return this.audience = audience;
	}
	
	function set_badge(badge)
	{
		return this.badge = badge;
	}
	
	function set_badgeID(badgeID)
	{
		return this.badgeID = badgeID;
	}
	
	function set_cover(cover)
	{
		return this.cover = cover;
	}
	
	function set_coverID(coverID)
	{
		return this.coverID = coverID;
	}
	
	function set_deletedAt(deletedAt)
	{
		return this.deletedAt = deletedAt;
	}
	
	function set_description(description)
	{
		return this.description = description;
	}
	
	function set_featured(featured)
	{
		return this.featured = featured;
	}
	
	function set_ftl(ftl)
	{
		return this.ftl = ftl;
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
	
	function set_streamType(streamType)
	{
		return this.streamType = streamType;
	}
	
	function set_game(game)
	{
		return this.game = game;
	}
	
}