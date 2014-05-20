package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.b.a;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.account.FacebookAuthUI;
import com.tencent.mm.ui.account.FacebookFriendUI;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.PreferenceCategory;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.qrcode.ShowQRCodeStep1UI;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import junit.framework.Assert;

public final class aa
  implements a, ar
{
  private n cIG;
  private com.tencent.mm.storage.i cQI;
  private Map cQK = new HashMap();
  private Context context;
  private by gWi;

  public aa(Context paramContext)
  {
    this.context = paramContext;
    this.gWi = new bw(paramContext);
    be.uz().sx().ua("facebookapp");
  }

  private void Jh()
  {
    this.cIG.removeAll();
    if (this.cQK.containsKey("contact_info_header_helper"))
    {
      HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.cQK.get("contact_info_header_helper");
      localHelperHeaderPreference.a(this.cQI, this.gWi);
      this.cIG.b(localHelperHeaderPreference);
    }
    if (this.cQK.containsKey("contact_info_facebookapp_cat"))
      this.cIG.b((Preference)this.cQK.get("contact_info_facebookapp_cat"));
    if ((0x2000 & v.tq()) == 0);
    for (int i = 1; i == 0; i = 0)
    {
      if (this.cQK.containsKey("contact_info_facebookapp_install"))
        this.cIG.b((Preference)this.cQK.get("contact_info_facebookapp_install"));
      return;
    }
    if (!v.tE())
      if (this.cQK.containsKey("contact_info_facebookapp_connect"))
        this.cIG.b((Preference)this.cQK.get("contact_info_facebookapp_connect"));
    while (true)
    {
      if (this.cQK.containsKey("contact_info_facebookapp_cat2"))
        this.cIG.b((Preference)this.cQK.get("contact_info_facebookapp_cat2"));
      if (!this.cQK.containsKey("contact_info_facebookapp_uninstall"))
        break;
      this.cIG.b((Preference)this.cQK.get("contact_info_facebookapp_uninstall"));
      return;
      com.tencent.mm.x.b.Bg();
      if (this.cQK.containsKey("contact_info_facebookapp_addr"))
      {
        this.cIG.b((Preference)this.cQK.get("contact_info_facebookapp_addr"));
        ((Preference)this.cQK.get("contact_info_facebookapp_addr")).setSummary((String)be.uz().sr().get(65826));
      }
      if (this.cQK.containsKey("contact_info_facebookapp_showqrcode"))
        this.cIG.b((Preference)this.cQK.get("contact_info_facebookapp_showqrcode"));
    }
  }

  public static void b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = paramContext.getString(2131165872); ; str = paramContext.getString(2131165873))
    {
      paramContext.getString(2131167675);
      ch localch = h.a(paramContext, str, true, null);
      ac localac = new ac(paramBoolean);
      new Timer().schedule(new ad(localch, localac), 1500L);
      return;
    }
  }

  public final boolean Ji()
  {
    be.uz().sr().b(this);
    HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.cQK.get("contact_info_header_helper");
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
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ContactWidgetFacebookapp", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.ContactWidgetFacebookapp", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
    }
    while ((i != 40) && (i != 34) && (i != 65825))
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
      Assert.assertTrue(w.cD(parami.getUsername()));
      be.uz().sr().a(this);
      this.cQI = parami;
      this.cIG = paramn;
      paramn.addPreferencesFromResource(2131034122);
      Preference localPreference1 = paramn.wn("contact_info_header_helper");
      if (localPreference1 != null)
        this.cQK.put("contact_info_header_helper", localPreference1);
      Preference localPreference2 = paramn.wn("contact_info_facebookapp_listfriend");
      if (localPreference2 != null)
        this.cQK.put("contact_info_facebookapp_listfriend", localPreference2);
      Preference localPreference3 = paramn.wn("contact_info_facebookapp_connect");
      if (localPreference3 != null)
        this.cQK.put("contact_info_facebookapp_connect", localPreference3);
      PreferenceCategory localPreferenceCategory1 = (PreferenceCategory)paramn.wn("contact_info_facebookapp_cat");
      if (localPreferenceCategory1 != null)
        this.cQK.put("contact_info_facebookapp_cat", localPreferenceCategory1);
      Preference localPreference4 = paramn.wn("contact_info_facebookapp_addr");
      if (localPreference4 != null)
        this.cQK.put("contact_info_facebookapp_addr", localPreference4);
      Preference localPreference5 = paramn.wn("contact_info_facebookapp_showqrcode");
      if (localPreference5 != null)
        this.cQK.put("contact_info_facebookapp_showqrcode", localPreference5);
      PreferenceCategory localPreferenceCategory2 = (PreferenceCategory)paramn.wn("contact_info_facebookapp_cat2");
      if (localPreferenceCategory2 != null)
        this.cQK.put("contact_info_facebookapp_cat2", localPreferenceCategory2);
      Preference localPreference6 = paramn.wn("contact_info_facebookapp_install");
      if (localPreference6 != null)
        this.cQK.put("contact_info_facebookapp_install", localPreference6);
      Preference localPreference7 = paramn.wn("contact_info_facebookapp_uninstall");
      if (localPreference7 != null)
        this.cQK.put("contact_info_facebookapp_uninstall", localPreference7);
      Jh();
      return true;
    }
  }

  public final boolean iO(String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.ContactWidgetFacebookapp", "handleEvent : key = " + paramString);
    if (au.hW(paramString).length() <= 0)
      return false;
    if (paramString.equals("contact_info_facebookapp_install"))
    {
      b(this.context, true);
      return true;
    }
    if (paramString.equals("contact_info_facebookapp_uninstall"))
    {
      h.a(this.context, this.context.getString(2131165874), "", this.context.getString(2131167690), this.context.getString(2131167681), new ab(this), null);
      return true;
    }
    if (paramString.equals("contact_info_facebookapp_listfriend"))
    {
      this.context.startActivity(new Intent(this.context, FacebookFriendUI.class));
      return true;
    }
    if (paramString.equals("contact_info_facebookapp_connect"))
    {
      Intent localIntent1 = new Intent(this.context, FacebookAuthUI.class);
      this.context.startActivity(localIntent1);
      return true;
    }
    if (paramString.equals("contact_info_facebookapp_addr"))
    {
      Intent localIntent2 = new Intent(this.context, FacebookAuthUI.class);
      this.context.startActivity(localIntent2);
      return true;
    }
    if (paramString.equals("contact_info_facebookapp_showqrcode"))
    {
      Intent localIntent3 = new Intent(this.context, ShowQRCodeStep1UI.class);
      localIntent3.putExtra("show_to", 4);
      this.context.startActivity(localIntent3);
      return true;
    }
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.ContactWidgetFacebookapp", "handleEvent : unExpected key = " + paramString);
    return false;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.aa
 * JD-Core Version:    0.6.2
 */