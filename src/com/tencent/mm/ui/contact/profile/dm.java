package com.tencent.mm.ui.contact.profile;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;

final class dm extends dh
  implements m
{
  public dm(NormalUserFooterPreference paramNormalUserFooterPreference)
  {
    super(paramNormalUserFooterPreference);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    super.a(paramInt1, paramInt2, paramString, paramx);
  }

  protected final void aLg()
  {
    super.aLg();
    NormalUserFooterPreference.o(this.gXk).setVisibility(0);
    NormalUserFooterPreference.q(this.gXk).setVisibility(8);
    NormalUserFooterPreference.e(this.gXk).setVisibility(8);
    NormalUserFooterPreference.h(this.gXk).setVisibility(8);
    NormalUserFooterPreference.p(this.gXk).setVisibility(8);
    NormalUserFooterPreference.m(this.gXk).setVisibility(8);
    switch (NormalUserFooterPreference.i(this.gXk))
    {
    default:
      NormalUserFooterPreference.f(this.gXk).setVisibility(8);
      NormalUserFooterPreference.s(this.gXk).setVisibility(8);
      if (NormalUserFooterPreference.a(this.gXk).rd())
      {
        NormalUserFooterPreference.t(this.gXk).setText(NormalUserFooterPreference.b(this.gXk).getString(2131166241));
        NormalUserFooterPreference.m(this.gXk).setVisibility(0);
      }
      break;
    case 18:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 34:
    case 58:
    case 59:
    case 60:
    }
    while (true)
    {
      NormalUserFooterPreference.u(this.gXk).setOnClickListener(new dn(this));
      NormalUserFooterPreference.t(this.gXk).setOnClickListener(new do(this));
      return;
      NormalUserFooterPreference.f(this.gXk).setVisibility(0);
      NormalUserFooterPreference.s(this.gXk).setVisibility(0);
      break;
      NormalUserFooterPreference.t(this.gXk).setText(NormalUserFooterPreference.b(this.gXk).getString(2131166237));
    }
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

  protected final void aLm()
  {
    super.aLm();
  }

  protected final void onDetach()
  {
    super.onDetach();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.dm
 * JD-Core Version:    0.6.2
 */