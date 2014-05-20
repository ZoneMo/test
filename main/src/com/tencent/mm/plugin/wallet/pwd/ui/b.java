package com.tencent.mm.plugin.wallet.pwd.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.b.i;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.plugin.wallet.bind.model.f;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Iterator;
import java.util.List;

final class b
  implements View.OnClickListener
{
  b(WalletForgotPwdUI paramWalletForgotPwdUI)
  {
  }

  public final void onClick(View paramView)
  {
    Bundle localBundle = new Bundle();
    if (WalletForgotPwdUI.a(this.fdz) == null)
    {
      f localf = new f(WalletForgotPwdUI.b(this.fdz).getText(), null);
      this.fdz.l(localf);
      return;
    }
    i locali = h.m(this.fdz);
    localBundle.putParcelable("kbankcard", WalletForgotPwdUI.a(this.fdz));
    ElementQuery localElementQuery1 = new ElementQuery();
    Iterator localIterator = WalletForgotPwdUI.c(this.fdz).iterator();
    ElementQuery localElementQuery2;
    do
    {
      if (!localIterator.hasNext())
        break;
      localElementQuery2 = (ElementQuery)localIterator.next();
    }
    while ((cj.hX(localElementQuery2.eXo)) || (cj.hX(WalletForgotPwdUI.a(this.fdz).eWH)) || (!localElementQuery2.eXo.trim().equals(WalletForgotPwdUI.a(this.fdz).eWH.trim())));
    while (true)
    {
      localBundle.putParcelable("elemt_query", localElementQuery2);
      if (locali == null)
        break;
      locali.b(this.fdz, localBundle);
      return;
      localElementQuery2 = localElementQuery1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.b
 * JD-Core Version:    0.6.2
 */