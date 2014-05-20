package com.tencent.mm.plugin.wallet.bind.ui;

import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.model.e;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.MMScrollView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.plugin.wallet.ui.l;
import com.tencent.mm.sdk.platformtools.aa;

public class WalletResetInfoUI extends WalletBaseUI
  implements l
{
  private Button dLL;
  private Orders eYV;
  private EditHintView eZG;
  private EditHintView eZH;
  private EditHintView eZI;
  private Authen eZJ;

  private boolean UW()
  {
    if (!this.eZG.U(null));
    for (boolean bool = false; ; bool = true)
    {
      if (!this.eZI.U(null))
        bool = false;
      if (!this.eZH.U(null))
        bool = false;
      if ((this.eYV == null) || (this.eZJ == null))
        bool = false;
      if (bool)
      {
        this.dLL.setEnabled(true);
        this.dLL.setClickable(true);
        return bool;
      }
      this.dLL.setEnabled(false);
      this.dLL.setClickable(false);
      return bool;
    }
  }

  protected final void FR()
  {
    TextView localTextView1 = (TextView)findViewById(i.aQR);
    TextView localTextView2 = (TextView)findViewById(i.aQQ);
    TextView localTextView3 = (TextView)findViewById(i.aQS);
    Bankcard localBankcard = (Bankcard)aoJ().getParcelable("key_bankcard");
    this.eYV = ((Orders)aoJ().getParcelable("key_orders"));
    this.eZJ = ((Authen)aoJ().getParcelable("key_authen"));
    if (localBankcard != null)
    {
      localTextView1.setText(localBankcard.eWI);
      localTextView2.setText(localBankcard.dCO + " " + getString(n.bGX) + localBankcard.eWQ);
    }
    this.eZG = ((EditHintView)findViewById(i.aqX));
    this.eZH = ((EditHintView)findViewById(i.aqW));
    this.eZI = ((EditHintView)findViewById(i.aBF));
    this.eZG.a(this);
    this.eZH.a(this);
    this.eZI.a(this);
    ((MMScrollView)findViewById(i.aQU)).aoI();
    switch (aoJ().getInt("key_err_code", 408))
    {
    default:
      mn(n.bHm);
      this.eZI.setVisibility(0);
      if (localBankcard != null)
      {
        String str = getString(n.bHl);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localBankcard.eWJ;
        localTextView3.setText(String.format(str, arrayOfObject));
      }
      break;
    case 402:
    case 403:
    }
    while (true)
    {
      this.dLL = ((Button)findViewById(i.aCN));
      this.dLL.setOnClickListener(new bg(this));
      UW();
      return;
      mn(n.bHk);
      this.eZH.setVisibility(0);
      localTextView3.setText(n.bHj);
      continue;
      mn(n.bHo);
      this.eZG.setVisibility(0);
      localTextView3.setText(n.bHn);
    }
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    aa.d("Micromsg.WalletResetInfoUI", " errCode: " + paramInt2 + " errMsg :" + paramString);
    boolean bool = false;
    if (paramInt1 == 0)
    {
      bool = false;
      if (paramInt2 == 0)
      {
        Bundle localBundle = aoJ();
        if ((parama instanceof e))
        {
          e locale = (e)parama;
          localBundle.putString("kreq_token", locale.ank());
          if (locale.fbe)
            localBundle.putParcelable("key_orders", locale.fbf);
        }
        localBundle.putInt("key_err_code", 0);
        h.e(this, localBundle);
        bool = true;
      }
    }
    return bool;
  }

  public final void aN(boolean paramBoolean)
  {
    UW();
  }

  protected final int getLayoutId()
  {
    return k.bbS;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.WalletResetInfoUI
 * JD-Core Version:    0.6.2
 */