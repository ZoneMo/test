package com.tencent.mm.ui.account;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.ak.a;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.ui.tools.dg;

public final class av
{
  public static void a(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3)
  {
    dg localdg = new dg(paramContext);
    localdg.a(new aw(paramInt, paramContext));
    localdg.b(new ax(paramContext, paramString2, paramString1, paramString3));
    localdg.aNy();
  }

  public static void am(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("rawUrl", paramString);
    localIntent.putExtra("showShare", false);
    localIntent.putExtra("show_bottom", false);
    localIntent.putExtra("needRedirect", false);
    localIntent.putExtra("neverGetA8Key", true);
    localIntent.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
    localIntent.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
    a.b(paramContext, "webview", "com.tencent.mm.ui.tools.WebViewUI", localIntent);
  }

  public static void y(Context paramContext, int paramInt)
  {
    a(paramContext, paramInt, null, null, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.av
 * JD-Core Version:    0.6.2
 */