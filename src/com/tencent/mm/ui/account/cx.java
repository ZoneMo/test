package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.ui.account.mobile.MobileInputUI;

final class cx
  implements MenuItem.OnMenuItemClickListener
{
  cx(LoginIndepPass paramLoginIndepPass)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    b.ie("L200_100");
    Intent localIntent = new Intent(this.grj, MobileInputUI.class);
    localIntent.putExtra("mobile_input_purpose", 1);
    localIntent.addFlags(67108864);
    this.grj.startActivity(localIntent);
    this.grj.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.cx
 * JD-Core Version:    0.6.2
 */