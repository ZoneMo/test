package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.Context;
import android.os.Bundle;
import com.tencent.mm.sdk.a.a;
import com.tencent.mm.sdk.d.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class b
{
  public static boolean a(Context paramContext, String paramString, c paramc, com.tencent.mm.sdk.d.b paramb)
  {
    aa.d("MicroMsg.PayCallbackHelper", "callback, packageName = " + paramString);
    String str;
    if ((paramb == null) || (cj.hX(paramb.gci)))
    {
      str = paramString + ".wxapi.WXPayEntryActivity";
      if ((paramb != null) && (paramb.gcj != -1))
        break label196;
    }
    label196: for (int i = 268435456; ; i = paramb.gcj)
    {
      aa.d("MicroMsg.PayCallbackHelper", "callback, cbPkg = " + paramString + ", cbCls = " + str + ", cbFlags(hex) = " + Integer.toHexString(i));
      Bundle localBundle = new Bundle();
      localBundle.putString("wx_token_key", "com.tencent.mm.openapi.token");
      if (paramc != null)
        paramc.h(localBundle);
      com.tencent.mm.sdk.a.b localb = new com.tencent.mm.sdk.a.b();
      localb.gbQ = paramString;
      localb.gbR = str;
      localb.gbS = localBundle;
      localb.flags = i;
      return a.a(paramContext, localb);
      str = paramb.gci;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.b
 * JD-Core Version:    0.6.2
 */