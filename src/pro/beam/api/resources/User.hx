package pro.beam.api.resources;

/**
 * User
 * @author DragOnGamer626
 */
class User extends AbstractResource 
{
	public var userName(default, set) : String;
	public var id(default, set) : Int;
	
	var roles : Array<String>;
	var permissions : Array<String>;

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
	
	function set_id(id)
	{
		return this.id = id;
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