package com.tencent.mm.ui.contact.profile;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.ao.b;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.b.a;
import com.tencent.mm.pluginsdk.ui.preference.NormalUserHeaderPreference;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.base.preference.KeyValuePreference;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.contact.FriendPreference;
import junit.framework.Assert;

public final class v
  implements a
{
  private n cIG;
  private final Context context;

  public v(Context paramContext)
  {
    this.context = paramContext;
  }

  public final boolean Ji()
  {
    if (this.cIG == null);
    NormalUserFooterPreference localNormalUserFooterPreference;
    do
    {
      return true;
      FriendPreference localFriendPreference = (FriendPreference)this.cIG.wn("contact_info_friend");
      if (localFriendPreference != null)
        localFriendPreference.Ji();
      NormalUserHeaderPreference localNormalUserHeaderPreference = (NormalUserHeaderPreference)this.cIG.wn("contact_info_header_normal");
      if (localNormalUserHeaderPreference != null)
        localNormalUserHeaderPreference.onDetach();
      localNormalUserFooterPreference = (NormalUserFooterPreference)this.cIG.wn("contact_info_footer_normal");
    }
    while (localNormalUserFooterPreference == null);
    localNormalUserFooterPreference.Ji();
    return true;
  }

  public final boolean a(n paramn, i parami, boolean paramBoolean, int paramInt)
  {
    boolean bool1;
    boolean bool2;
    label28: boolean bool3;
    label40: KeyValuePreference localKeyValuePreference;
    if (parami != null)
    {
      bool1 = true;
      Assert.assertTrue(bool1);
      if (au.hW(parami.getUsername()).length() <= 0)
        break label255;
      bool2 = true;
      Assert.assertTrue(bool2);
      if (paramn == null)
        break label261;
      bool3 = true;
      Assert.assertTrue(bool3);
      Ji();
      this.cIG = paramn;
      paramn.removeAll();
      paramn.addPreferencesFromResource(2131034120);
      NormalUserHeaderPreference localNormalUserHeaderPreference = (NormalUserHeaderPreference)paramn.wn("contact_info_header_normal");
      if (localNormalUserHeaderPreference != null)
        localNormalUserHeaderPreference.a(parami, 0, null);
      NormalUserFooterPreference localNormalUserFooterPreference = (NormalUserFooterPreference)paramn.wn("contact_info_footer_normal");
      boolean bool4 = ((Activity)this.context).getIntent().getBooleanExtra("Contact_FMessageCard", false);
      if ((localNormalUserFooterPreference != null) && (!localNormalUserFooterPreference.a(parami, "", paramBoolean, false, true, 25, 0, bool4, false, 0L, "")))
        paramn.c(localNormalUserFooterPreference);
      localKeyValuePreference = (KeyValuePreference)paramn.wn("contact_info_signature");
      if ((parami.rB() == null) || (parami.rB().trim().equals("")))
        break label267;
      if (localKeyValuePreference != null)
      {
        localKeyValuePreference.dB(false);
        localKeyValuePreference.setTitle(this.context.getString(2131166317));
        localKeyValuePreference.setSummary(b.e(this.context, parami.rB(), -2));
        localKeyValuePreference.dC(false);
      }
    }
    while (true)
    {
      return true;
      bool1 = false;
      break;
      label255: bool2 = false;
      break label28;
      label261: bool3 = false;
      break label40;
      label267: paramn.c(localKeyValuePreference);
    }
  }

  public final boolean iO(String paramString)
  {
    return true;
  }

  public final void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.v
 * JD-Core Version:    0.6.2
 */