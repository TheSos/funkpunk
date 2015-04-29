package net.flashpunk
{
	import flash.desktop.ClipboardTransferMode;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	/**
	 * Base class for all graphical types that can be drawn by Entity.
	 */
	public class Graphic
	{
		/**
		 * If the graphic should update.
		 */
		public var active:Boolean = false;
		
		/**
		 * If the graphic should render.
		 */
		public var visible:Boolean = true;
		
		/**
		 * X offset.
		 */
		public var x:Number = 0;
		
		/**
		 * Y offset.
		 */
		public var y:Number = 0;
		
		/**
		 * X scrollfactor, effects how much the camera offsets the drawn graphic.
		 * Can be used for parallax effect, eg. Set to 0 to follow the camera,
		 * 0.5 to move at half-speed of the camera, or 1 (default) to stay still.
		 */
		public var scrollX:Number = 1;
		
		/**
		 * Y scrollfactor, effects how much the camera offsets the drawn graphic.
		 * Can be used for parallax effect, eg. Set to 0 to follow the camera,
		 * 0.5 to move at half-speed of the camera, or 1 (default) to stay still.
		 */
		public var scrollY:Number = 1;
		
		/**
		 * If the graphic should render at its position relative to its parent Entity's position.
		 */
		public var relative:Boolean = true;
		
		/**
		 * Constructor.
		 */
		public function Graphic() 
		{
			//_holder.addChild(_renderer);
		}
		
		/**
		 * Updates the graphic.
		 */
		public function update():void
		{
			
		}
		
		/**
		 * Renders the graphic to the screen buffer.
		 * @param	point		The position to draw the graphic.
		 * @param	camera		The camera offset.
		 */
		public function render(target:BitmapData, point:Point, camera:Point,clone:Boolean = false,clone_id:uint=-1):void
		{
			
		}
		
		/** @private Callback for when the graphic is assigned to an Entity. */
		protected function get assign():Function { return _assign; }
		protected function set assign(value:Function):void { _assign = value; }
		
		
		public function prerender():void 
		{
			for (var c:uint = 0; c < _holder.numChildren;c++ ) _holder.removeChildAt(c);
		}
		
		
		///** @private */ protected var _holder:Sprite = new Sprite;
		/** @private */ public var _holder:Sprite= new Sprite;
		///** @private */ public var _renderer:Bitmap = new Bitmap;
		
		// Graphic information.
		/** @private */ internal var _assign:Function;
		/** @private */ internal var _scroll:Boolean = true;
		/** @private */ protected var _point:Point = new Point;
	}
}