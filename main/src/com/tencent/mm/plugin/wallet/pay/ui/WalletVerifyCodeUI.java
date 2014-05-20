package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.c;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.plugin.wallet.b.b;
import com.tencent.mm.plugin.wallet.bind.model.e;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.pay.model.f;
import com.tencent.mm.plugin.wallet.pay.model.j;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public class WalletVerifyCodeUI extends WalletBaseUI
  implements com.tencent.mm.plugin.wallet.ui.l
{
  private Button dLL;
  private Orders eYV;
  private PayInfo eYW;
  private Authen eZJ;
  private EditHintView fcK = null;
  private Button fcL;
  private String fcM;
  private j fcN = null;
  private String fcO;
  private boolean fcP = false;
  private az fcQ = null;

  protected final void FR()
  {
    com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
    TextView localTextView1 = (TextView)findViewById(com.tencent.mm.i.anV);
    String str = cj.R(aoJ().getString("key_mobile"), "");
    TextView localTextView2;
    if ((locali instanceof com.tencent.mm.plugin.wallet.b.g))
    {
      localTextView1.setText(String.format(getString(n.bHA), new Object[] { str }));
      this.fcK = ((EditHintView)findViewById(com.tencent.mm.i.anL));
      this.fcK.a(this);
      this.fcL = ((Button)findViewById(com.tencent.mm.i.avE));
      this.fcL.setOnClickListener(new at(this));
      this.fcL.setClickable(false);
      this.fcL.setEnabled(false);
      if (this.fcQ != null)
      {
        this.fcQ.cancel();
        this.fcQ = null;
      }
      az localaz = new az(this);
      this.fcQ = localaz;
      localaz.start();
      this.dLL = ((Button)findViewById(com.tencent.mm.i.anI));
      this.dLL.setOnClickListener(new au(this));
      localTextView2 = (TextView)findViewById(com.tencent.mm.i.anU);
      localTextView2.setVisibility(0);
      if ((locali == null) || (!locali.anQ()))
        break label305;
      localTextView2.setOnClickListener(new av(this));
    }
    while (true)
    {
      this.fcK.requestFocus();
      return;
      if ((locali instanceof b))
      {
        localTextView1.setText(String.format(getString(n.bHv), new Object[] { str }));
        break;
      }
      localTextView1.setText(String.format(getString(n.bHz), new Object[] { str }));
      break;
      label305: localTextView2.setText(getString(n.bHw));
      localTextView2.setOnClickListener(new ax(this));
    }
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    aa.d("MicroMsg.WalletVertifyCodeUI", " errCode: " + paramInt2 + " errMsg :" + paramString);
    com.tencent.mm.plugin.wallet.b.i locali;
    int i;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      locali = com.tencent.mm.plugin.wallet.b.h.m(this);
      if ((parama instanceof com.tencent.mm.plugin.wallet.bind.model.g))
      {
        aoJ().putBoolean("intent_bind_end", true);
        com.tencent.mm.ui.base.h.an(this, getString(n.bFp));
        i = 1;
      }
    }
    while (true)
    {
      if ((parama instanceof f))
      {
        f localf = (f)parama;
        if (localf.fbe)
          aoJ().putParcelable("key_orders", localf.fbf);
        m localm2 = m.dZN;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(1);
        arrayOfObject2[1] = Integer.valueOf(com.tencent.mm.plugin.wallet.b.l.anS());
        localm2.d(10707, arrayOfObject2);
      }
      while (true)
      {
        if (this.eZJ != null)
        {
          String str = parama.ank();
          if (!cj.hX(str))
            aoJ().putString("kreq_token", str);
        }
        if (i == 0)
          break label327;
        Bundle localBundle = aoJ();
        localBundle.putString("Kvertify_code", this.fcM);
        com.tencent.mm.plugin.wallet.b.h.e(this, localBundle);
        finish();
        return true;
        if ((!(locali instanceof b)) || (!((b)locali).a(parama)))
          break label335;
        if (!locali.d(this, null))
          break label329;
        k(new com.tencent.mm.plugin.wallet.bind.model.g(aoK()));
        i = 0;
        break;
        if ((parama instanceof e))
        {
          m localm1 = m.dZN;
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = Integer.valueOf(2);
          arrayOfObject1[1] = Integer.valueOf(com.tencent.mm.plugin.wallet.b.l.anS());
          localm1.d(10707, arrayOfObject1);
        }
      }
      label327: return false;
      label329: i = 1;
      continue;
      label335: i = 0;
    }
  }

  public final void aN(boolean paramBoolean)
  {
    if (this.fcK.U(null))
    {
      this.dLL.setEnabled(true);
      this.dLL.setClickable(true);
      return;
    }
    this.dLL.setEnabled(false);
    this.dLL.setClickable(false);
  }

  protected final boolean anq()
  {
    return false;
  }

  public final boolean aoB()
  {
    return true;
  }

  protected final int getLayoutId()
  {
    return k.bbX;
  }

  public void onCreate(Bundle paramBundle)
  {
    int i = 2;
    super.onCreate(paramBundle);
    mn(n.bHC);
    this.eYW = ((PayInfo)aoJ().getParcelable("key_pay_info"));
    this.eYV = ((Orders)aoJ().getParcelable("key_orders"));
    this.fcO = aoJ().getString("key_bank_phone");
    this.fcN = new j(new Handler(), this);
    this.fcN.x(getResources().getStringArray(c.ZB));
    this.fcN.a(new as(this));
    this.fcN.start();
    this.fcP = false;
    FR();
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[i];
    int j;
    if ((this.eYW != null) && (this.eYW.fbh != 0))
    {
      j = 1;
      arrayOfObject[0] = Integer.valueOf(j);
      if (!this.fcP)
        break label211;
    }
    while (true)
    {
      arrayOfObject[1] = Integer.valueOf(i);
      localm.d(10706, arrayOfObject);
      com.tencent.mm.plugin.wallet.b.l.anR();
      com.tencent.mm.plugin.wallet.b.l.a(this, aoJ(), 4);
      return;
      j = i;
      break;
      label211: i = 1;
    }
  }

  public void onDestroy()
  {
    if (this.fcN != null)
      this.fcN.stop();
    super.onDestroy();
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.fcN != null)
      this.fcN.stop();
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.WalletVerifyCodeUI
 * JD-Core Version:    0.6.2
 */