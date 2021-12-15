package kglog;

import kglog.util.Reference;

class Main
{
	static public function main():Void
	{
		trace("Starting KGLog " + Reference.VERSION);
		init();
	}

	public function init()
	{
		postInit();
	}

	public function postInit()
	{
		Console.log("<red>  _  __    ___     _               __ _  </red>");
		Console.log("<orange> | |/ /   / __|   | |      ___    / _` | </orange>");
		Console.log("<yellow> | ' <   | (_ |   | |__   / _ \\   \\__, | </yellow>");
		Console.log("<green> |_|\\_\\   \\___|   |____|  \\___/   |___/  </green>");
		trace("KGLog version " + Reference.VERSION + " has been loaded");
	}
}
