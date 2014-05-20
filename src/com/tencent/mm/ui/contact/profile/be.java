package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.b;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.b.a;
import com.tencent.mm.pluginsdk.ui.preference.HelperHeaderPreference;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.bindqq.QQGroupUI;
import java.util.Timer;
import junit.framework.Assert;

public final class be
  implements a, ar
{
  private n cIG;
  private com.tencent.mm.storage.i cQI;
  private boolean cQJ;
  private Context context;

  public be(Context paramContext)
  {
    this.context = paramContext;
  }

  private void Jh()
  {
    int i = 1;
    boolean bool1;
    label71: boolean bool2;
    label93: n localn2;
    if ((0x1000 & v.tq()) == 0)
    {
      bool1 = i;
      this.cQJ = bool1;
      HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.cIG.wn("contact_info_header_helper");
      localHelperHeaderPreference.u(this.cQI.getUsername(), this.cQI.rr(), this.context.getString(2131166360));
      if (!this.cQJ)
        break label148;
      int j = i;
      localHelperHeaderPreference.kH(j);
      n localn1 = this.cIG;
      if (this.cQJ)
        break label154;
      bool2 = i;
      localn1.O("contact_info_qqfriend_view", bool2);
      localn2 = this.cIG;
      if (this.cQJ)
        break label160;
    }
    while (true)
    {
      localn2.O("contact_info_qqfriend_uninstall", i);
      this.cIG.O("contact_info_qqfriend_install", this.cQJ);
      return;
      bool1 = false;
      break;
      label148: int k = 0;
      break label71;
      label154: bool2 = false;
      break label93;
      label160: i = 0;
    }
  }

  public static void b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = paramContext.getString(2131165872); ; str = paramContext.getString(2131165873))
    {
      paramContext.getString(2131167675);
      ch localch = h.a(paramContext, str, true, null);
      bh localbh = new bh(paramBoolean);
      new Timer().schedule(new bi(localch, localbh), 1500L);
      return;
    }
  }

  public final boolean Ji()
  {
    com.tencent.mm.model.be.uz().sr().b(this);
    com.tencent.mm.model.be.uA().d(new com.tencent.mm.z.i(5));
    return true;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    int i = au.U(paramObject);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = paramao;
    aa.e("MicroMsg.ContactWidgetQQFriend", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != com.tencent.mm.model.be.uz().sr()) || (i <= 0))
    {
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.ContactWidgetQQFriend", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
    }
    while ((i != 40) && (i != 34) && (i != 7))
    {
      Object[] arrayOfObject2;
      return;
    }
    Jh();
  }

  public final boolean a(n paramn, com.tencent.mm.storage.i parami, boolean paramBoolean, int paramInt)
  {
    if (paramn != null);
    for (boolean bool1 = true; ; bool1 = false)
    {
      Assert.assertTrue(bool1);
      boolean bool2 = false;
      if (parami != null)
        bool2 = true;
      Assert.assertTrue(bool2);
      Assert.assertTrue(w.cV(parami.getUsername()));
      com.tencent.mm.model.be.uz().sr().a(this);
      this.cQI = parami;
      this.cIG = paramn;
      paramn.addPreferencesFromResource(2131034135);
      Jh();
      return true;
    }
  }

  public final boolean iO(String paramString)
  {
    aa.d("MicroMsg.ContactWidgetQQFriend", "handleEvent : key = " + paramString);
    if (au.hW(paramString).length() <= 0)
      return false;
    if (paramString.equals("contact_info_qqfriend_view"))
    {
      if (!v.tK())
      {
        h.a(this.context, 2131166362, 2131167675, new bf(this), null);
        return true;
      }
      Intent localIntent = new Intent();
      localIntent.setClass(this.context, QQGroupUI.class);
      this.context.startActivity(localIntent);
      return true;
    }
    if (paramString.equals("contact_info_qqfriend_install"))
    {
      b(this.context, true);
      return true;
    }
    if (paramString.equals("contact_info_qqfriend_uninstall"))
    {
      h.a(this.context, this.context.getString(2131165874), "", this.context.getString(2131167690), this.context.getString(2131167681), new bg(this), null);
      return true;
    }
    aa.e("MicroMsg.ContactWidgetQQFriend", "handleEvent : unExpected key = " + paramString);
    return false;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.be
 * JD-Core Version:    0.6.2
 */