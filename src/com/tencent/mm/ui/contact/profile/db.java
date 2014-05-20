package com.tencent.mm.ui.contact.profile;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.model.w;
import com.tencent.mm.storage.i;
import junit.framework.Assert;

final class db extends cb
{
  public db(NormalUserFooterPreference paramNormalUserFooterPreference)
  {
    super(paramNormalUserFooterPreference);
  }

  protected final void aLg()
  {
    Assert.assertTrue(w.cH(NormalUserFooterPreference.a(this.gXk).getUsername()));
    NormalUserFooterPreference.o(this.gXk).setVisibility(8);
    NormalUserFooterPreference.p(this.gXk).setVisibility(8);
    NormalUserFooterPreference.q(this.gXk).setVisibility(8);
    NormalUserFooterPreference.e(this.gXk).setVisibility(0);
    NormalUserFooterPreference.h(this.gXk).setVisibility(8);
    NormalUserFooterPreference.m(this.gXk).setVisibility(8);
  }

  protected final void aLi()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.db
 * JD-Core Version:    0.6.2
 */