package pro.beam.api.utils;

/**
 * @author DragOnGamer626
 */
interface Serializable 
{
	public function addToJson(name : String, value : Dynamic) : Serializable;
	
	public function serialize() : Void;
	
	public function getJson() : String;
	
}