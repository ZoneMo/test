package com.tencent.mm.ui.setting;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.PreferenceCategory;
import com.tencent.mm.ui.base.preference.n;
import com.tencent.mm.ui.bt;
import com.tencent.mm.ui.ez;

public class SetTextSizeUI extends MMPreference
{
  private n cIG;
  private float hek;
  private int xy = 1;

  private static float cc(Context paramContext)
  {
    float f = ez.bS(paramContext);
    if ((f != 1.0F) && (f != 0.875F) && (f != 1.125F) && (f != 1.25F) && (f != 1.375F))
      return 1.0F;
    return f;
  }

  public static int cd(Context paramContext)
  {
    float f = cc(paramContext);
    if (f == 0.875F)
      return 2131166168;
    if (f == 1.125F)
      return 2131166166;
    if (f == 1.25F)
      return 2131166165;
    if (f == 1.375F)
      return 2131166164;
    return 2131166167;
  }

  private void refresh()
  {
    this.cIG.removeAll();
    ad localad1 = new ad(this, this, 0.875F);
    localad1.setTitle(2131166168);
    localad1.setKey("setting_text_size_small");
    localad1.setLayoutResource(2130903475);
    ad localad2;
    label109: ad localad3;
    label165: ad localad4;
    label226: ad localad5;
    if (this.hek == 0.875F)
    {
      localad1.setWidgetLayoutResource(2130903524);
      this.cIG.b(localad1);
      localad2 = new ad(this, this, 1.0F);
      localad2.setTitle(2131166167);
      localad2.setKey("setting_text_size_normal");
      localad2.setLayoutResource(2130903475);
      if (this.hek != 1.0F)
        break label412;
      localad2.setWidgetLayoutResource(2130903524);
      this.cIG.b(localad2);
      localad3 = new ad(this, this, 1.125F);
      localad3.setTitle(2131166166);
      localad3.setKey("setting_text_size_large");
      localad3.setLayoutResource(2130903475);
      if (this.hek != 1.125F)
        break label421;
      localad3.setWidgetLayoutResource(2130903524);
      this.cIG.b(localad3);
      localad4 = new ad(this, this, 1.25F);
      localad4.setTitle(2131166165);
      localad4.setKey("setting_text_size_super");
      localad4.setLayoutResource(2130903475);
      if (this.hek != 1.25F)
        break label430;
      localad4.setWidgetLayoutResource(2130903524);
      this.cIG.b(localad4);
      localad5 = new ad(this, this, 1.375F);
      localad5.setTitle(2131166164);
      localad5.setKey("setting_text_size_huge");
      localad5.setLayoutResource(2130903475);
      if (this.hek != 1.375F)
        break label440;
      localad5.setWidgetLayoutResource(2130903524);
    }
    while (true)
    {
      this.cIG.b(localad5);
      PreferenceCategory localPreferenceCategory = new PreferenceCategory(this);
      this.cIG.b(localPreferenceCategory);
      this.cIG.notifyDataSetChanged();
      ViewGroup localViewGroup = (ViewGroup)aES();
      int i = 0;
      int j = localViewGroup.getChildCount();
      while (i < j)
      {
        View localView = localViewGroup.getChildAt(i);
        if ((localView instanceof TextView))
          aa.d("ui.settings.SetTextSize", "id=" + localView.getId());
        i++;
      }
      localad1.setWidgetLayoutResource(2130903525);
      break;
      label412: localad2.setWidgetLayoutResource(2130903525);
      break label109;
      label421: localad3.setWidgetLayoutResource(2130903525);
      break label165;
      label430: localad4.setWidgetLayoutResource(2130903525);
      break label226;
      label440: localad5.setWidgetLayoutResource(2130903525);
    }
  }

  protected final void FR()
  {
    this.hek = cc(this);
    this.cIG = aIj();
    mn(2131165974);
    a(new ab(this));
    a(getString(2131166013), new ac(this), bt.gnO);
    refresh();
  }

  public final int Gc()
  {
    return -1;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    this.xy = 1;
    if (str.equals("setting_text_size_small"))
    {
      this.hek = 0.875F;
      this.xy = 0;
    }
    while (true)
    {
      refresh();
      return false;
      if (str.equals("setting_text_size_normal"))
      {
        this.hek = 1.0F;
        this.xy = 1;
      }
      else if (str.equals("setting_text_size_large"))
      {
        this.hek = 1.125F;
        this.xy = 2;
      }
      else if (str.equals("setting_text_size_super"))
      {
        this.hek = 1.25F;
        this.xy = 3;
      }
      else if (str.equals("setting_text_size_huge"))
      {
        this.hek = 1.375F;
        this.xy = 4;
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.SetTextSizeUI
 * JD-Core Version:    0.6.2
 */