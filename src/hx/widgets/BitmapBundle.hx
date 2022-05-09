package hx.widgets;

#if ((wxMAJOR_VERSION >= 3) && (wxMINOR_VERSION >= 1) && (wxRELEASE_NUMBER >= 6))

import cpp.Pointer;
import wx.widgets.BitmapBundle in WxBitmapBundle;

class BitmapBundle {
    private var _ref:Pointer<WxBitmapBundle>;

    public function new() {
        _ref = WxBitmapBundle.createInstance().reinterpret();
    }

    public function destroy():Bool {
        if (_ref != null) {
            _ref.destroy();
            _ref = null;
        }
        return true;
    }

    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Helpers
    //////////////////////////////////////////////////////////////////////////////////////////////////////////
    private var bitmapBundleRef(get, null):Pointer<WxBitmapBundle>;
    private function get_bitmapBundleRef():Pointer<WxBitmapBundle> {
        return _ref.reinterpret();
    }
}

#end