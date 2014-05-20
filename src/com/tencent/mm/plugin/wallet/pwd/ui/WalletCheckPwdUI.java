package com.tencent.mm.plugin.wallet.pwd.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.b.f;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.bind.model.g;
import com.tencent.mm.plugin.wallet.offline.model.OfflinePayResponeFields;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;

public class WalletCheckPwdUI extends WalletBaseUI
{
  private EditHintView fdo;
  private boolean fdp = false;
  private boolean fdq = false;

  protected final void FR()
  {
    TextView localTextView = (TextView)findViewById(com.tencent.mm.i.awT);
    com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
    if ((locali instanceof com.tencent.mm.plugin.wallet.b.c))
      localTextView.setText(n.bFZ);
    while (true)
    {
      this.fdo = ((EditHintView)findViewById(com.tencent.mm.i.awR));
      this.fdo.a(new a(this));
      a(this.fdo, 0, false);
      return;
      if ((locali instanceof f))
      {
        mn(n.bGE);
        localTextView.setText(n.bGa);
      }
      else if ((locali instanceof com.tencent.mm.plugin.wallet.b.k))
      {
        localTextView.setText(n.bGd);
      }
      else
      {
        localTextView.setText(n.bGb);
      }
    }
  }

  protected final boolean Vf()
  {
    return this.fdp;
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.plugin.wallet.c.a parama)
  {
    aa.d("Micromsg.WalletCheckPwdUI", " errCode: " + paramInt2 + " errMsg :" + paramString);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if ((parama instanceof com.tencent.mm.plugin.wallet.pwd.a.b))
      {
        Bundle localBundle = aoJ();
        localBundle.putString("key_pwd1", this.fdo.getText());
        com.tencent.mm.plugin.wallet.b.h.e(this, localBundle);
        if (this.fdo != null)
          this.fdo.UP();
        finish();
      }
      while (true)
      {
        return true;
        if ((parama instanceof g))
        {
          com.tencent.mm.ui.base.h.an(this, getString(n.bGe));
          com.tencent.mm.plugin.wallet.b.h.e(this, null);
          if (this.fdo != null)
            this.fdo.UP();
          finish();
        }
        else if ((parama instanceof com.tencent.mm.plugin.wallet.bind.model.i))
        {
          Bankcard localBankcard = (Bankcard)aoJ().getParcelable("key_bankcard");
          com.tencent.mm.plugin.wallet.c.c.anX();
          OfflinePayResponeFields localOfflinePayResponeFields = OfflinePayResponeFields.pF(com.tencent.mm.plugin.wallet.c.c.aoi());
          if ((localBankcard != null) && (localOfflinePayResponeFields != null) && (localBankcard.eWT != null) && (localBankcard.eWT.equals(localOfflinePayResponeFields.eWT)))
          {
            com.tencent.mm.plugin.wallet.c.c.anX();
            com.tencent.mm.plugin.wallet.c.c.pE("");
            be.uz().sr().set(196616, Boolean.valueOf(false));
          }
          if (com.tencent.mm.plugin.wallet.b.h.m(this).d(this, null))
          {
            k(new g(aoK()));
          }
          else
          {
            com.tencent.mm.plugin.wallet.b.h.e(this, null);
            if (this.fdo != null)
              this.fdo.UP();
            finish();
          }
        }
        else if ((parama instanceof com.tencent.mm.plugin.wallet.offline.model.a))
        {
          be.uz().sr().set(196616, Boolean.valueOf(true));
          com.tencent.mm.plugin.wallet.b.h.e(this, aoJ());
        }
        else
        {
          finish();
        }
      }
    }
    if (this.fdo != null)
      this.fdo.UP();
    return false;
  }

  protected final void aoA()
  {
    if (this.fdp)
      finish();
    while (this.fdo == null)
      return;
    this.fdo.UP();
  }

  public final boolean aoB()
  {
    return false;
  }

  protected final void aoC()
  {
    aa.d("Micromsg.WalletCheckPwdUI", "check pwd ");
    aoL();
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.bbB;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bGc);
    com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
    this.fdp = false;
    if ((locali instanceof com.tencent.mm.plugin.wallet.b.k))
    {
      this.fdq = aoJ().getBoolean("offline_pay", false);
      if (this.fdq)
        mn(n.bGp);
    }
    while (true)
    {
      if (!this.fdp)
        FR();
      return;
      mn(n.bGo);
      Bankcard localBankcard = (Bankcard)aoJ().getParcelable("key_bankcard");
      if ((localBankcard != null) && (localBankcard.ang() == 1))
      {
        k(new com.tencent.mm.plugin.wallet.bind.model.i(localBankcard.eWH, localBankcard.eWT));
        this.fdp = true;
        continue;
        gI(0);
      }
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public void onResume()
  {
    if (this.fdo != null)
      this.fdo.UP();
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.WalletCheckPwdUI
 * JD-Core Version:    0.6.2
 */