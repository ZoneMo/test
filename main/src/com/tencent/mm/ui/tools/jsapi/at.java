package com.tencent.mm.ui.tools.jsapi;

import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.plugin.webview.stub.ao;
import com.tencent.mm.sdk.platformtools.aa;

public final class at
{
  public static void a(ao paramao, String paramString1, boolean paramBoolean, String paramString2)
  {
    int i;
    String str1;
    String str2;
    if (paramao == null)
    {
      i = 1;
      str1 = "";
      str2 = "";
      if (i == 0)
        break label235;
      str1 = "";
      break label325;
    }
    while (true)
    {
      Object localObject2;
      Object localObject1;
      String str4;
      label44: String str5;
      if (i != 0)
      {
        localObject2 = "";
        localObject1 = str2;
        str4 = str1;
        StringBuilder localStringBuilder = new StringBuilder();
        if (str4 == null)
          str4 = "";
        localStringBuilder.append(str4);
        localStringBuilder.append(",");
        if (localObject1 == null)
          localObject1 = "";
        localStringBuilder.append((String)localObject1);
        localStringBuilder.append(",");
        if (localObject2 == null)
          localObject2 = "";
        localStringBuilder.append((String)localObject2);
        localStringBuilder.append(",");
        if (paramString1 == null)
          paramString1 = "";
        localStringBuilder.append(paramString1);
        localStringBuilder.append(",");
        if (!paramBoolean)
          break label318;
        str5 = "1";
        label158: localStringBuilder.append(str5);
        localStringBuilder.append(",");
        if (paramString2 == null)
          paramString2 = "";
        localStringBuilder.append(paramString2);
        String str6 = localStringBuilder.toString();
        aa.d("MicroMsg.WebViewSecurityUtil", "report: " + str6);
        m.dZN.j(10417, str6);
        return;
        i = 0;
        break;
      }
      label235: 
      do
      {
        try
        {
          str1 = paramao.aoV();
          continue;
          str2 = paramao.aoR();
          break;
          String str7 = paramao.aoW();
          localObject2 = str7;
        }
        catch (Exception localException)
        {
          String str3 = str2;
          str4 = str1;
          aa.w("MicroMsg.WebViewSecurityUtil", "report, ex = " + localException.getMessage());
          localObject1 = str3;
          localObject2 = "";
        }
        break label44;
        str5 = "0";
        break label158;
      }
      while (i == 0);
      label318: label325: str2 = "";
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.at
 * JD-Core Version:    0.6.2
 */