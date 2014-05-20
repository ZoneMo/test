package com.tencent.mm.sdk.a;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.a.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class a
{
  public static boolean a(Context paramContext, b paramb)
  {
    if ((paramContext == null) || (paramb == null))
    {
      aa.e("MicroMsg.SDK.MMessageAct", "send fail, invalid argument");
      return false;
    }
    if (cj.hX(paramb.gbQ))
    {
      aa.e("MicroMsg.SDK.MMessageAct", "send fail, invalid targetPkgName, targetPkgName = " + paramb.gbQ);
      return false;
    }
    if (cj.hX(paramb.gbR))
      paramb.gbR = (paramb.gbQ + ".wxapi.WXEntryActivity");
    aa.d("MicroMsg.SDK.MMessageAct", "send, targetPkgName = " + paramb.gbQ + ", targetClassName = " + paramb.gbR);
    Intent localIntent = new Intent();
    localIntent.setClassName(paramb.gbQ, paramb.gbR);
    if (paramb.gbS != null)
      localIntent.putExtras(paramb.gbS);
    String str1 = paramContext.getPackageName();
    localIntent.putExtra("_mmessage_sdkVersion", 570490883);
    localIntent.putExtra("_mmessage_appPackage", str1);
    localIntent.putExtra("_mmessage_content", paramb.content);
    String str2 = paramb.content;
    StringBuffer localStringBuffer = new StringBuffer();
    if (str2 != null)
      localStringBuffer.append(str2);
    localStringBuffer.append(570490883);
    localStringBuffer.append(str1);
    localStringBuffer.append("mMcShCsTr");
    localIntent.putExtra("_mmessage_checksum", f.h(localStringBuffer.toString().substring(1, 9).getBytes()).getBytes());
    if (paramb.flags == -1)
      localIntent.addFlags(268435456).addFlags(134217728);
    try
    {
      while (true)
      {
        paramContext.startActivity(localIntent);
        aa.d("MicroMsg.SDK.MMessageAct", "send mm message, intent=" + localIntent);
        return true;
        localIntent.setFlags(paramb.flags);
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.getMessage();
      aa.b("MicroMsg.SDK.MMessageAct", "send fail, ex = %s", arrayOfObject);
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.a.a
 * JD-Core Version:    0.6.2
 */