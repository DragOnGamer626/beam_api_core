package pro.beam.api.utils;

/**
 * @author DragOnGamer626
 */
interface Serializable 
{
	public function add(name : String, value : Dynamic) : Serializable;
	
	public function build() : Void;
	
	public function getJson() : String;
	
}