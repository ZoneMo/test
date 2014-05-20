package com.tencent.mm.booter;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.h;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.k;
import java.util.List;

public final class aj
{
  public static void run()
  {
    boolean bool = au.a((Boolean)be.uz().sr().get(67841), true);
    if ((z.zp() == com.tencent.mm.modelfriend.aa.crc) || (z.zp() == com.tencent.mm.modelfriend.aa.crd));
    while (bool)
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.PostTaskUpdateCtRemark", "collect addr userName");
      List localList = ax.Al().zd();
      if (localList != null)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.PostTaskUpdateCtRemark", "list " + localList.size());
        int i = 0;
        int j = 0;
        while (true)
          if (i < localList.size())
          {
            String str1 = ((h)localList.get(i)).getUsername();
            String str2 = ((h)localList.get(i)).yM().trim();
            if ((str1 != null) && (!str1.equals("")) && (str2 != null) && (!str2.equals("")))
            {
              com.tencent.mm.storage.i locali = be.uz().su().tO(str1);
              if ((locali.rb()) && ((locali.ru() == null) || (locali.ru().equals(""))))
              {
                com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.PostTaskUpdateCtRemark", "userName " + str1 + "conRemark" + str2);
                w.b(locali, str2);
                j = 1;
              }
            }
            i++;
            continue;
            bool = false;
            break;
          }
        be.uz().sr().set(67841, Boolean.valueOf(false));
        if (j != 0)
          be.uA().d(new com.tencent.mm.z.i(5));
      }
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.PostTaskUpdateCtRemark", "update ct remark done");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.aj
 * JD-Core Version:    0.6.2
 */