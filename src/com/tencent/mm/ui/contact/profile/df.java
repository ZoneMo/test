package com.tencent.mm.ui.contact.profile;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.storage.i;
import junit.framework.Assert;

final class df extends cb
{
  public df(NormalUserFooterPreference paramNormalUserFooterPreference)
  {
    super(paramNormalUserFooterPreference);
  }

  protected final void aLg()
  {
    boolean bool1 = true;
    boolean bool2;
    if (!v.cm(NormalUserFooterPreference.a(this.gXk).getUsername()))
    {
      bool2 = bool1;
      Assert.assertTrue(bool2);
      if (w.db(NormalUserFooterPreference.a(this.gXk).getUsername()))
        break label121;
    }
    while (true)
    {
      Assert.assertTrue(bool1);
      NormalUserFooterPreference.o(this.gXk).setVisibility(8);
      NormalUserFooterPreference.p(this.gXk).setVisibility(8);
      NormalUserFooterPreference.e(this.gXk).setText(2131166243);
      NormalUserFooterPreference.e(this.gXk).setVisibility(0);
      NormalUserFooterPreference.q(this.gXk).setVisibility(8);
      NormalUserFooterPreference.m(this.gXk).setVisibility(8);
      return;
      bool2 = false;
      break;
      label121: bool1 = false;
    }
  }

  public final void aLi()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.df
 * JD-Core Version:    0.6.2
 */