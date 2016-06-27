package pro.beam.api.resources;

/**
 * User
 * @author DragOnGamer626
 */
class User extends AbstractResource 
{
	public var userName(default, set) : String;
	
	var roles : Array<String>;
	var permissions : Array<String>;
	
	public var channel(default, set) : Channel;
	
	public var twitter(default, set) : String;
	public var facebook(default, set) : String;
	public var youtube(default, set) : String;
	
	public var deletedAt(default, set) : Date;

	public function new(name:String, ?userName, ?id) 
	{
		super(name);
		set_userName(userName);
		set_id(id);
		this.roles = new Array<String>();
		this.permissions = new Array<String>();
	}
	
	function set_userName(userName)
	{
		return this.userName = userName;
	}
	
	function set_channel(channel)
	{
		return this.channel = channel;
	}
	
	function set_twitter(twitter)
	{
		return this.twitter = twitter;
	}
	
	function set_facebook(facebook)
	{
		return this.facebook = facebook;
	}
	
	function set_youtube(youtube)
	{
		return this.youtube = youtube;
	}
	
	function set_deletedAt(deletedAt)
	{
		return this.deletedAt = deletedAt;
	}
		
	public function addRole(role) : User
	{
		this.roles.push(role);
		return this;
	}
	
	public function addPermission(permission) : User
	{
		this.permissions.push(permission);
		return this;
	}
	
	public function getRoles() : Array<String>
	{
		return roles;
	}
	
	public function getPermissions() : Array<String>
	{
		return permissions;
	}
}