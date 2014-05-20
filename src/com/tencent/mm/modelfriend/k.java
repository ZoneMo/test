package com.tencent.mm.modelfriend;

import com.tencent.mm.m.af;
import com.tencent.mm.m.x;
import com.tencent.mm.m.y;
import com.tencent.mm.model.q;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.al;

public final class k extends q
{
  protected final ak a(l paraml, String paramString1, String paramString2, String paramString3)
  {
    String str = an.a(paraml.fzv);
    if ((str == null) || (str.length() <= 0))
    {
      aa.e("MicroMsg.CardMsgExtension", "possible friend msg : content is null");
      return null;
    }
    al localal = al.uQ(str);
    if (cj.hW(localal.aCu()).length() > 0)
    {
      x localx = new x();
      localx.setUsername(localal.aCu());
      localx.bU(3);
      localx.Q(true);
      localx.eo(localal.aCs());
      localx.ep(localal.aCt());
      localx.cL(-1);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = localal.aCu();
      arrayOfObject[1] = localx.vV();
      arrayOfObject[2] = localx.vW();
      aa.e("MicroMsg.CardMsgExtension", "dkhurl user:[%s] big:[%s] sm:[%s]", arrayOfObject);
      af.wm().a(localx);
    }
    return super.a(paraml, paramString1, paramString2, paramString3);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.k
 * JD-Core Version:    0.6.2
 */