package com.tencent.mm.ui.tools;

import com.tencent.mm.ag.e;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;

public final class fz
{
  private static e hmD;

  public static boolean a(String paramString, JsapiPermissionWrapper paramJsapiPermissionWrapper, GeneralControlWrapper paramGeneralControlWrapper, al paramal)
  {
    ga localga = new ga();
    localga.hmE = paramJsapiPermissionWrapper;
    localga.hmF = paramGeneralControlWrapper;
    if (hmD == null)
      hmD = new e();
    return e.b(paramString, localga, paramal);
  }

  public static ga b(String paramString, al paramal)
  {
    if (hmD == null)
      hmD = new e();
    ga localga = new ga();
    if (e.a(paramString, localga, paramal))
      return localga;
    return null;
  }

  public static boolean c(String paramString, al paramal)
  {
    if (hmD == null)
      hmD = new e();
    return e.a(paramString, paramal);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fz
 * JD-Core Version:    0.6.2
 */