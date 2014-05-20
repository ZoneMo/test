package com.tencent.mm.plugin.wallet.bind.ui;

import android.app.Dialog;
import android.content.res.Resources;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.e.b;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;

public class WalletBankcardDetailUI extends WalletBaseUI
{
  private String eYe;
  private Bankcard eYf;
  private TextView eYg;

  protected final void FR()
  {
    this.eYf = ((Bankcard)aoJ().getParcelable("key_bankcard"));
    if (this.eYf == null)
      return;
    LinearLayout localLinearLayout1 = (LinearLayout)findViewById(com.tencent.mm.i.aPK);
    LinearLayout localLinearLayout2 = (LinearLayout)findViewById(com.tencent.mm.i.aPO);
    LinearLayout localLinearLayout3 = (LinearLayout)findViewById(com.tencent.mm.i.aPN);
    if (1 == this.eYf.ang())
    {
      localLinearLayout1.setVisibility(0);
      localLinearLayout2.setVisibility(8);
      ((TextView)findViewById(com.tencent.mm.i.aPL)).setOnClickListener(new i(this));
      ((TextView)findViewById(com.tencent.mm.i.aPT)).setOnClickListener(new j(this));
      return;
    }
    if (this.eYf.anf())
    {
      localLinearLayout1.setVisibility(8);
      localLinearLayout2.setVisibility(0);
      ((TextView)findViewById(com.tencent.mm.i.aPI)).setOnClickListener(new k(this));
      this.eYg = ((TextView)findViewById(com.tencent.mm.i.aPJ));
      if (this.eYf.eWT.equals(this.eYe))
      {
        this.eYg.setVisibility(0);
        TextView localTextView1 = (TextView)findViewById(com.tencent.mm.i.aPR);
        TextView localTextView2 = (TextView)findViewById(com.tencent.mm.i.aPS);
        TextView localTextView3 = (TextView)findViewById(com.tencent.mm.i.aPP);
        TextView localTextView4 = (TextView)findViewById(com.tencent.mm.i.aPQ);
        localTextView1.setText(b.b(this.eYf.eWK, null));
        localTextView2.setText(b.b(this.eYf.eWL, null));
        localTextView3.setText(b.b(this.eYf.eWM, null));
        localTextView4.setText(b.b(this.eYf.eWN, null));
      }
    }
    while (true)
    {
      a(0, com.tencent.mm.h.afQ, new l(this));
      return;
      this.eYg.setVisibility(8);
      break;
      localLinearLayout1.setVisibility(8);
      localLinearLayout2.setVisibility(8);
      localLinearLayout3.setVisibility(0);
      this.eYg = ((TextView)findViewById(com.tencent.mm.i.aPM));
      if (this.eYf.eWT.equals(this.eYe))
        this.eYg.setVisibility(0);
      else
        this.eYg.setVisibility(8);
    }
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    return false;
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.bbu;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.tencent.mm.plugin.wallet.c.c.anX();
    this.eYe = com.tencent.mm.plugin.wallet.c.c.aoh();
    mn(n.bFs);
    FR();
  }

  @Deprecated
  protected Dialog onCreateDialog(int paramInt)
  {
    return com.tencent.mm.ui.base.h.b(aal(), getString(n.bFr), getResources().getStringArray(com.tencent.mm.c.ZA), "", new o(this));
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.WalletBankcardDetailUI
 * JD-Core Version:    0.6.2
 */