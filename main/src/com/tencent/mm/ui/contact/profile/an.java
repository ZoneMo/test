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
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.n;
import junit.framework.Assert;

public final class an
  implements com.tencent.mm.pluginsdk.b.a, ar
{
  private n cIG;
  private com.tencent.mm.storage.i cQI;
  private Context context;
  private by gWt;

  public an(Context paramContext)
  {
    this.context = paramContext;
    this.gWt = new bz(paramContext);
  }

  private void Jh()
  {
    if ((0x1000000 & v.tq()) == 0);
    for (int i = 1; ; i = 0)
    {
      this.cIG.removeAll();
      this.cIG.addPreferencesFromResource(2131034128);
      ((HelperHeaderPreference)this.cIG.wn("contact_info_header_helper")).a(this.cQI, this.gWt);
      if (i == 0)
        break;
      this.cIG.O("contact_info_linkedin_account", false);
      this.cIG.wo("contact_info_linkedin_install");
      return;
    }
    this.cIG.O("contact_info_linkedin_account", true);
    this.cIG.wo("contact_info_linkedin_uninstall");
  }

  public static void b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = paramContext.getString(2131165872); ; str = paramContext.getString(2131165873))
    {
      paramContext.getString(2131167675);
      new ay(new ap(h.a(paramContext, str, true, null), paramBoolean), false).bO(1500L);
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

  public final void a(int paramInt, com.tencent.mm.sdk.e.ao paramao, Object paramObject)
  {
    int i = ((Integer)paramObject).intValue();
    if ((i == 40) || (i == 34))
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
      Assert.assertTrue(w.cP(parami.getUsername()));
      be.uz().sr().a(this);
      this.cQI = parami;
      this.cIG = paramn;
      Jh();
      return true;
    }
  }

  public final boolean iO(String paramString)
  {
    aa.d("MicroMsg.ContactWidgetLinkedIn", "handleEvent : key = " + paramString);
    if (au.hW(paramString).length() <= 0)
      return false;
    if (paramString.equals("contact_info_linkedin_install"))
    {
      b(this.context, true);
      return true;
    }
    if (paramString.equals("contact_info_linkedin_uninstall"))
    {
      String[] arrayOfString = this.context.getResources().getStringArray(2131296311);
      h.b(this.context, this.context.getString(2131165874), arrayOfString, "", new ao(this));
      return true;
    }
    if (paramString.equals("contact_info_linkedin_account"))
      com.tencent.mm.ak.a.l(this.context, "accountsync", "com.tencent.mm.ui.bindlinkedin.BindLinkedInUI");
    aa.e("MicroMsg.ContactWidgetLinkedIn", "handleEvent : unExpected key = " + paramString);
    return false;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.an
 * JD-Core Version:    0.6.2
 */