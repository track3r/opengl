/*
 * Created by IntelliJ IDEA.
 * User: rcam
 * Date: 04/06/14
 * Time: 16:08
 */
package gl;

import msignal.Signal;
import types.Touch;

/// implemented in openglcontext_ios, openglcontext_android, openglcontext_html5, openglcontext_mac
extern class GLContext
{
	public static var onDrawOnMainContext : Signal0;
	public static var onTouchesOnMainContext : Signal1<Array<Touch>>;
	public static var mouseXInMainContext(default, null) : Int;
	public static var mouseYInMainContext(default, null) : Int;

    public var onContextSizeChanged : Signal0;
    public var contextWidth(default, null) : Int;
    public var contextHeight(default, null) : Int;

    public static function getMainContext():GLContext;

    /// should be called when the application starts, so the initial context is created.
    public static function setupMainContext():Void;

	/// private for now, we only support the main context atm
    private function new(params:GLContextParameters):Void;

    public function bind():Void;

    public function destroy():Void;

}