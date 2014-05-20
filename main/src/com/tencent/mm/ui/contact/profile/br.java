package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.b.a;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.CheckBoxPreference;
import com.tencent.mm.ui.base.preference.n;
import java.util.Timer;
import junit.framework.Assert;

public final class br
  implements a, ar
{
  private n cIG;
  private com.tencent.mm.storage.i cQI;
  private Context context;
  private by gWM;

  public br(Context paramContext)
  {
    this.context = paramContext;
    this.gWM = new dq(paramContext);
  }

  private void Jh()
  {
    boolean bool = aLf();
    if ((0x400000 & v.tq()) == 0);
    for (int i = 1; ; i = 0)
    {
      this.cIG.removeAll();
      this.cIG.addPreferencesFromResource(2131034146);
      ((HelperHeaderPreference)this.cIG.wn("contact_info_header_helper")).a(this.cQI, this.gWM);
      ((CheckBoxPreference)this.cIG.wn("contact_info_voipaudio_sound_notify")).setChecked(bool);
      if (i == 0)
        break;
      this.cIG.wo("contact_info_voipaudio_install");
      return;
    }
    this.cIG.wo("contact_info_voipaudio_uninstall");
    this.cIG.wo("contact_info_voipaudio_sound_notify");
    this.cIG.wo("contact_info_voipaudio_sound_tip");
  }

  private static boolean aLf()
  {
    try
    {
      boolean bool = ((Boolean)be.uz().sr().get(73218, Boolean.valueOf(true))).booleanValue();
      return bool;
    }
    catch (Exception localException)
    {
    }
    return true;
  }

  public static void b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = paramContext.getString(2131165872); ; str = paramContext.getString(2131165873))
    {
      paramContext.getString(2131167675);
      ch localch = h.a(paramContext, str, true, null);
      bt localbt = new bt(paramBoolean);
      new Timer().schedule(new bu(localch, localbt), 1500L);
      return;
    }
  }

  public final boolean Ji()
  {
    be.uz().sr().b(this);
    HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.cIG.wn("contact_info_header_helper");
    if (localHelperHeaderPreference != null)
      localHelperHeaderPreference.onDetach();
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
    aa.e("MicroMsg.ContactWidgetVoipAudio", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.ContactWidgetVoipAudio", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
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
      Assert.assertTrue(w.cN(parami.getUsername()));
      be.uz().sr().a(this);
      this.cQI = parami;
      this.cIG = paramn;
      Jh();
      return true;
    }
  }

  public final boolean iO(String paramString)
  {
    aa.d("MicroMsg.ContactWidgetVoipAudio", "handleEvent : key = " + paramString);
    if (au.hW(paramString).length() <= 0)
      return false;
    if (paramString.equals("contact_info_voipaudio_install"))
    {
      b(this.context, true);
      return true;
    }
    if (paramString.equals("contact_info_voipaudio_uninstall"))
    {
      String[] arrayOfString = this.context.getResources().getStringArray(2131296311);
      h.b(this.context, this.context.getString(2131165874), arrayOfString, "", new bs(this));
      return true;
    }
    aa.e("MicroMsg.ContactWidgetVoipAudio", "handleEvent : unExpected key = " + paramString);
    return false;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.br
 * JD-Core Version:    0.6.2
 */