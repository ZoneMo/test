package com.tencent.mm.plugin.wallet.address.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.wallet.address.model.a;
import com.tencent.mm.plugin.wallet.address.model.i;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class c
  implements MenuItem.OnMenuItemClickListener
{
  c(WalletAddAddressUI paramWalletAddAddressUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (!WalletAddAddressUI.b(this.eWo))
      return true;
    String str1;
    String str3;
    String str4;
    String str5;
    String[] arrayOfString;
    if (WalletAddAddressUI.c(this.eWo) != 0)
    {
      WalletAddAddressUI localWalletAddAddressUI = this.eWo;
      com.tencent.mm.plugin.wallet.c.c.anX();
      WalletAddAddressUI.a(localWalletAddAddressUI, com.tencent.mm.plugin.wallet.c.c.anY().jz(WalletAddAddressUI.c(this.eWo)));
      aa.d("MicroMsg.WalletAddAddressUI", "get addr " + WalletAddAddressUI.d(this.eWo).toString());
      str1 = WalletAddAddressUI.e(this.eWo).getText();
      String str2 = WalletAddAddressUI.f(this.eWo).getText();
      str3 = WalletAddAddressUI.g(this.eWo).getText();
      str4 = WalletAddAddressUI.h(this.eWo).getText();
      str5 = WalletAddAddressUI.i(this.eWo).getText();
      arrayOfString = str2.split(" ");
      if (arrayOfString.length > 0)
        WalletAddAddressUI.d(this.eWo).fcV = arrayOfString[0];
      if (arrayOfString.length >= 2)
        WalletAddAddressUI.d(this.eWo).fcW = arrayOfString[1];
      if (arrayOfString.length < 3)
        break label410;
    }
    label410: for (WalletAddAddressUI.d(this.eWo).fcX = arrayOfString[2]; ; WalletAddAddressUI.d(this.eWo).fcX = WalletAddAddressUI.d(this.eWo).fcW)
    {
      WalletAddAddressUI.d(this.eWo).fcZ = str3;
      WalletAddAddressUI.d(this.eWo).fda = str1;
      WalletAddAddressUI.d(this.eWo).fdb = str5;
      WalletAddAddressUI.d(this.eWo).fcY = str4;
      if (!cj.hX(WalletAddAddressUI.j(this.eWo)))
        WalletAddAddressUI.d(this.eWo).fdc = WalletAddAddressUI.j(this.eWo);
      if (WalletAddAddressUI.c(this.eWo) == 0)
        break label433;
      aa.d("MicroMsg.WalletAddAddressUI", "modify save addr " + WalletAddAddressUI.d(this.eWo).toString());
      com.tencent.mm.plugin.wallet.c.c.anX();
      com.tencent.mm.plugin.wallet.c.c.anY().amY();
      com.tencent.mm.plugin.wallet.address.model.e locale = new com.tencent.mm.plugin.wallet.address.model.e(WalletAddAddressUI.d(this.eWo));
      be.uA().d(locale);
      WalletAddAddressUI.a(this.eWo, com.tencent.mm.plugin.wallet.e.b.a(this.eWo.aal(), false, new d(this)));
      return true;
      WalletAddAddressUI.a(this.eWo, new com.tencent.mm.plugin.wallet.protocal.b());
      break;
    }
    label433: aa.d("MicroMsg.WalletAddAddressUI", "add save addr " + WalletAddAddressUI.d(this.eWo).toString());
    a locala = new a(WalletAddAddressUI.d(this.eWo));
    be.uA().d(locala);
    WalletAddAddressUI.a(this.eWo, com.tencent.mm.plugin.wallet.e.b.a(this.eWo.aal(), false, new e(this)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.c
 * JD-Core Version:    0.6.2
 */