package kglog;

import Console;
import haxe.io.Path;

class Logger
{
	/**
	 * Path of the log directory.
	 */
	public static var logDir:String;

	/**
	 * Name of the log file.
	 */
	public static var logFile:String = "yyyy-mm-dd@hh:mm:ss.log";

	public static var sessionLog:String;

	/**
	 * Configures the logger.
	 * @param  LogDir  Path of the program's log file.
	 */
	public static function config(LogDir:String):Void
	{
		logDir = LogDir;

		var now = Date.now();
		var sDate = now.getFullYear() + "-" + now.getMonth() + "-" + now.getDate();
		var sTime = now.getHours() + ":" + now.getMinutes() + ":" + now.getSeconds();
		logFile = sDate + "@" + sTime + ".log";
		var p = Path.join([logDir, logFile]);
		/*File.saveContent(p, sDate);
			File.saveContent(p, sTime);
			File.saveContent(p, ""); */
		// File.saveContent(p, "Log " + sDate + " at " + sTime + "\n");
		sessionLog = sessionLog + "Log " + sDate + " at " + sTime + "\n";
	}

	/**
	 * Send a string of text to the program's log file
	 * and to the console.
	 * @param  Text  String of text to log.
	 */
	public static function simpleLog(Text:Any):Void
	{
		Console.log(Text);

		var p = Path.join([logDir, logFile]);
		// File.saveContent(p, Text);
		sessionLog = sessionLog + Text + "\n";
	}

	/**
	 * Log an error to the log file and console.
	 * @param  Error     The error text to log.
	 * @param  Location  Class name and path of error location
	 */
	public static function error(Error:Any, Location:Any)
	{
		Console.error("Error: " + Error + " at " + Location);

		var p = Path.join([logDir, logFile]);
		// File.saveContent(p, "Error at " + Location + ": " + Error);
		sessionLog = sessionLog + "Error at " + Location + ": " + Error;
	}
}
