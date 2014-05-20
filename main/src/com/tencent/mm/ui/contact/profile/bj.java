package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
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
import java.util.Timer;
import junit.framework.Assert;

public final class bj
  implements a, ar
{
  private n cIG;
  private com.tencent.mm.storage.i cQI;
  private Context context;

  public bj(Context paramContext)
  {
    this.context = paramContext;
  }

  private void Jh()
  {
    int i = 1;
    boolean bool;
    label62: n localn;
    if ((0x2000000 & v.tq()) == 0)
    {
      bool = i;
      HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.cIG.wn("contact_info_header_helper");
      localHelperHeaderPreference.u(this.cQI.getUsername(), this.cQI.rr(), this.context.getString(2131166979));
      if (!bool)
        break label106;
      int j = i;
      localHelperHeaderPreference.kH(j);
      this.cIG.O("contact_info_voiceinput_install", bool);
      localn = this.cIG;
      if (bool)
        break label112;
    }
    while (true)
    {
      localn.O("contact_info_voiceinput_uninstall", i);
      return;
      bool = false;
      break;
      label106: int k = 0;
      break label62;
      label112: i = 0;
    }
  }

  public static void b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = paramContext.getString(2131165872); ; str = paramContext.getString(2131165873))
    {
      paramContext.getString(2131167675);
      ch localch = h.a(paramContext, str, true, null);
      bl localbl = new bl(paramBoolean);
      new Timer().schedule(new bm(localch, localbl), 1500L);
      return;
    }
  }

  public final boolean Ji()
  {
    be.uz().sr().b(this);
    be.uA().d(new com.tencent.mm.z.i(5));
    return true;
  }

  public final void a(int paramInt, ao paramao, Object paramObject)
  {
    int i = au.U(paramObject);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = paramao;
    aa.e("MicroMsg.ContactWidgetVoiceInput", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.ContactWidgetVoiceInput", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
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
      Assert.assertTrue(w.cO(parami.getUsername()));
      be.uz().sr().a(this);
      this.cQI = parami;
      this.cIG = paramn;
      paramn.addPreferencesFromResource(2131034144);
      Jh();
      return true;
    }
  }

  public final boolean iO(String paramString)
  {
    aa.d("MicroMsg.ContactWidgetVoiceInput", "handleEvent : key = " + paramString);
    if (au.hW(paramString).length() <= 0)
      return false;
    if (paramString.equals("contact_info_voiceinput_install"))
    {
      b(this.context, true);
      return true;
    }
    if (paramString.equals("contact_info_voiceinput_uninstall"))
    {
      h.a(this.context, this.context.getString(2131165874), "", this.context.getString(2131167690), this.context.getString(2131167681), new bk(this), null);
      return true;
    }
    aa.e("MicroMsg.ContactWidgetVoiceInput", "handleEvent : unExpected key = " + paramString);
    return false;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.bj
 * JD-Core Version:    0.6.2
 */