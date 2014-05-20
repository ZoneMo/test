package com.tencent.mm.ui.account.bind;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.cj;

final class f
  implements View.OnClickListener
{
  f(BindMobileUI paramBindMobileUI)
  {
  }

  public final void onClick(View paramView)
  {
    if ((BindMobileUI.a(this.gvD).getText().toString() == null) || (BindMobileUI.a(this.gvD).getText().toString().length() == 0))
    {
      Toast.makeText(this.gvD, this.gvD.getString(n.beR), 0).show();
      return;
    }
    BindMobileUI.b(this.gvD, BindMobileUI.b(this.gvD).getText().toString().trim() + cj.sY(BindMobileUI.a(this.gvD).getText().toString()));
    BindMobileUI.c(this.gvD, BindMobileUI.c(this.gvD));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.f
 * JD-Core Version:    0.6.2
 */