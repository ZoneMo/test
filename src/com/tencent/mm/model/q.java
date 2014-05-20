package com.tencent.mm.model;

import com.tencent.mm.n.f;
import com.tencent.mm.n.j;
import com.tencent.mm.n.k;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.cc;

public class q
  implements j
{
  public k a(l paraml)
  {
    String str1 = (String)f.c(2, "");
    if (str1.length() <= 0)
      return null;
    String str2 = an.a(paraml.fzs);
    String str3 = an.a(paraml.fzt);
    if ((cj.hW(str2).length() <= 0) || (cj.hW(str3).length() <= 0))
    {
      aa.e("MicroMsg.BaseMsgExtension", "neither from-user nor to-user can be empty");
      return null;
    }
    ak localak1 = a(paraml, str2, str3, str1);
    if (localak1 == null)
      return null;
    int i;
    int j;
    ak localak2;
    if ((be.uz().sz().has(str2)) || (str1.equals(str2)))
    {
      i = 1;
      if (i == 0)
        break label205;
      localak1.bZ(1);
      localak1.uK(str3);
      j = paraml.fzr;
      localak2 = localak1;
    }
    while (true)
    {
      localak2.setStatus(j);
      if (paraml.fzu == 10000)
        localak1.setStatus(4);
      localak1.uM(paraml.fzz);
      if (localak1.Bo() != 0L)
        break label248;
      localak1.bT(bv.d(localak1));
      return new k(localak1, true);
      i = 0;
      break;
      label205: localak1.bZ(0);
      localak1.uK(str2);
      if (paraml.fzr > 3)
      {
        j = paraml.fzr;
        localak2 = localak1;
      }
      else
      {
        j = 3;
        localak2 = localak1;
      }
    }
    label248: be.uz().sw().a(paraml.fzo, localak1);
    return new k(localak1, false);
  }

  protected ak a(l paraml, String paramString1, String paramString2, String paramString3)
  {
    ap localap = be.uz().sw();
    if (paramString3.equals(paramString1));
    while (true)
    {
      ak localak = localap.ae(paramString2, paraml.fzo);
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paraml.fzo);
      arrayOfObject1[1] = Long.valueOf(localak.Bo());
      aa.e("MicroMsg.BaseMsgExtension", "dkmsgid prepareMsgInfo svrid:%d localid:%d", arrayOfObject1);
      if ((localak.Bo() != 0L) && (604800000L + localak.DL() < bv.b(paramString1, paraml.fzy)))
      {
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paraml.fzo);
        arrayOfObject2[1] = Long.valueOf(localak.Bo());
        aa.c("MicroMsg.BaseMsgExtension", "dkmsgid prepareMsgInfo msg Too Old Remove it. svrid:%d localid:%d", arrayOfObject2);
        bv.q(localak.Bo());
        localak.bT(0L);
      }
      if (localak.Bo() == 0L)
      {
        localak = new ak();
        localak.dA(paraml.fzo);
        localak.G(bv.b(paramString1, paraml.fzy));
        localak.setType(paraml.fzu);
        String str = an.a(paraml.fzv);
        if (str != null)
          localak.setContent(str);
      }
      return localak;
      paramString2 = paramString1;
    }
  }

  public void c(ak paramak)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.q
 * JD-Core Version:    0.6.2
 */