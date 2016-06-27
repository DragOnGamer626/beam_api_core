package pro.beam.api.resources;

/**
 * Chat
 * @author DragOnGamer626
 */
class Chat extends AbstractResource 
{
	var users : Array<User>;
	
	public function new(name:String) 
	{
		super(name);
		this.users = new Array<User>();
	}
	
	public function addUser(user : User) : Chat
	{
		this.users.push(user);
		return this;
	}
	
	public function getUsers() : Array<User>
	{
		return users;
	}
}