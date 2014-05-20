package com.tencent.mm.plugin.wallet.pwd.ui;

import android.os.Bundle;
import com.tencent.mm.plugin.wallet.b.f;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.e.b;
import com.tencent.mm.q;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;

public class WalletPasswordSettingUI extends MMPreference
{
  private com.tencent.mm.ui.base.preference.n cIG;

  protected final void FR()
  {
    mn(com.tencent.mm.n.bGF);
    b.b(this);
    this.cIG = aIj();
    this.cIG.addPreferencesFromResource(q.bKc);
    a(new e(this));
  }

  public final int Gc()
  {
    return -1;
  }

  public final boolean a(com.tencent.mm.ui.base.preference.n paramn, Preference paramPreference)
  {
    if ("wallet_modify_password".equals(paramPreference.getKey()))
    {
      h.a(this, f.class, new Bundle(), 3, true);
      return true;
    }
    if ("wallet_forget_password".equals(paramPreference.getKey()))
    {
      h.a(this, com.tencent.mm.plugin.wallet.b.e.class, c.anX().aoe());
      return true;
    }
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.WalletPasswordSettingUI
 * JD-Core Version:    0.6.2
 */