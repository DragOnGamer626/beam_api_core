package pro.beam.api.resources;

/**
 * User
 * @author DragOnGamer626
 */
class User extends AbstractResource 
{
	public var userName(default, set) : String;
	public var verified(default, set) : Bool;
	
	var groups : Array<String>;
	var roles : Array<String>;
	var permissions : Array<String>;
	var achievements : Array<Achievement>;
	
	public var channel(default, set) : Channel;
	
	public var twitter(default, set) : String;
	public var facebook(default, set) : String;
	public var youtube(default, set) : String;
	public var player_me(default, set) : String;
	
	public var deletedAt(default, set) : Date;

	public function new(userName, ?id) 
	{
		super();
		set_userName(userName);
		set_id(id);
		this.groups = new Array<String>();
		this.roles = new Array<String>();
		this.permissions = new Array<String>();
		this.achievements = new Array<Achievement>();
	}
	
	function set_userName(userName)
	{
		return this.userName = userName;
	}
	
	function set_verified(verified)
	{
		return this.verified = verified;
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
	
	function set_player_me(player_me)
	{
		return this.player_me = player_me;
	}
	
	function set_deletedAt(deletedAt)
	{
		return this.deletedAt = deletedAt;
	}
	
	public function addGroup(group) : User
	{
		this.groups.push(group);
		return this;
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
	
	public function addAchievement(achievement) : User
	{
		this.achievements.push(achievement);
		return this;
	}
	
	public function getGroups() : Array<String>
	{
		return groups;
	}
	
	public function getRoles() : Array<String>
	{
		return roles;
	}
	
	public function getPermissions() : Array<String>
	{
		return permissions;
	}
	
	public function getAchievements() : Array<Achievement>
	{
		return achievements;
	}
}