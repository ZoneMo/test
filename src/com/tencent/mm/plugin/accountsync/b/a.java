package com.tencent.mm.plugin.accountsync.b;

import android.content.Context;
import android.content.res.AssetManager;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.HashMap;
import java.util.Map;

public final class a
{
  public static a cHZ = new a();
  private Map cIa;

  public final Map ai(Context paramContext)
  {
    while (true)
    {
      int i;
      try
      {
        String str1 = cj.c(paramContext.getAssets().open("config/EmailAddress.xml"));
        if (cj.hX(str1))
          return null;
        Map localMap1 = u.aL(str1, "config");
        if ((localMap1 == null) || (localMap1.isEmpty()))
        {
          aa.d("MicroMsg.EmailFormater", "values null");
          return null;
        }
        if (this.cIa == null)
        {
          this.cIa = new HashMap();
          i = 0;
          StringBuilder localStringBuilder = new StringBuilder(".config.format");
          if (i == 0)
          {
            localObject = "";
            String str2 = localObject;
            if (localMap1.get(str2) == null)
              continue;
            String str3 = str2 + ".emaildomain";
            String str4 = str2 + ".loginpage";
            String str5 = (String)localMap1.get(str3);
            String str6 = (String)localMap1.get(str4);
            if ((cj.hX(str5)) || (cj.hX(str6)))
              break label274;
            this.cIa.put(str5, str6);
            break label274;
          }
        }
        else
        {
          return this.cIa;
        }
        Object localObject = Integer.valueOf(i);
        continue;
        Map localMap2 = this.cIa;
        return localMap2;
      }
      catch (Exception localException)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.getMessage();
        aa.b("MicroMsg.EmailFormater", "parse email failed:[%s]", arrayOfObject);
        return null;
      }
      label274: i++;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.b.a
 * JD-Core Version:    0.6.2
 */