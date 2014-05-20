package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.CheckedTextView;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import java.util.List;

final class as
  implements MenuItem.OnMenuItemClickListener
{
  as(WalletCardSelectUI paramWalletCardSelectUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Intent localIntent = new Intent();
    ElementQuery localElementQuery;
    if ((WalletCardSelectUI.b(this.eZA).isChecked()) && (WalletCardSelectUI.c(this.eZA) >= 0))
    {
      localElementQuery = (ElementQuery)WalletCardSelectUI.d(this.eZA).get(WalletCardSelectUI.c(this.eZA));
      if (localElementQuery == null)
        break label149;
      localIntent.putExtra("elemt_query", localElementQuery);
      this.eZA.setResult(-1, localIntent);
    }
    while (true)
    {
      this.eZA.finish();
      return true;
      boolean bool = WalletCardSelectUI.e(this.eZA).isChecked();
      localElementQuery = null;
      if (!bool)
        break;
      int i = WalletCardSelectUI.f(this.eZA);
      localElementQuery = null;
      if (i < 0)
        break;
      localElementQuery = (ElementQuery)WalletCardSelectUI.g(this.eZA).get(WalletCardSelectUI.f(this.eZA));
      break;
      label149: this.eZA.setResult(0);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.as
 * JD-Core Version:    0.6.2
 */