package pro.beam.api.resources;

/**
 * User
 * @author DragOnGamer626
 */
class User extends AbstractResource 
{
	public var userName(default, set) : String;
	public var userRole(default, set) : String;
	public var id(default, set) : Int;

	public function new(name:String, ?userName, ?userRole, ?id) 
	{
		super(name);
		set_userName(userName);
		set_userRole(userRole);
		set_id(id);
	}
	
	function set_userName(userName)
	{
		return this.userName = userName;
	}
	
	function set_userRole(userRole)
	{
		return this.userRole = userRole;
	}
	
	function set_id(id)
	{
		return this.id = id;
	}
	
}