package com.tencent.mm.plugin.webwx.a;

import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.j;
import com.tencent.mm.n.k;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.o;
import java.util.List;
import java.util.Map;

public final class d
  implements j
{
  public final k a(l paraml)
  {
    int i = 0;
    String str1;
    int j;
    if ((paraml != null) && (paraml.fzu == 51))
    {
      str1 = an.a(paraml.fzt);
      if (!cj.hX(str1))
      {
        Map localMap = u.aL(an.a(paraml.fzv).trim(), "msg");
        if (localMap != null)
        {
          j = cj.getInt((String)localMap.get(".msg.op.$id"), 0);
          if (j != 1)
            break label135;
          aa.d("MicroMsg.StatusNotifyMsgExtensionn", "mark conversation readed. userName = " + str1);
          if (!w.cz(str1))
            break label121;
          be.uz().sr().set(143618, Integer.valueOf(0));
        }
      }
    }
    while (true)
    {
      return null;
      label121: be.uz().sx().ua(str1);
      continue;
      label135: if (j == 3)
      {
        List localList = be.uz().sx().aAL();
        StringBuilder localStringBuilder = new StringBuilder();
        if (i < localList.size())
        {
          if (i > 0);
          for (String str2 = ","; ; str2 = "")
          {
            localStringBuilder.append(str2);
            localStringBuilder.append((String)localList.get(i));
            i++;
            break;
          }
        }
        b localb = new b(localStringBuilder.toString(), 4);
        be.uA().d(localb);
      }
    }
  }

  public final void c(ak paramak)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webwx.a.d
 * JD-Core Version:    0.6.2
 */