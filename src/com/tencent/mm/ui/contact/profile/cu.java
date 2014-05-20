package com.tencent.mm.ui.contact.profile;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.i;
import junit.framework.Assert;

final class cu extends cb
{
  public cu(NormalUserFooterPreference paramNormalUserFooterPreference)
  {
    super(paramNormalUserFooterPreference);
  }

  protected final void aLg()
  {
    if ((v.cm(NormalUserFooterPreference.a(this.gXk).getUsername())) || (be.uz().sz().has(NormalUserFooterPreference.a(this.gXk).getUsername())));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      NormalUserFooterPreference.o(this.gXk).setVisibility(8);
      NormalUserFooterPreference.p(this.gXk).setVisibility(8);
      NormalUserFooterPreference.q(this.gXk).setVisibility(8);
      NormalUserFooterPreference.e(this.gXk).setVisibility(8);
      NormalUserFooterPreference.h(this.gXk).setVisibility(8);
      NormalUserFooterPreference.m(this.gXk).setVisibility(8);
      return;
    }
  }

  protected final void aLi()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cu
 * JD-Core Version:    0.6.2
 */