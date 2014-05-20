package com.tencent.mm.ui.contact.profile;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;

final class cv extends cb
{
  public cv(NormalUserFooterPreference paramNormalUserFooterPreference)
  {
    super(paramNormalUserFooterPreference);
  }

  protected final void aLg()
  {
    NormalUserFooterPreference.o(this.gXk).setVisibility(8);
    if ((!NormalUserFooterPreference.a(this.gXk).rb()) || ((NormalUserFooterPreference.a(this.gXk).rb()) && (i.tC(NormalUserFooterPreference.a(this.gXk).getUsername()))))
    {
      NormalUserFooterPreference.p(this.gXk).setVisibility(0);
      NormalUserFooterPreference.e(this.gXk).setVisibility(8);
    }
    while (true)
    {
      NormalUserFooterPreference.q(this.gXk).setVisibility(8);
      NormalUserFooterPreference.h(this.gXk).setVisibility(8);
      NormalUserFooterPreference.m(this.gXk).setVisibility(8);
      NormalUserFooterPreference.v(this.gXk).setOnClickListener(new cw(this));
      return;
      NormalUserFooterPreference.p(this.gXk).setVisibility(8);
      NormalUserFooterPreference.e(this.gXk).setVisibility(0);
    }
  }

  protected final void aLi()
  {
    if (NormalUserFooterPreference.a(this.gXk) == null)
    {
      aa.e("MicroMsg.NormalUserFooterPreference", "contact is null in NearByFriendHandler");
      return;
    }
    if ((!NormalUserFooterPreference.a(this.gXk).rb()) || ((NormalUserFooterPreference.a(this.gXk).rb()) && (i.tC(NormalUserFooterPreference.a(this.gXk).getUsername()))))
    {
      dY(true);
      return;
    }
    aLh();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cv
 * JD-Core Version:    0.6.2
 */