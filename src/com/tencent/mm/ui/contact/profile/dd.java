package com.tencent.mm.ui.contact.profile;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.storage.i;

final class dd extends cb
{
  public dd(NormalUserFooterPreference paramNormalUserFooterPreference)
  {
    super(paramNormalUserFooterPreference);
  }

  protected final void aLg()
  {
    NormalUserFooterPreference.o(this.gXk).setVisibility(8);
    NormalUserFooterPreference.p(this.gXk).setVisibility(0);
    NormalUserFooterPreference.q(this.gXk).setVisibility(8);
    NormalUserFooterPreference.e(this.gXk).setVisibility(8);
    NormalUserFooterPreference.h(this.gXk).setVisibility(8);
    NormalUserFooterPreference.m(this.gXk).setVisibility(8);
    NormalUserFooterPreference.v(this.gXk).setOnClickListener(new de(this));
  }

  protected final void aLi()
  {
    if ((NormalUserFooterPreference.a(this.gXk) != null) && (NormalUserFooterPreference.a(this.gXk).rb()))
    {
      aLh();
      return;
    }
    dY(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.dd
 * JD-Core Version:    0.6.2
 */