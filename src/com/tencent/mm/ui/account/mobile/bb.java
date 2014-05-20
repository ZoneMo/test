package com.tencent.mm.ui.account.mobile;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.e;

final class bb
  implements View.OnClickListener
{
  bb(MobileInputUI paramMobileInputUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("country_name", this.gwj.cuq);
    localIntent.putExtra("couttry_code", this.gwj.cjJ);
    a.cHS.c(localIntent, this.gwj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.bb
 * JD-Core Version:    0.6.2
 */