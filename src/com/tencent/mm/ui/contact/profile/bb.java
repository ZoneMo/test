package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.b.a;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.n;
import junit.framework.Assert;

abstract class bb
  implements a, ar
{
  protected n cIG;
  protected i cQI;
  protected Context context;
  protected by gWI;

  public bb(Context paramContext, by paramby)
  {
    this.context = paramContext;
    this.gWI = paramby;
  }

  private void Jh()
  {
    this.cIG.removeAll();
    this.cIG.addPreferencesFromResource(2131034123);
    boolean bool = aLe();
    HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.cIG.wn("contact_info_header_helper");
    if (localHelperHeaderPreference != null)
      localHelperHeaderPreference.a(this.cQI, this.gWI);
    if (!bool)
    {
      this.cIG.wo("contact_info_plugin_view");
      this.cIG.wo("contact_info_plugin_outsize");
      this.cIG.wo("contact_info_plugin_black");
      this.cIG.wo("contact_info_plugin_clear_data");
      this.cIG.wo("contact_info_plugin_uninstall");
      return;
    }
    this.cIG.wo("contact_info_plugin_install");
  }

  public boolean Ji()
  {
    be.uz().sr().b(this);
    HelperHeaderPreference localHelperHeaderPreference = (HelperHeaderPreference)this.cIG.wn("contact_info_header_helper");
    if (localHelperHeaderPreference != null)
      localHelperHeaderPreference.onDetach();
    return true;
  }

  public void a(int paramInt, ao paramao, Object paramObject)
  {
    int i = au.U(paramObject);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    arrayOfObject1[1] = Integer.valueOf(i);
    arrayOfObject1[2] = paramao;
    aa.e("MicroMsg.ContactWidgetPlugin", "onNotifyChange event:%d obj:%d stg:%s", arrayOfObject1);
    if ((paramao != be.uz().sr()) || (i <= 0))
    {
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(i);
      arrayOfObject2[1] = paramao;
      aa.b("MicroMsg.ContactWidgetPlugin", "onNotifyChange error obj:%d stg:%s", arrayOfObject2);
    }
    while ((i != 40) && (i != 34) && (i != 7))
    {
      Object[] arrayOfObject2;
      return;
    }
    Jh();
  }

  public boolean a(n paramn, i parami, boolean paramBoolean, int paramInt)
  {
    boolean bool1;
    if (parami != null)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (au.hW(parami.getUsername()).length() <= 0)
        break label80;
    }
    label80: for (boolean bool2 = true; ; bool2 = false)
    {
      Assert.assertTrue(bool2);
      boolean bool3 = false;
      if (paramn != null)
        bool3 = true;
      Assert.assertTrue(bool3);
      be.uz().sr().a(this);
      this.cQI = parami;
      this.cIG = paramn;
      Jh();
      return true;
      bool1 = false;
      break;
    }
  }

  protected abstract boolean aLe();

  protected abstract void clear();

  protected abstract void dW(boolean paramBoolean);

  public boolean iO(String paramString)
  {
    if ("contact_info_plugin_clear_data".equals(paramString))
    {
      String[] arrayOfString2 = this.context.getResources().getStringArray(2131296312);
      h.b(this.context, null, arrayOfString2, "", new bc(this));
      return true;
    }
    if (paramString.equals("contact_info_plugin_install"))
    {
      dW(true);
      return true;
    }
    if (paramString.equals("contact_info_plugin_uninstall"))
    {
      String[] arrayOfString1 = this.context.getResources().getStringArray(2131296311);
      h.b(this.context, this.context.getString(2131165874), arrayOfString1, "", new bd(this));
    }
    aa.e("MicroMsg.ContactWidgetPlugin", "handleEvent : unexpected key = " + paramString);
    return false;
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.bb
 * JD-Core Version:    0.6.2
 */