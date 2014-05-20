package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.wallet.b.d;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.bind.model.g;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;

public class WalletBindUI extends WalletBaseUI
{
  private boolean eYo = false;
  private String eYp;
  private int eYq = -1;

  private void ann()
  {
    this.eYp = getIntent().getStringExtra("req_import_key");
    this.eYq = getIntent().getIntExtra("intent_bind_scene", -1);
    PayInfo localPayInfo = new PayInfo();
    aoJ().putParcelable("key_pay_info", localPayInfo);
    if (this.eYq == 2)
    {
      if (!cj.hX(this.eYp))
      {
        aa.d("MicroMsg.WalletBindUI", "importKey " + this.eYp);
        localPayInfo.fbg = 2;
        k(new com.tencent.mm.plugin.wallet.bind.model.h(this.eYp, localPayInfo));
        return;
      }
      pA("");
      return;
    }
    if (this.eYq == 4)
    {
      if (getIntent() == null)
      {
        pA("");
        return;
      }
      k(new com.tencent.mm.plugin.wallet.bind.model.c(getIntent().getStringExtra("appId"), getIntent().getStringExtra("timeStamp"), getIntent().getStringExtra("nonceStr"), getIntent().getStringExtra("packageExt"), getIntent().getStringExtra("signtype"), getIntent().getStringExtra("paySignature"), getIntent().getStringExtra("url")));
      return;
    }
    ano();
  }

  private void ano()
  {
    PayInfo localPayInfo = new PayInfo();
    Bundle localBundle = aoJ();
    localBundle.putParcelable("key_pay_info", localPayInfo);
    localBundle.putBoolean("need_bind_response", true);
    localBundle.putString("custom_bind_tips", getIntent().getStringExtra("intent_custom_bind_tips"));
    aa.d("MicroMsg.WalletBindUI", "has reg" + com.tencent.mm.plugin.wallet.c.c.anX().aob());
    if (com.tencent.mm.plugin.wallet.c.c.anX().aob() == 0)
    {
      this.eYo = true;
      localPayInfo.fbg = 1;
      localBundle.putInt("key_bind_scene", 1);
      com.tencent.mm.plugin.wallet.b.h.a(this, d.class, localBundle, 3, true);
      return;
    }
    if (com.tencent.mm.plugin.wallet.c.c.anX().aob() == 1)
    {
      this.eYo = true;
      com.tencent.mm.plugin.wallet.b.h.a(this, com.tencent.mm.plugin.wallet.b.c.class, localBundle, 3, true);
      return;
    }
    k(new g(null));
  }

  private void pA(String paramString)
  {
    if (cj.hX(paramString))
      paramString = getString(n.bHu);
    com.tencent.mm.ui.base.h.a(this, paramString, null, false, new v(this));
  }

  protected final boolean Vf()
  {
    return true;
  }

  public final boolean Vi()
  {
    return false;
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    if ((parama instanceof com.tencent.mm.plugin.wallet.bind.model.h))
      this.eYo = true;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if ((parama instanceof g))
      {
        ann();
        return true;
      }
      if ((parama instanceof com.tencent.mm.plugin.wallet.bind.model.h))
      {
        com.tencent.mm.plugin.wallet.bind.model.h localh = (com.tencent.mm.plugin.wallet.bind.model.h)parama;
        Bundle localBundle = aoJ();
        localBundle.putBoolean("key_is_import_bind", true);
        if ((localh.eXH != null) && (localh.eXH.size() > 0))
        {
          Bankcard localBankcard = (Bankcard)localh.eXH.get(0);
          if (!localBankcard.eXa)
          {
            localBundle.putBoolean("need_bind_response", true);
            localBundle.putString("kreq_token", localh.etE);
            localBundle.putString("key_bank_username", localh.eXM);
            localBundle.putParcelable("key_import_bankcard", localBankcard);
            if (localh.eXL)
            {
              this.eYo = true;
              com.tencent.mm.plugin.wallet.b.h.a(this, com.tencent.mm.plugin.wallet.b.c.class, localBundle, 3, true);
              com.tencent.mm.plugin.wallet.b.h.a(new s(this));
            }
          }
        }
        while (true)
        {
          return true;
          this.eYo = true;
          localBundle.putInt("key_bind_scene", 2);
          com.tencent.mm.plugin.wallet.b.h.a(this, d.class, localBundle, 3, true);
          break;
          com.tencent.mm.ui.base.h.a(this, n.bFN, 0, false, new t(this));
          continue;
          if (cj.hX(paramString))
            paramString = getString(n.bFt);
          com.tencent.mm.ui.base.h.a(this, paramString, null, false, new u(this));
        }
      }
    }
    else
    {
      pA(paramString);
      return true;
    }
    return false;
  }

  public final boolean c(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      ano();
      return true;
    }
    pA(paramString);
    return true;
  }

  protected final int getLayoutId()
  {
    return -1;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(580, this);
    ann();
  }

  public void onDestroy()
  {
    be.uA().b(580, this);
    super.onDestroy();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    aa.v("MicroMsg.WalletBindUI", "onNewIntent");
    setIntent(paramIntent);
    if ((paramIntent != null) && (paramIntent.getBooleanExtra("intent_bind_end", false)))
    {
      aa.d("MicroMsg.WalletBindUI", "pay done... errCode:" + paramIntent.getBooleanExtra("intent_bind_end", false));
      setResult(-1, getIntent());
    }
    while (true)
    {
      finish();
      return;
      aa.d("MicroMsg.WalletBindUI", "pay cancel");
      setResult(0);
    }
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    this.eYo = paramBundle.getBoolean("key_is_jump", false);
  }

  public void onResume()
  {
    if (this.eYo)
      finish();
    super.onResume();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("key_is_jump", this.eYo);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.WalletBindUI
 * JD-Core Version:    0.6.2
 */