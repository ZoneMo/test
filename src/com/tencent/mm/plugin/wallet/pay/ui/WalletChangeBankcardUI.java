package com.tencent.mm.plugin.wallet.pay.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.e.b;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.order.model.Orders.Commodity;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.List;

public class WalletChangeBankcardUI extends WalletBaseUI
  implements View.OnClickListener
{
  private ArrayList eXH;
  private Orders eYV = null;
  private PayInfo eYW = null;
  private Authen eZJ = null;
  private ListView fbA;
  private TextView fbB;
  private Button fbC;
  private EditHintView fbD;
  private int fbE;
  private Bankcard fbF = null;
  private i fbG = null;
  private String fbH = null;
  private int fbI = -1;

  private void jL(int paramInt)
  {
    int i;
    if (this.eXH != null)
    {
      i = this.eXH.size();
      if ((this.eXH == null) || (paramInt >= i))
        break label85;
      localBankcard = (Bankcard)this.eXH.get(paramInt);
      if (localBankcard.a(this.fbE, this.eYV) == 0)
      {
        this.fbF = localBankcard;
        this.fbC.setEnabled(true);
        this.fbI = paramInt;
        this.fbG.notifyDataSetChanged();
      }
    }
    label85: 
    while (i != paramInt)
    {
      Bankcard localBankcard;
      return;
      i = 0;
      break;
    }
    aoJ().putInt("key_err_code", -1003);
    h.e(this, aoJ());
  }

  private void pI(String paramString)
  {
    this.eZJ.fde = paramString;
    Bundle localBundle;
    if (this.fbF != null)
    {
      aoJ().putParcelable("key_bankcard", this.fbF);
      this.eZJ.eXd = this.fbF.eWT;
      this.eZJ.eXo = this.fbF.eWH;
      if (this.eYV.eWV == 3)
      {
        if (!this.fbF.anf())
          break label142;
        this.eZJ.bOY = 3;
        localBundle = aoJ();
        if (this.fbF.anf())
          break label154;
      }
    }
    label142: label154: for (boolean bool = true; ; bool = false)
    {
      localBundle.putBoolean("key_is_oversea", bool);
      aoJ().putParcelable("key_authen", this.eZJ);
      l(new com.tencent.mm.plugin.wallet.pay.model.e(this.eZJ, this.eYV));
      return;
      this.eZJ.bOY = 6;
      break;
    }
  }

  public final void FR()
  {
    this.fbC = ((Button)findViewById(com.tencent.mm.i.aDO));
    this.fbC.setEnabled(false);
    this.fbC.setOnClickListener(new e(this));
    if (cj.hX(aoJ().getString("key_pwd1")))
      this.fbC.setText(n.bHg);
    while (true)
    {
      this.fbB = ((TextView)findViewById(com.tencent.mm.i.awT));
      this.fbB.setVisibility(0);
      this.fbB.setText(this.fbH);
      this.fbA = ((ListView)findViewById(com.tencent.mm.i.aJF));
      this.fbG = new i(this, (byte)0);
      this.fbA.setAdapter(this.fbG);
      this.fbA.setOnItemClickListener(new f(this));
      return;
      this.fbC.setText(n.bHh);
    }
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0) && ((parama instanceof com.tencent.mm.plugin.wallet.pay.model.e)))
    {
      com.tencent.mm.plugin.wallet.pay.model.e locale = (com.tencent.mm.plugin.wallet.pay.model.e)parama;
      Bundle localBundle = aoJ();
      if (this.fbD != null)
        localBundle.putString("key_pwd1", this.fbD.getText());
      localBundle.putString("kreq_token", locale.ank());
      localBundle.putParcelable("key_authen", locale.aov());
      boolean bool1 = locale.aou();
      boolean bool2 = false;
      if (!bool1)
        bool2 = true;
      localBundle.putBoolean("key_need_verify_sms", bool2);
      localBundle.putParcelable("key_pay_info", this.eYW);
      localBundle.putInt("key_pay_flag", 3);
      if (locale.fbe)
        localBundle.putParcelable("key_orders", locale.fbf);
      h.e(this, localBundle);
      return true;
    }
    return false;
  }

  protected final boolean ant()
  {
    return true;
  }

  protected final int getLayoutId()
  {
    return k.bbA;
  }

  public void onClick(View paramView)
  {
    Object localObject = paramView.getTag();
    if ((localObject != null) && ((localObject instanceof Integer)))
      jL(((Integer)localObject).intValue());
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b.b(this);
    mn(n.bHq);
    Bundle localBundle = aoJ();
    localBundle.putInt("key_err_code", 0);
    this.fbE = localBundle.getInt("key_support_bankcard", 1);
    this.eXH = c.anX().aoa();
    this.eZJ = ((Authen)localBundle.getParcelable("key_authen"));
    this.eYV = ((Orders)localBundle.getParcelable("key_orders"));
    this.eYW = ((PayInfo)localBundle.getParcelable("key_pay_info"));
    int i = n.bFY;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = b.b(this.eYV.faR, this.eYV.dCP);
    arrayOfObject[1] = ((Orders.Commodity)this.eYV.fba.get(0)).desc;
    this.fbH = getString(i, arrayOfObject);
    FR();
  }

  public void onResume()
  {
    aoJ().putInt("key_err_code", 0);
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.WalletChangeBankcardUI
 * JD-Core Version:    0.6.2
 */