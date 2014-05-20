package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.ab;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.b.a;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.bindgooglecontact.BindGoogleContactIntroUI;
import com.tencent.mm.ui.bindgooglecontact.BindGoogleContactUI;
import com.tencent.mm.ui.bindgooglecontact.GoogleFriendUI;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import junit.framework.Assert;

public final class ag
  implements a, ar
{
  private boolean gHn;
  private boolean gWk;
  private com.tencent.mm.storage.i gWl;
  private n gWm;
  private Map gWn = new HashMap();
  private by gWo;
  private Context mContext;

  public ag(Context paramContext)
  {
    this.mContext = paramContext;
    this.gWo = new ak(this, this.mContext);
  }

  private void Jh()
  {
    boolean bool;
    if ((0x800000 & v.tq()) == 0)
    {
      bool = true;
      this.gWk = bool;
      this.gWm.removeAll();
      if (this.gWn.containsKey("contact_info_header_helper"))
      {
        HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.gWn.get("contact_info_header_helper");
        localHelperHeaderPreference.a(this.gWl, this.gWo);
        this.gWm.b(localHelperHeaderPreference);
      }
      if (!this.gWk)
        break label200;
      if (this.gWn.containsKey("contact_info_googlecontact_add_view"))
        this.gWm.b((Preference)this.gWn.get("contact_info_googlecontact_add_view"));
      if (this.gWn.containsKey("contact_info_googlecontact_setting_view"))
        this.gWm.b((Preference)this.gWn.get("contact_info_googlecontact_setting_view"));
      if (this.gWn.containsKey("contact_info_googlecontact_uninstall"))
        this.gWm.b((Preference)this.gWn.get("contact_info_googlecontact_uninstall"));
    }
    label200: 
    while (!this.gWn.containsKey("contact_info_googlecontact_install"))
    {
      return;
      bool = false;
      break;
    }
    this.gWm.b((Preference)this.gWn.get("contact_info_googlecontact_install"));
  }

  public static void b(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = paramContext.getString(2131165872); ; str = paramContext.getString(2131165873))
    {
      paramContext.getString(2131167675);
      ch localch = h.a(paramContext, str, true, null);
      ai localai = new ai(paramBoolean);
      new Timer().schedule(new aj(localch, localai), 1500L);
      return;
    }
  }

  public final boolean Ji()
  {
    be.uz().sr().b(this);
    HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.gWn.get("contact_info_header_helper");
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
    aa.e("MicroMsg.ContactWidgetGoogleContact", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.ContactWidgetGoogleContact", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
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
      Assert.assertTrue(w.cW(parami.getUsername()));
      be.uz().sr().a(this);
      this.gHn = ab.O(this.mContext);
      this.gWl = parami;
      this.gWm = paramn;
      paramn.addPreferencesFromResource(2131034126);
      Preference localPreference1 = paramn.wn("contact_info_header_helper");
      if (localPreference1 != null)
        this.gWn.put("contact_info_header_helper", localPreference1);
      Preference localPreference2 = paramn.wn("contact_info_googlecontact_add_view");
      if (localPreference2 != null)
        this.gWn.put("contact_info_googlecontact_add_view", localPreference2);
      Preference localPreference3 = paramn.wn("contact_info_googlecontact_setting_view");
      if (localPreference3 != null)
        this.gWn.put("contact_info_googlecontact_setting_view", localPreference3);
      Preference localPreference4 = paramn.wn("contact_info_googlecontact_install");
      if (localPreference4 != null)
        this.gWn.put("contact_info_googlecontact_install", localPreference4);
      Preference localPreference5 = paramn.wn("contact_info_googlecontact_uninstall");
      if (localPreference5 != null)
        this.gWn.put("contact_info_googlecontact_uninstall", localPreference5);
      Jh();
      return true;
    }
  }

  public final boolean iO(String paramString)
  {
    aa.d("MicroMsg.ContactWidgetGoogleContact", "handleEvent : key = " + paramString);
    if (TextUtils.isEmpty(paramString))
      return false;
    if (paramString.equals("contact_info_googlecontact_add_view"))
    {
      aa.d("MicroMsg.ContactWidgetGoogleContact", "contact_info_googlecontact_add_view");
      String str1 = (String)be.uz().sr().get(208903);
      String str2;
      if (this.gHn)
      {
        str2 = (String)be.uz().sr().get(208901);
        if ((!TextUtils.isEmpty(str2)) && (!TextUtils.isEmpty(str1)))
          break label160;
        Intent localIntent2 = new Intent(this.mContext, BindGoogleContactUI.class);
        localIntent2.putExtra("enter_scene", 2);
        this.mContext.startActivity(localIntent2);
      }
      while (true)
      {
        return true;
        str2 = (String)be.uz().sr().get(208902);
        break;
        label160: Intent localIntent3 = new Intent(this.mContext, GoogleFriendUI.class);
        localIntent3.putExtra("enter_scene", 2);
        this.mContext.startActivity(localIntent3);
      }
    }
    if (paramString.equals("contact_info_googlecontact_setting_view"))
    {
      aa.d("MicroMsg.ContactWidgetGoogleContact", "contact_info_googlecontact_setting_view");
      Intent localIntent1 = new Intent(this.mContext, BindGoogleContactIntroUI.class);
      localIntent1.putExtra("enter_scene", 2);
      this.mContext.startActivity(localIntent1);
      return true;
    }
    if (paramString.equals("contact_info_googlecontact_install"))
    {
      aa.d("MicroMsg.ContactWidgetGoogleContact", "contact_info_googlecontact_install");
      b(this.mContext, true);
      return true;
    }
    if (paramString.equals("contact_info_googlecontact_uninstall"))
    {
      aa.d("MicroMsg.ContactWidgetGoogleContact", "contact_info_googlecontact_uninstall");
      String[] arrayOfString = this.mContext.getResources().getStringArray(2131296311);
      h.b(this.mContext, this.mContext.getString(2131165874), arrayOfString, "", new ah(this));
      return true;
    }
    aa.e("MicroMsg.ContactWidgetGoogleContact", "handleEvent : unExpected key = " + paramString);
    return false;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.d("MicroMsg.ContactWidgetGoogleContact", "requestCode:%d, resultCode:%d", arrayOfObject);
    if (paramInt2 == -1)
      if (paramInt1 == 1005)
        this.gHn = paramIntent.getBooleanExtra("gpservices", false);
    while (paramInt1 != 1005)
      return;
    this.gHn = paramIntent.getBooleanExtra("gpservices", false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.ag
 * JD-Core Version:    0.6.2
 */