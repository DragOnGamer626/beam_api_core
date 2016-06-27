package pro.beam.api.resources;

/**
 * Chat
 * @author DragOnGamer626
 */
class Chat extends AbstractResource 
{
	var users : Array<User>;
	var messages : Array<Message>;
	
	public var linksAllowed(default, set) : Bool = false;
	public var linksClickable(default, set) : Bool = false;
	public var slowChat(default, set) : Int;
	
	public function new(name:String) 
	{
		super(name);
		this.users = new Array<User>();
		this.messages = new Array<Message>();
	}
	
	function set_slowChat(slowChat)
	{
		return this.slowChat = slowChat;
	}
	
	public function addUser(user : User) : Chat
	{
		this.users.push(user);
		return this;
	}
	
	public function addMessage(message : Message) : Chat
	{
		this.messages.push(message);
		return this;
	}
	
	public function getUsers() : Array<User>
	{
		return users;
	}
	
	public function getMessages() : Array<Message>
	{
		return messages;
	}
}