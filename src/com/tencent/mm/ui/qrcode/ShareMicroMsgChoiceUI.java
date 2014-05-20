package com.tencent.mm.ui.qrcode;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.an.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.preference.IconPreference;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;
import com.tencent.mm.ui.base.preference.n;

public class ShareMicroMsgChoiceUI extends MMPreference
{
  private n cIG;

  protected final void FR()
  {
    mn(2131168378);
    this.cIG = aIj();
    a(new h(this));
    ((IconPreference)this.cIG.wn("share_micromsg_to_sina")).setIconDrawable(a.k(this, 2130839285));
    ca localca = be.uz().sz().vB("@t.qq.com");
    int i;
    IconPreference localIconPreference1;
    label117: IconPreference localIconPreference2;
    if (cj.c((Integer)be.uz().sr().get(9)) != 0)
    {
      i = 1;
      localIconPreference1 = (IconPreference)this.cIG.wn("share_micromsg_qqwb");
      if ((localca != null) && (i != 0))
        break label188;
      this.cIG.c(localIconPreference1);
      localIconPreference2 = (IconPreference)this.cIG.wn("share_micromsg_qzone");
      if (i != 0)
        break label201;
      this.cIG.c(localIconPreference2);
    }
    IconPreference localIconPreference3;
    while (true)
    {
      localIconPreference3 = (IconPreference)this.cIG.wn("share_micromsg_to_fuckbook");
      if (!v.tC())
        break label215;
      localIconPreference3.setIconDrawable(a.k(this, 2130839284));
      return;
      i = 0;
      break;
      label188: localIconPreference1.setIconDrawable(a.k(this, 2130839282));
      break label117;
      label201: localIconPreference2.setIconDrawable(a.k(this, 2130839230));
    }
    label215: this.cIG.c(localIconPreference3);
  }

  protected final boolean Gb()
  {
    return false;
  }

  public final int Gc()
  {
    return 2131034187;
  }

  public final boolean a(n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (str.equals("share_micromsg_qqwb"))
      if (cj.c((Integer)be.uz().sr().get(9)) != 0)
      {
        Intent localIntent4 = new Intent(this, ShowQRCodeStep1UI.class);
        localIntent4.putExtra("show_to", 1);
        startActivity(localIntent4);
      }
    while (true)
    {
      return false;
      com.tencent.mm.ui.base.h.c(this, 2131168402, 2131167675);
      continue;
      if (str.equals("share_micromsg_qzone"))
      {
        if (cj.c((Integer)be.uz().sr().get(9)) != 0)
        {
          Intent localIntent3 = new Intent(this, ShowQRCodeStep1UI.class);
          localIntent3.putExtra("show_to", 2);
          startActivity(localIntent3);
        }
        else
        {
          com.tencent.mm.ui.base.h.c(this, 2131168402, 2131167675);
        }
      }
      else if (str.equals("share_micromsg_to_sina"))
      {
        Intent localIntent1 = new Intent(this, ShowQRCodeStep1UI.class);
        localIntent1.putExtra("show_to", 3);
        startActivity(localIntent1);
      }
      else if (str.equals("share_micromsg_to_fuckbook"))
      {
        Intent localIntent2 = new Intent(this, ShowQRCodeStep1UI.class);
        localIntent2.putExtra("show_to", 4);
        startActivity(localIntent2);
      }
    }
  }

  public final int getLayoutId()
  {
    return 2130903706;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.qrcode.ShareMicroMsgChoiceUI
 * JD-Core Version:    0.6.2
 */