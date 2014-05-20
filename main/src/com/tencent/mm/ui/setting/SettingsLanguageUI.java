package com.tencent.mm.ui.setting;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.account.LanguagePreference;
import com.tencent.mm.ui.account.bb;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.PreferenceCategory;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.bt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SettingsLanguageUI extends MMPreference
{
  private static final String[] hdR = e.hdR;
  private n cIG;
  private String gsZ;
  private List hfm;
  private boolean hfn = false;

  public static String t(Context paramContext)
  {
    int i = 0;
    String[] arrayOfString1 = paramContext.getResources().getStringArray(2131296313);
    String str = z.b(paramContext.getSharedPreferences(al.azs(), 0));
    if (str == null)
      return paramContext.getString(2131167763);
    String[] arrayOfString2 = hdR;
    int j = arrayOfString2.length;
    int k = 0;
    while (i < j)
    {
      if (arrayOfString2[i].equals(str))
        return arrayOfString1[k];
      k++;
      i++;
    }
    return paramContext.getString(2131167763);
  }

  protected final void FR()
  {
    int i = 0;
    mn(2131166012);
    a(new bx(this));
    a(getString(2131166013), new by(this), bt.gnO);
    this.hfn = getIntent().getBooleanExtra("not_auth_setting", false);
    this.cIG.removeAll();
    String[] arrayOfString = getResources().getStringArray(2131296313);
    this.gsZ = z.b(getSharedPreferences(al.azs(), 0));
    this.hfm = new ArrayList();
    while (i < hdR.length)
    {
      String str = hdR[i];
      this.hfm.add(new bb(arrayOfString[i], "", str, this.gsZ.equalsIgnoreCase(str)));
      i++;
    }
    Iterator localIterator = this.hfm.iterator();
    while (localIterator.hasNext())
    {
      bb localbb = (bb)localIterator.next();
      LanguagePreference localLanguagePreference = new LanguagePreference(this);
      localLanguagePreference.a(localbb);
      this.cIG.b(localLanguagePreference);
    }
    PreferenceCategory localPreferenceCategory = new PreferenceCategory(this);
    this.cIG.b(localPreferenceCategory);
    this.cIG.notifyDataSetChanged();
  }

  public final int Gc()
  {
    return -1;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    if ((paramPreference instanceof LanguagePreference))
    {
      bb localbb = ((LanguagePreference)paramPreference).aFJ();
      if (localbb == null)
        return false;
      this.gsZ = localbb.Tn();
      Iterator localIterator = this.hfm.iterator();
      while (localIterator.hasNext())
        ((bb)localIterator.next()).setSelected(false);
      localbb.setSelected(true);
      paramn.notifyDataSetChanged();
      return true;
    }
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cIG = aIj();
    FR();
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SettingsLanguageUI
 * JD-Core Version:    0.6.2
 */