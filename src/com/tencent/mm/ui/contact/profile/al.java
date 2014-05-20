package com.tencent.mm.ui.contact.profile;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.model.r;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.b.a;
import com.tencent.mm.pluginsdk.ui.applet.ContactListExpandPreference;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.c;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.base.preference.PreferenceCategory;
import com.tencent.mm.ui.base.preference.PreferenceSmallCategory;
import com.tencent.mm.ui.base.preference.n;
import java.util.List;
import junit.framework.Assert;

public final class al
  implements a
{
  private n cIG;
  private i cQI;
  private com.tencent.mm.storage.b cWL;
  private String cWy;
  private Context context;
  private boolean dNx;
  private int edN;
  private boolean gVU;
  private int gWq;
  private ContactListExpandPreference gWr;

  public al(Context paramContext)
  {
    this.context = paramContext;
    this.gWr = new ContactListExpandPreference(paramContext, 0);
  }

  public final boolean Ji()
  {
    if (this.gWr != null)
      ContactListExpandPreference.onDetach();
    NormalUserFooterPreference localNormalUserFooterPreference = (NormalUserFooterPreference)this.cIG.wn("contact_info_footer_normal");
    if (localNormalUserFooterPreference != null)
      localNormalUserFooterPreference.Ji();
    return true;
  }

  public final boolean a(n paramn, i parami, boolean paramBoolean, int paramInt)
  {
    boolean bool1;
    boolean bool2;
    if (parami != null)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (au.hW(parami.getUsername()).length() <= 0)
        break label360;
      bool2 = true;
      label28: Assert.assertTrue(bool2);
      if (paramn == null)
        break label366;
    }
    label360: label366: for (boolean bool3 = true; ; bool3 = false)
    {
      Assert.assertTrue(bool3);
      this.cIG = paramn;
      this.cQI = parami;
      this.dNx = paramBoolean;
      this.edN = paramInt;
      this.gVU = ((Activity)this.context).getIntent().getBooleanExtra("User_Verify", false);
      this.gWq = ((Activity)this.context).getIntent().getIntExtra("Kdel_from", -1);
      this.cWy = parami.getUsername();
      this.cWL = be.uz().sA().tt(this.cWy);
      this.cIG.removeAll();
      PreferenceSmallCategory localPreferenceSmallCategory = new PreferenceSmallCategory(this.context);
      this.cIG.b(localPreferenceSmallCategory);
      this.gWr.setKey("roominfo_contact_anchor");
      this.cIG.b(this.gWr);
      PreferenceCategory localPreferenceCategory = new PreferenceCategory(this.context);
      this.cIG.b(localPreferenceCategory);
      NormalUserFooterPreference localNormalUserFooterPreference = new NormalUserFooterPreference(this.context);
      localNormalUserFooterPreference.setLayoutResource(2130903220);
      localNormalUserFooterPreference.setKey("contact_info_footer_normal");
      if (localNormalUserFooterPreference.a(this.cQI, "", this.dNx, this.gVU, false, this.edN, this.gWq, false, false, 0L, ""))
        this.cIG.b(localNormalUserFooterPreference);
      this.gWr.a(this.cIG, this.gWr.getKey());
      List localList = r.cg(this.cWy);
      this.gWr.ct(false).cu(false);
      this.gWr.d(this.cWy, localList);
      this.gWr.a(new am(this));
      return true;
      bool1 = false;
      break;
      bool2 = false;
      break label28;
    }
  }

  public final boolean iO(String paramString)
  {
    aa.d("MicroMsg.ContactWidgetGroupCard", "handleEvent " + paramString);
    i locali = be.uz().su().tO(paramString);
    if (locali == null)
      return true;
    Intent localIntent = new Intent();
    localIntent.setClass(this.context, ContactInfoUI.class);
    localIntent.putExtra("Contact_User", locali.getUsername());
    this.context.startActivity(localIntent);
    return true;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.al
 * JD-Core Version:    0.6.2
 */