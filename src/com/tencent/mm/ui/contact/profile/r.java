package com.tencent.mm.ui.contact.profile;

import com.tencent.mm.m.c;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.at;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.p.a;
import com.tencent.mm.p.ab;
import com.tencent.mm.p.p;
import com.tencent.mm.p.x;
import com.tencent.mm.pluginsdk.ui.applet.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.n;

final class r
  implements f
{
  r(e parame)
  {
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    i locali1;
    if (paramBoolean1)
    {
      h.an(e.b(this.gWd), e.b(this.gWd).getString(2131166377));
      e.i(this.gWd).O("contact_info_time_expired", true);
      locali1 = e.c(this.gWd);
      if ((locali1 != null) && (!cj.hX(paramString1)))
        break label153;
      aa.e("MicroMsg.ContactWidgetBizInfo", "respUsername == " + paramString1 + ", contact = " + locali1);
    }
    while (true)
    {
      e.j(this.gWd);
      e.k(this.gWd);
      a locala1 = ab.ye().eG(e.c(this.gWd).field_username);
      if (locala1 != null)
      {
        locala1.field_status = 1;
        ab.ye().b(locala1);
      }
      return;
      label153: boolean bool = w.cs(locali1.getUsername());
      a locala2 = null;
      if (bool)
      {
        String str = cj.hW(locali1.getUsername());
        locala2 = p.eI(str);
        if (locala2 != null)
          locala2.field_username = paramString1;
        ab.ye().eH(str);
        locali1.tF(str);
      }
      locali1.setUsername(paramString1);
      if (locali1.rj() == 0)
        be.uz().su().C(locali1);
      if (locali1.rj() <= 0)
      {
        aa.e("MicroMsg.ContactWidgetBizInfo", "addContact : insert contact failed");
      }
      else
      {
        w.k(locali1);
        i locali2 = be.uz().su().tO(locali1.getUsername());
        if (locala2 != null)
        {
          ab.ye().a(locala2);
        }
        else
        {
          a locala3 = p.eI(locali2.getUsername());
          if ((locala3 == null) || (locala3.xA()))
          {
            aa.d("MicroMsg.ContactWidgetBizInfo", "shouldUpdate");
            ar.tZ().jdMethod_do(locali2.getUsername());
            c.dX(locali2.getUsername());
          }
          else if (locali2.aAl())
          {
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Integer.valueOf(locali2.rM());
            aa.e("MicroMsg.ContactWidgetBizInfo", "update contact, last check time=%d", arrayOfObject);
            ar.tZ().jdMethod_do(locali2.getUsername());
            c.dX(locali2.getUsername());
          }
          else if ((locala3 != null) && (locala3.xw()))
          {
            ab.yg().eQ(locali2.getUsername());
          }
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.r
 * JD-Core Version:    0.6.2
 */