package pro.beam.api.resources.enums;

/**
 * @author DragOnGamer626
 */
@:enum abstract Roles(String)
{
	var BANNED = "Banned";
	var MUTED = "Muted";
	var USER = "User";
	var PRO = "Pro";
	var SUB = "Subscriber";
	var MOD = "Mod";
	var GM = "Global Mod";
	var FOUNDER = "Founder";
	var STAFF = "Staff";
	var OWNER = "Owner";
}