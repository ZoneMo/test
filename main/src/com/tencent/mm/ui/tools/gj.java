package com.tencent.mm.ui.tools;

import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.tools.jsapi.d;
import java.util.ArrayList;

final class gj
  implements d
{
  gj(WebViewUI paramWebViewUI)
  {
  }

  public final ArrayList aNS()
  {
    return WebViewUI.a(this.hnv).aNS();
  }

  public final JsapiPermissionWrapper aOb()
  {
    JsapiPermissionWrapper localJsapiPermissionWrapper = WebViewUI.a(this.hnv).aNQ();
    aa.d("MicroMsg.WebViewUI", "jsPermission value = " + localJsapiPermissionWrapper.avD());
    aa.d("MicroMsg.WebViewUI", "jsPermission BitSet2 value = " + localJsapiPermissionWrapper.avH());
    return localJsapiPermissionWrapper;
  }

  public final void aOc()
  {
    WebViewUI.k(this.hnv);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gj
 * JD-Core Version:    0.6.2
 */