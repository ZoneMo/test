package com.tencent.mm.ah;

import com.tencent.mm.c.a.el;
import com.tencent.mm.m.af;
import com.tencent.mm.m.x;
import com.tencent.mm.m.y;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ao;

public final class t
  implements com.tencent.mm.n.j
{
  public final com.tencent.mm.n.k a(l paraml)
  {
    String str1 = an.a(paraml.fzs);
    if (!"fmessage".equals(str1));
    ao localao;
    do
    {
      return null;
      String str2 = an.a(paraml.fzv);
      localao = ao.uU(str2);
      if (localao != null)
        aa.d("MicroMsg.VerifyMessageExtension", "onPreAddMessage, verify scene = " + localao.Gf());
      String str3 = v.th();
      if ((localao.aCu() != null) && (localao.aCu().equals(str3)))
      {
        aa.e("MicroMsg.VerifyMessageExtension", "fromUserName is self, simply drop this msg");
        return null;
      }
      x localx = new x();
      localx.setUsername(localao.aCu());
      localx.bU(3);
      localx.Q(true);
      localx.cL(-1);
      localx.eo(localao.aCs());
      localx.ep(localao.aCt());
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = localao.aCu();
      arrayOfObject[1] = localx.vV();
      arrayOfObject[2] = localx.vW();
      aa.e("MicroMsg.VerifyMessageExtension", "dkhurl user:[%s] big:[%s] sm:[%s]", arrayOfObject);
      af.wm().a(localx);
      if ((localao != null) && (!cj.hX(localao.aCu())))
      {
        if (localao.Gf() == 18)
        {
          k.Dz().a(paraml, localao);
          be.uz().sr().set(73729, Integer.valueOf(1));
          return null;
        }
        if (bv.cu(localao.Gf()))
        {
          k.DA().a(paraml, localao);
          be.uz().sr().set(73730, Integer.valueOf(1));
          return null;
        }
        if (localao.Gf() == 48)
        {
          el localel = new el();
          localel.bPn.bNy = str2;
          localel.bPn.bNl = localao.aCu();
          com.tencent.mm.sdk.b.a.ayH().f(localel);
        }
      }
    }
    while (localao == null);
    e locale = new e();
    locale.field_createTime = d.b(str1, paraml.fzy);
    locale.field_isSend = 0;
    locale.field_msgContent = an.a(paraml.fzv);
    locale.field_svrId = paraml.fzo;
    locale.field_talker = localao.aCu();
    switch (localao.aCN())
    {
    case 3:
    case 4:
    default:
      locale.field_type = 1;
    case 2:
    case 5:
    case 6:
    }
    while (!cj.hX(localao.aCO()))
    {
      locale.field_encryptTalker = localao.aCO();
      if (k.Dy().gB(localao.aCO()) != null)
      {
        k.Dx().M(locale.field_encryptTalker, locale.field_talker);
        k.Dy().gE(locale.field_encryptTalker);
      }
      k.Dx().a(locale);
      return null;
      locale.field_type = 1;
      continue;
      locale.field_type = 2;
      continue;
      locale.field_type = 3;
    }
    aa.e("MicroMsg.VerifyMessageExtension", "it should not go in here");
    a locala = k.Dy().gD(locale.field_talker);
    if (locala != null)
    {
      locale.field_encryptTalker = locala.field_talker;
      locale.field_talker = locala.field_talker;
    }
    k.Dx().a(locale);
    return null;
  }

  public final void c(ak paramak)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.t
 * JD-Core Version:    0.6.2
 */