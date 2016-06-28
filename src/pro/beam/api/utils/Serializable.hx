package pro.beam.api.utils;

/**
 * @author DragOnGamer626
 */
interface Serializable 
{
	public function addtoJson(name : String, value : Dynamic) : Serializable;
	
	public function serialize() : Void;
	
	public function getJson() : String;
	
}