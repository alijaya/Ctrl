package ;

import flash.display.Sprite;
import flash.events.Event;
import flash.Lib;

import ctrl.Ctrl;


class Main 
{
	var sp:Sprite;

	public function new() : Void
	{
		sp = new Sprite();
		sp.graphics.beginFill(0xFF0000);
		sp.graphics.drawCircle(0, 0, 10);

		//Ctrl.instance.bufferLength = 10;

		Lib.current.addChild(sp);

		Lib.current.addEventListener(Event.ENTER_FRAME, tick);
	}

	public function tick(e:Event) : Void
	{
		var c = Ctrl.instance;
		trace(c.lastPressed);
		
		if(c.isDown("UP")) sp.y -= 10;
		if(c.isDown("DOWN")) sp.y += 10;
		if(c.isDown("LEFT")) sp.x -= 10;
		if(c.isDown("RIGHT")) sp.x += 10;
		
		c.update();
	}
	
	
	
	static function main()
	{
		new Main();
	}
}
