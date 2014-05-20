package com.tencent.mm.plugin.wallet.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import java.util.HashSet;
import java.util.Iterator;

final class aa
  implements DialogInterface.OnCancelListener
{
  aa(WalletBaseUI paramWalletBaseUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if ((this.feg.dID != null) && (WalletBaseUI.a(this.feg).isEmpty()))
    {
      this.feg.dID.dismiss();
      localIterator = WalletBaseUI.b(this.feg).iterator();
      while (localIterator.hasNext())
      {
        localx = (x)localIterator.next();
        be.uA().c(localx);
      }
      WalletBaseUI.b(this.feg).clear();
    }
    while ((this.feg.dID == null) || (WalletBaseUI.a(this.feg).isEmpty()))
    {
      Iterator localIterator;
      x localx;
      return;
    }
    this.feg.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.aa
 * JD-Core Version:    0.6.2
 */