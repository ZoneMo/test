package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.pluginsdk.b.a;
import com.tencent.mm.pluginsdk.ui.preference.HelperHeaderPreference;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.bg;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.chatting.ChattingUI;
import java.util.Timer;
import junit.framework.Assert;

public final class aq
  implements a, com.tencent.mm.sdk.e.ar
{
  private static boolean cQb = false;
  private n cIG;
  private com.tencent.mm.storage.i cQI;
  private Context context;

  public aq(Context paramContext)
  {
    this.context = paramContext;
  }

  private void Jh()
  {
    int i = 1;
    boolean bool1;
    int j;
    boolean bool2;
    label57: label108: boolean bool3;
    label140: boolean bool4;
    label164: boolean bool5;
    label188: n localn4;
    if ((0x10 & v.tq()) == 0)
    {
      bool1 = i;
      j = v.tl();
      if (v.tK())
        break label244;
      if ((j & 0x4000) != 0)
      {
        int n = j & 0xFFFFBFFF;
        be.uz().sr().set(7, Integer.valueOf(n));
      }
      bool2 = false;
      HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.cIG.wn("contact_info_header_helper");
      localHelperHeaderPreference.u(this.cQI.getUsername(), this.cQI.rr(), this.context.getString(2131166356));
      if (!bool1)
        break label264;
      int k = i;
      localHelperHeaderPreference.kH(k);
      this.cIG.O("contact_info_medianote_install", bool1);
      n localn1 = this.cIG;
      if (bool1)
        break label270;
      bool3 = i;
      localn1.O("contact_info_medianote_view", bool3);
      n localn2 = this.cIG;
      if (bool1)
        break label276;
      bool4 = i;
      localn2.O("contact_info_medianote_sync_to_qqmail", bool4);
      n localn3 = this.cIG;
      if (bool1)
        break label282;
      bool5 = i;
      localn3.O("contact_info_medianote_clear_data", bool5);
      localn4 = this.cIG;
      if (bool1)
        break label288;
    }
    while (true)
    {
      localn4.O("contact_info_medianote_uninstall", i);
      ((CheckBoxPreference)this.cIG.wn("contact_info_medianote_sync_to_qqmail")).setChecked(bool2);
      return;
      bool1 = false;
      break;
      label244: if ((j & 0x4000) != 0)
      {
        bool2 = i;
        break label57;
      }
      bool2 = false;
      break label57;
      label264: int m = 0;
      break label108;
      label270: bool3 = false;
      break label140;
      label276: bool4 = false;
      break label164;
      label282: bool5 = false;
      break label188;
      label288: i = 0;
    }
  }

  public static void b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = paramContext.getString(2131165872); ; str = paramContext.getString(2131165873))
    {
      paramContext.getString(2131167675);
      ch localch = h.a(paramContext, str, true, null);
      au localau = new au(paramBoolean, paramContext);
      new Timer().schedule(new av(localch, localau), 1500L);
      return;
    }
  }

  static void bM(boolean paramBoolean)
  {
    int i = v.tl();
    int j;
    if (paramBoolean)
    {
      j = i | 0x4000;
      be.uz().sr().set(7, Integer.valueOf(j));
      if (!paramBoolean)
        break label64;
    }
    label64: for (int k = 1; ; k = 2)
    {
      be.uz().st().a(new bg(13, k));
      return;
      j = i & 0xFFFFBFFF;
      break;
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
    int i = com.tencent.mm.platformtools.au.U(paramObject);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = paramao;
    aa.e("MicroMsg.ContactWidgetMediaNote", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.ContactWidgetMediaNote", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
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
      Assert.assertTrue(w.cK(parami.getUsername()));
      be.uz().sr().a(this);
      this.cQI = parami;
      this.cIG = paramn;
      paramn.addPreferencesFromResource(2131034130);
      Jh();
      return true;
    }
  }

  public final boolean iO(String paramString)
  {
    aa.d("MicroMsg.ContactWidgetMediaNote", "handleEvent : key = " + paramString);
    if (com.tencent.mm.platformtools.au.hW(paramString).length() <= 0)
      return false;
    if (paramString.equals("contact_info_medianote_view"))
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("Chat_User", "medianote");
      localIntent.setClass(this.context, ChattingUI.class);
      this.context.startActivity(localIntent);
      be.uA().d(new com.tencent.mm.z.i(5));
      return true;
    }
    if (paramString.equals("contact_info_medianote_sync_to_qqmail"))
    {
      if (!v.tK())
      {
        h.a(this.context, 2131166359, 2131166358, new ar(this), null);
        Jh();
      }
      while (true)
      {
        return true;
        bM(((CheckBoxPreference)this.cIG.wn(paramString)).isChecked());
      }
    }
    if (paramString.equals("contact_info_medianote_clear_data"))
    {
      h.a(this.context, this.context.getString(2131166289), "", this.context.getString(2131167690), this.context.getString(2131167681), new as(this), null);
      return true;
    }
    if (paramString.equals("contact_info_medianote_install"))
    {
      b(this.context, true);
      return true;
    }
    if (paramString.equals("contact_info_medianote_uninstall"))
    {
      h.a(this.context, this.context.getString(2131165874), "", this.context.getString(2131167690), this.context.getString(2131167681), new at(this), null);
      return true;
    }
    aa.e("MicroMsg.ContactWidgetMediaNote", "handleEvent : unExpected key = " + paramString);
    return false;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.aq
 * JD-Core Version:    0.6.2
 */