package com.tencent.mm.plugin.extqlauncher;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.tencent.mm.c.a.ef;
import com.tencent.mm.c.a.eg;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

final class g extends com.tencent.mm.sdk.b.g
{
  public g(b paramb)
  {
  }

  public final boolean a(e parame)
  {
    if (!b.a(this.dgz))
      aa.e("MicroMsg.SubCoreExtQLauncher", "!isPluginInstall");
    while (true)
    {
      return false;
      if (al.getContext() == null)
      {
        aa.e("MicroMsg.SubCoreExtQLauncher", "MMApplicationContext null");
        return false;
      }
      ef localef = (ef)parame;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(localef.bPd.bOY);
      arrayOfObject1[1] = localef.bPd.bPg;
      aa.e("MicroMsg.SubCoreExtQLauncher", "GetScanCodeEvent callback flag = %s, url = %s", arrayOfObject1);
      try
      {
        switch (localef.bPd.bOY)
        {
        case 0:
          if ((!cj.hX(localef.bPd.bPg)) && (localef.bPd.bPg.startsWith("qlauncher://")))
          {
            Intent localIntent = new Intent("android.intent.action.VIEW");
            localIntent.setComponent(new ComponentName("com.tencent.qlauncher", "com.tencent.qlauncher.thirdpartycoop.DispatchActivity"));
            localIntent.setData(Uri.parse(localef.bPd.bPg));
            localIntent.setFlags(268435456);
            al.getContext().startActivity(localIntent);
            localef.bPe.ret = 1;
            return true;
          }
          break;
        }
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localException.getMessage();
        aa.b("MicroMsg.SubCoreExtQLauncher", "Exception in ScanCodeResultEvent, %s", arrayOfObject2);
        return false;
      }
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.extqlauncher.g
 * JD-Core Version:    0.6.2
 */