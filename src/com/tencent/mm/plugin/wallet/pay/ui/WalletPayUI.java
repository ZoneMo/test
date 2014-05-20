package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.c.a.ig;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.order.model.Orders.Commodity;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.MMScrollView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class WalletPayUI extends WalletBaseUI
{
  private ArrayList eXH = null;
  private Orders eYV = null;
  private PayInfo eYW = new PayInfo();
  private Button fbC;
  private Bankcard fbF = null;
  private String fcj = null;
  private boolean fck = false;
  private Bundle fcl = null;
  private boolean fcm = false;
  private TextView fcn;
  private TextView fco;
  private TextView fcp;
  private TextView fcq;
  private ImageView fcr;
  private LinearLayout fcs;
  private al fct;
  private EditHintView fcu;
  private int mCount = 0;

  private void LP()
  {
    if ((this.eYV != null) && (this.eYV.fba != null) && (this.eYV.fba.size() > 0))
    {
      this.fcn.setText(com.tencent.mm.plugin.wallet.e.b.e(this.eYV.faR));
      this.fcp.setText(com.tencent.mm.plugin.wallet.e.b.pP(this.eYV.dCP));
      this.fct.notifyDataSetChanged();
      if (this.eYV.fba.size() <= 1)
        break label214;
      this.fcr.setVisibility(0);
      TextView localTextView = this.fco;
      int i = n.bHf;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = ((Orders.Commodity)this.eYV.fba.get(0)).desc;
      arrayOfObject[1] = this.eYV.fba.size();
      localTextView.setText(getString(i, arrayOfObject));
    }
    while (true)
    {
      this.fck = false;
      if ((this.eYV == null) || (this.eXH == null) || (this.eYW == null))
        break;
      this.fbC.setClickable(true);
      this.fbC.setEnabled(true);
      return;
      label214: this.fco.setText(((Orders.Commodity)this.eYV.fba.get(0)).desc);
      this.fcr.setVisibility(8);
    }
    this.fbC.setClickable(false);
    this.fbC.setEnabled(false);
  }

  private boolean UW()
  {
    if ((this.eYV == null) || (this.eYV.fba == null) || (this.eYV.fba.size() <= 0))
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WalletPayUI", "mOrders info is Illegal!");
      com.tencent.mm.ui.base.h.a(aal(), n.bGv, 0, new y(this));
      return false;
    }
    return true;
  }

  private Authen aov()
  {
    Authen localAuthen = new Authen();
    if (aoy());
    for (localAuthen.bOY = 3; ; localAuthen.bOY = 6)
    {
      if (!cj.hX(this.fcj))
        localAuthen.fde = this.fcj;
      if (this.fbF != null)
      {
        localAuthen.eXd = this.fbF.eWT;
        localAuthen.eXo = this.fbF.eWH;
      }
      localAuthen.dHN = this.eYW;
      return localAuthen;
    }
  }

  private boolean aox()
  {
    return (this.eYW.fbh == 4) || (this.eYW.fbh == 1);
  }

  private boolean aoy()
  {
    if ((this.fbF != null) && (this.eYV.eWV == 3))
      if (!this.fbF.anf());
    while (!Bankcard.jB(this.eYV.eWV))
    {
      return true;
      return false;
    }
    return false;
  }

  private void aoz()
  {
    Bundle localBundle = getIntent().getExtras();
    if (c.anX().aof());
    for (int i = 2; ; i = 1)
    {
      localBundle.putInt("key_pay_flag", i);
      localBundle.putParcelable("key_orders", this.eYV);
      localBundle.putParcelable("key_pay_info", this.eYW);
      com.tencent.mm.plugin.wallet.b.h.a(this, com.tencent.mm.plugin.wallet.b.g.class, localBundle, this.eYV.eWV, aoy());
      if (Vf())
        finish();
      return;
    }
  }

  private void b(boolean paramBoolean, int paramInt, String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletPayUI", "pay with new bankcard! user's wxpay register status :" + c.anX().aof() + ", need confirm ? " + paramBoolean);
    if (paramBoolean)
      if (!cj.hX(paramString))
        break label104;
    label104: for (String str = getString(Bankcard.jC(paramInt)); ; str = paramString)
    {
      com.tencent.mm.ui.base.h.a(this, str, "", getString(n.bGG), getString(n.bds), new ah(this), new ai(this));
      return;
      aoz();
      return;
    }
  }

  private void c(boolean paramBoolean, int paramInt, String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletPayUI", "pay with select bankcard! need confirm ? " + paramBoolean);
    if (paramBoolean)
      if (!cj.hX(paramString))
        break label200;
    label200: for (String str = getString(Bankcard.jC(paramInt)); ; str = paramString)
    {
      com.tencent.mm.ui.base.h.a(this, str, "", getString(n.bGW), getString(n.bds), new aj(this, paramInt), new ak(this));
      do
      {
        return;
        Bundle localBundle = aoJ();
        localBundle.putInt("key_main_bankcard_state", paramInt);
        localBundle.putParcelable("key_orders", this.eYV);
        localBundle.putParcelable("key_pay_info", this.eYW);
        localBundle.putParcelable("key_authen", aov());
        localBundle.putString("key_pwd1", this.fcj);
        localBundle.putInt("key_pay_flag", 3);
        localBundle.putInt("key_err_code", -1004);
        com.tencent.mm.plugin.wallet.b.h.a(this, com.tencent.mm.plugin.wallet.b.g.class, localBundle, this.eYV.eWV, aoy());
      }
      while (!Vf());
      finish();
      return;
    }
  }

  private void ca(boolean paramBoolean)
  {
    int i;
    if ((this.eYV != null) && (this.eYV.faV) && (((Boolean)be.uz().sr().get(196614, Boolean.valueOf(true))).booleanValue()))
    {
      View localView = getLayoutInflater().inflate(k.bbN, null);
      CheckBox localCheckBox = (CheckBox)localView.findViewById(i.aMY);
      TextView localTextView = (TextView)localView.findViewById(i.aCJ);
      String str = getResources().getString(n.bHa);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = getResources().getString(n.bFl);
      localTextView.setText(Html.fromHtml(String.format(str, arrayOfObject2)));
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      ((TextView)localView.findViewById(i.aMZ)).setOnClickListener(new z(this, localCheckBox));
      com.tencent.mm.ui.base.x localx = com.tencent.mm.ui.base.h.a(this, getString(n.bHb), localView, getString(n.bFX), getString(n.boq), new aa(this, localCheckBox), new ab(this));
      localx.setCancelable(false);
      localCheckBox.setOnCheckedChangeListener(new ac(this, localx));
      i = 0;
      if ((i != 0) || (!paramBoolean))
        break label244;
    }
    label244: 
    do
    {
      return;
      i = 1;
      break;
      if (this.fbF == null)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletPayUI", "default bankcard not found! payWithNewBankcard");
        b(false, 0, "");
        return;
      }
      int j = this.fbF.a(this.eYV.eWV, this.eYV);
      if (j != 0)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletPayUI", "main bankcard(" + j + ") is useless! jump to select bankcard!");
        c(false, j, "");
        return;
      }
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletPayUI", "has useful bankcard ! payWithOldBankcard");
    }
    while (!UW());
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletPayUI", "pay with old bankcard!");
    int k = n.bHi;
    Object[] arrayOfObject1 = new Object[4];
    arrayOfObject1[0] = this.fbF.eWQ;
    arrayOfObject1[1] = this.fbF.dCO;
    arrayOfObject1[2] = com.tencent.mm.plugin.wallet.e.b.b(this.eYV.faR, this.eYV.dCP);
    arrayOfObject1[3] = ((Orders.Commodity)this.eYV.fba.get(0)).desc;
    this.fcu = am.a(this, getString(k, arrayOfObject1), new af(this), new ag(this));
  }

  protected final void FR()
  {
    ((MMScrollView)findViewById(i.aQU)).aoI();
    this.fbC = ((Button)findViewById(i.aQL));
    this.fbC.setClickable(false);
    this.fbC.setEnabled(false);
    this.fcn = ((TextView)findViewById(i.aQI));
    this.fco = ((TextView)findViewById(i.aQH));
    this.fcp = ((TextView)findViewById(i.aQu));
    this.fcq = ((TextView)findViewById(i.aQM));
    this.fcq.setVisibility(8);
    this.fcr = ((ImageView)findViewById(i.aQt));
    this.fcr.setOnClickListener(new ad(this));
    this.fcs = ((LinearLayout)findViewById(i.aQx));
    this.fct = new al(this, (byte)0);
    this.fbC.setOnClickListener(new ae(this));
    LP();
  }

  protected final boolean Vf()
  {
    return (this.eYW != null) && ((3 == this.eYW.fbh) || (6 == this.eYW.fbh)) && (this.fbF != null);
  }

  protected final boolean Vh()
  {
    c.anX().aoj();
    if (Vf())
    {
      if ((!this.fcm) && (UW()))
      {
        ca(true);
        this.fcm = true;
      }
      return true;
    }
    return false;
  }

  public final boolean Vi()
  {
    return false;
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.plugin.wallet.c.a parama)
  {
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      if ((parama instanceof com.tencent.mm.plugin.wallet.pay.model.g))
      {
        this.eYV = ((com.tencent.mm.plugin.wallet.pay.model.g)parama).aow();
        int j;
        m localm2;
        Object[] arrayOfObject2;
        if (this.eYV != null)
        {
          j = this.eYV.fba.size();
          this.mCount = j;
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletPayUI", "get mOrders! bankcardTag : " + this.eYV.eWV);
          UW();
          if ((this.eYV != null) && (this.eXH != null) && (this.eYW != null))
          {
            l.a(this.eYW, this.eYV);
            localm2 = m.dZN;
            arrayOfObject2 = new Object[5];
            arrayOfObject2[0] = Integer.valueOf(this.eYW.fbh);
            arrayOfObject2[1] = Integer.valueOf(0);
            if (!c.anX().aof())
              break label292;
          }
        }
        LinkedList localLinkedList;
        label292: for (int k = 2; ; k = 1)
        {
          arrayOfObject2[2] = Integer.valueOf(k);
          arrayOfObject2[3] = Integer.valueOf((int)(100.0D * this.eYV.faR));
          arrayOfObject2[4] = this.eYV.dCP;
          localm2.d(10690, arrayOfObject2);
          if ((this.eYV == null) || (this.eYV.fba == null))
            break label336;
          localLinkedList = new LinkedList();
          Iterator localIterator = this.eYV.fba.iterator();
          while (localIterator.hasNext())
            localLinkedList.add(((Orders.Commodity)localIterator.next()).dCN);
          j = 0;
          break;
        }
        if (localLinkedList.size() > 0)
        {
          ig localig = new ig();
          localig.bRG.bRI = localLinkedList;
          com.tencent.mm.sdk.b.a.ayH().f(localig);
        }
      }
      label336: 
      do
      {
        do
        {
          LP();
          return true;
          if (!(parama instanceof com.tencent.mm.plugin.wallet.bind.model.g))
            break;
          this.eXH = ((com.tencent.mm.plugin.wallet.bind.model.g)parama).eXH;
          this.fbF = c.anX().pB(null);
          this.fbC.setClickable(true);
        }
        while ((this.eYV == null) || (this.eXH == null) || (this.eYW == null));
        l.a(this.eYW, this.eYV);
        m localm1 = m.dZN;
        Object[] arrayOfObject1 = new Object[5];
        arrayOfObject1[0] = Integer.valueOf(this.eYW.fbh);
        arrayOfObject1[1] = Integer.valueOf(0);
        if (c.anX().aof());
        for (int i = 2; ; i = 1)
        {
          arrayOfObject1[2] = Integer.valueOf(i);
          arrayOfObject1[3] = Integer.valueOf((int)(100.0D * this.eYV.faR));
          arrayOfObject1[4] = this.eYV.dCP;
          localm1.d(10690, arrayOfObject1);
          break;
        }
      }
      while (!(parama instanceof com.tencent.mm.plugin.wallet.pay.model.e));
      com.tencent.mm.plugin.wallet.pay.model.e locale2 = (com.tencent.mm.plugin.wallet.pay.model.e)parama;
      Bundle localBundle2 = aoJ();
      localBundle2.putParcelable("key_pay_info", this.eYW);
      localBundle2.putParcelable("key_bankcard", this.fbF);
      if (!cj.hX(this.fcj))
        localBundle2.putString("key_pwd1", this.fcj);
      localBundle2.putString("kreq_token", locale2.ank());
      localBundle2.putParcelable("key_authen", locale2.aov());
      boolean bool3 = locale2.aou();
      boolean bool4 = false;
      if (!bool3)
        bool4 = true;
      localBundle2.putBoolean("key_need_verify_sms", bool4);
      localBundle2.putString("key_mobile", this.fbF.bTR);
      if (locale2.fbe)
        localBundle2.putParcelable("key_orders", locale2.fbf);
      while (true)
      {
        localBundle2.putInt("key_pay_flag", 3);
        com.tencent.mm.plugin.wallet.b.h.a(this, com.tencent.mm.plugin.wallet.b.g.class, localBundle2, this.eYV.eWV, aoy());
        if (!Vf())
          break;
        finish();
        return true;
        localBundle2.putParcelable("key_orders", this.eYV);
      }
    }
    if ((parama instanceof com.tencent.mm.plugin.wallet.pay.model.e));
    switch (paramInt2)
    {
    case 405:
    case 406:
    case 407:
    default:
      return false;
    case 402:
    case 403:
    case 408:
      com.tencent.mm.plugin.wallet.pay.model.e locale1 = (com.tencent.mm.plugin.wallet.pay.model.e)parama;
      this.fcl = aoJ();
      this.fcl.putParcelable("key_pay_info", this.eYW);
      this.fcl.putParcelable("key_bankcard", this.fbF);
      if (!cj.hX(this.fcj))
        this.fcl.putString("key_pwd1", this.fcj);
      this.fcl.putString("kreq_token", locale1.ank());
      this.fcl.putParcelable("key_authen", locale1.aov());
      Bundle localBundle1 = this.fcl;
      boolean bool1 = locale1.aou();
      boolean bool2 = false;
      if (!bool1)
        bool2 = true;
      localBundle1.putBoolean("key_need_verify_sms", bool2);
      this.fcl.putString("key_mobile", this.fbF.bTR);
      this.fcl.putInt("key_err_code", paramInt2);
      this.fcl.putParcelable("key_orders", this.eYV);
      if (!cj.hX(paramString))
        break;
    case 404:
    }
    for (String str = getString(n.bHd); ; str = paramString)
    {
      com.tencent.mm.ui.base.h.a(this, str, "", getString(n.bHc), getString(n.bds), new w(this), new x(this));
      return true;
      if ((this.fbF == null) || (this.eYV == null))
        break;
      this.fbF.eWX = this.eYV.faP;
      ArrayList localArrayList = Bankcard.v(this.eXH);
      if ((localArrayList != null) && (localArrayList.size() > 1))
      {
        c(true, 4, paramString);
        return true;
      }
      b(true, 4, paramString);
      return true;
    }
  }

  protected final boolean anq()
  {
    return false;
  }

  protected final boolean ant()
  {
    return true;
  }

  protected final void aoA()
  {
    if (Vf())
      finish();
  }

  public void finish()
  {
    aoM();
    super.finish();
  }

  protected final int getLayoutId()
  {
    return k.bbO;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.WalletPayUI", "onAcvityResult requestCode:" + paramInt1 + ", resultCode:" + paramInt2);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bHe);
    this.eYW = ((PayInfo)getIntent().getParcelableExtra("key_pay_info"));
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WalletPayUI", "PayInfo = " + this.eYW);
    if ((this.eYW != null) && (!cj.hX(this.eYW.faP)))
    {
      b(new com.tencent.mm.plugin.wallet.pay.model.g(this.eYW.faP), aox());
      b(new com.tencent.mm.plugin.wallet.bind.model.g(this.eYW.faP), aox());
      FR();
      return;
    }
    if ((this.eYW != null) && (!cj.hX(this.eYW.bOM)));
    for (String str = this.eYW.bOM; ; str = getString(n.bGZ))
    {
      com.tencent.mm.ui.base.h.a(this, str, null, false, new v(this));
      break;
    }
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if ((this.fcu != null) && (this.eYW != null) && (3 == this.eYW.fbh))
        finish();
      while (true)
      {
        return true;
        anc();
      }
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public void onResume()
  {
    if (this.fbF == null);
    for (this.fbF = c.anX().pB(null); ; this.fbF = c.anX().pB(this.fbF.eWT))
    {
      super.onResume();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.WalletPayUI
 * JD-Core Version:    0.6.2
 */