package com.tencent.mm.ah;

import com.tencent.mm.c.a.bl;
import com.tencent.mm.c.a.bn;
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

public final class c extends q
{
  protected final ak a(l paraml, String paramString1, String paramString2, String paramString3)
  {
    String str = an.a(paraml.fzv);
    if ((str == null) || (str.length() <= 0))
    {
      aa.e("MicroMsg.FMessageExtension", "possible friend msg : content is null");
      return null;
    }
    al localal = al.uQ(str);
    if (((localal.aCw() != null) || (localal.aCz() != null)) && ((localal.Gf() == 10) || (localal.Gf() == 11)))
    {
      bl localbl = new bl();
      localbl.bNm.bNo = localal.aCw();
      localbl.bNm.bNp = localal.aCz();
      com.tencent.mm.sdk.b.a.ayH().f(localbl);
      if (localbl.bNn.bNq)
      {
        aa.v("MicroMsg.FMessageExtension", "possible mobile friend is not in local address book");
        return null;
      }
    }
    if (localal.aCx() > 0L)
      com.tencent.mm.m.c.c(localal.aCx(), localal.aCv());
    if (cj.hW(localal.aCu()).length() > 0)
    {
      x localx = new x();
      localx.setUsername(localal.aCu());
      localx.bU(3);
      localx.Q(true);
      localx.cL(-1);
      localx.eo(localal.aCs());
      localx.ep(localal.aCt());
      localx.cL(-1);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = localal.aCu();
      arrayOfObject[1] = localx.vV();
      arrayOfObject[2] = localx.vW();
      aa.e("MicroMsg.FMessageExtension", "dkhurl user:[%s] big:[%s] sm:[%s]", arrayOfObject);
      af.wm().a(localx);
    }
    e locale = new e();
    locale.field_createTime = d.b(paramString1, paraml.fzy);
    locale.field_isSend = 0;
    locale.field_msgContent = an.a(paraml.fzv);
    locale.field_svrId = paraml.fzo;
    locale.field_talker = localal.aCu();
    locale.field_type = 0;
    a locala = k.Dy().gD(locale.field_talker);
    if (locala != null)
    {
      aa.d("MicroMsg.FMessageExtension", "getByEncryptTalker success. encryptTalker = " + locale.field_talker + " , real talker = " + locala.field_talker);
      locale.field_encryptTalker = locale.field_talker;
      locale.field_talker = locala.field_talker;
    }
    k.Dx().a(locale);
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.c
 * JD-Core Version:    0.6.2
 */