package com.tencent.mm.plugin.extqlauncher;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;

final class d
  implements Runnable
{
  d(b paramb)
  {
  }

  public final void run()
  {
    while (true)
    {
      int k;
      try
      {
        b.a(this.dgz, System.currentTimeMillis());
        List localList = al.getContext().getPackageManager().getInstalledApplications(128);
        if (localList != null)
          break label346;
        aa.e("MicroMsg.SubCoreExtQLauncher", "getInstalledApplications return null");
        b.a(this.dgz, false);
        return;
        if (i >= localList.size())
          break label312;
        ApplicationInfo localApplicationInfo = (ApplicationInfo)localList.get(i);
        if ((localApplicationInfo == null) || (!cj.hW(localApplicationInfo.packageName).startsWith("com.tencent.qlauncher")) || (localApplicationInfo.metaData == null))
          break label352;
        String str = localApplicationInfo.metaData.getString("qlauncher_wx_coop");
        if ((str == null) || (str.length() <= 0))
        {
          Object[] arrayOfObject3 = new Object[2];
          arrayOfObject3[0] = localApplicationInfo.packageName;
          arrayOfObject3[1] = Long.valueOf(System.currentTimeMillis() - b.c(this.dgz));
          aa.c("MicroMsg.SubCoreExtQLauncher", "qlauncher_wx_coop not found, %s, costTime = %s", arrayOfObject3);
          b.a(this.dgz, false);
          break label352;
        }
        String[] arrayOfString = str.split(",");
        if (arrayOfString == null)
          break label300;
        int j = arrayOfString.length;
        k = 0;
        if (k >= j)
          break label300;
        if (cj.hW(arrayOfString[k]).trim().equalsIgnoreCase("fun1"))
        {
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = localApplicationInfo.packageName;
          aa.e("MicroMsg.SubCoreExtQLauncher", "founded qlauncher, %s", arrayOfObject4);
          b.a(this.dgz, true);
          return;
        }
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = localException.getMessage();
        aa.b("MicroMsg.SubCoreExtQLauncher", "exception in getApplicationInfo, %s", arrayOfObject1);
        b.a(this.dgz, false);
        return;
      }
      k++;
      continue;
      label300: b.a(this.dgz, false);
      break label352;
      label312: Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(System.currentTimeMillis() - b.c(this.dgz));
      aa.e("MicroMsg.SubCoreExtQLauncher", "qlauncher not founded, costTime = %s", arrayOfObject2);
      return;
      label346: int i = 0;
      continue;
      label352: i++;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.extqlauncher.d
 * JD-Core Version:    0.6.2
 */