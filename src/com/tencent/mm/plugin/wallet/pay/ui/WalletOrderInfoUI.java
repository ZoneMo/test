package com.tencent.mm.plugin.wallet.pay.ui;

import android.app.Dialog;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.at;
import com.tencent.mm.model.au;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.order.model.Orders.Commodity;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.plugin.wallet.ui.ak;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class WalletOrderInfoUI extends WalletBaseUI
{
  private String dDm = null;
  private View.OnLongClickListener dEo = new r(this);
  private String dVs = null;
  private CheckBox daW;
  private PayInfo eYW;
  private LinearLayout fbK = null;
  private TextView fbL = null;
  private RelativeLayout fbM = null;
  private List fbN = null;
  private s fbO = null;
  private au fbP = new m(this);
  private View.OnClickListener fbQ = new q(this);
  private Orders fbf;

  private void x(com.tencent.mm.storage.i parami)
  {
    if ((parami != null) && (parami.rj() != 0))
    {
      String str = parami.rq();
      aa.d("MicroMsg.WalletOrderInfoUI", "call back from contactServer nickName " + str + " username: " + parami.getUsername());
      if ((this.fbN != null) && (this.fbN.size() > 0))
      {
        Iterator localIterator = this.fbN.iterator();
        while (localIterator.hasNext())
          ((Orders.Commodity)localIterator.next()).dCQ = str;
        this.fbO.notifyDataSetChanged();
      }
      this.dVs = parami.getUsername();
    }
  }

  protected final void FR()
  {
    mn(com.tencent.mm.n.bGz);
    com.tencent.mm.plugin.wallet.b.h.m(this);
    de(false);
    a(0, getString(com.tencent.mm.n.bdY), new n(this));
    this.fbK = ((LinearLayout)findViewById(com.tencent.mm.i.aQD));
    this.fbL = ((TextView)findViewById(com.tencent.mm.i.aQC));
    this.fbM = ((RelativeLayout)findViewById(com.tencent.mm.i.aQB));
    ListView localListView = (ListView)findViewById(com.tencent.mm.i.aQm);
    this.fbO = new s(this);
    localListView.setAdapter(this.fbO);
    Orders localOrders;
    if (this.fbf != null)
    {
      localOrders = this.fbf;
      if ((localOrders != null) && (!cj.hX(localOrders.crH)))
        break label260;
      this.fbN = this.fbf.fba;
      Iterator localIterator = this.fbN.iterator();
      do
        if (!localIterator.hasNext())
          break;
      while (!"1".equals(((Orders.Commodity)localIterator.next()).dCK));
    }
    for (int i = 0; ; i = 1)
    {
      this.fbK.setVisibility(0);
      this.fbL.setVisibility(0);
      if (i != 0)
        if (!cj.hX(this.fbf.faW))
          this.fbL.setText(this.fbf.faW);
      while (true)
      {
        ((ScrollView)findViewById(com.tencent.mm.i.aQU)).pageScroll(33);
        return;
        label260: if (!cj.hX(localOrders.faS))
          ((TextView)findViewById(com.tencent.mm.i.aQA)).setText(localOrders.faS);
        ((TextView)findViewById(com.tencent.mm.i.aQK)).setText(localOrders.crH);
        ImageView localImageView = (ImageView)findViewById(com.tencent.mm.i.aQo);
        this.daW = ((CheckBox)findViewById(com.tencent.mm.i.aQn));
        switch (localOrders.faU)
        {
        default:
          this.daW.setChecked(true);
          this.daW.setVisibility(0);
        case 3:
        case 2:
        case 1:
        }
        while (true)
        {
          this.daW.setChecked(true);
          aa.d("MicroMsg.WalletOrderInfoUI", "checkBox is check? " + this.daW.isChecked());
          localImageView.setImageBitmap(com.tencent.mm.platformtools.v.a(new ak(localOrders.logoUrl)));
          com.tencent.mm.platformtools.v.a(new k(this, localOrders, localImageView));
          this.fbK.setVisibility(0);
          this.fbM.setVisibility(0);
          break;
          this.daW.setChecked(true);
          this.daW.setVisibility(8);
          continue;
          this.daW.setChecked(true);
          this.daW.setVisibility(0);
          continue;
          this.daW.setChecked(false);
          this.daW.setVisibility(0);
        }
        if (this.fbf.eWV == 1)
        {
          this.fbL.setText(com.tencent.mm.n.bGw);
        }
        else
        {
          this.fbL.setText(com.tencent.mm.n.bGx);
          continue;
          this.fbL.setText(com.tencent.mm.n.bGy);
        }
      }
    }
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.plugin.wallet.c.a parama)
  {
    label146: Orders localOrders;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      Orders.Commodity localCommodity;
      if ((parama instanceof com.tencent.mm.plugin.wallet.order.model.a))
      {
        localCommodity = ((com.tencent.mm.plugin.wallet.order.model.a)parama).aon();
        aa.d("MicroMsg.WalletOrderInfoUI", "Coomdity:" + localCommodity);
        if (localCommodity != null)
        {
          this.fbN = new ArrayList();
          this.fbN.add(localCommodity);
          com.tencent.mm.storage.i locali = be.uz().su().tO(localCommodity.dCQ);
          if ((locali == null) || (locali.rj() == 0))
            break label146;
          x(locali);
          this.fbO.notifyDataSetChanged();
          findViewById(com.tencent.mm.i.aPI).setVisibility(0);
        }
      }
      do
      {
        do
        {
          if (this.fbO != null)
            this.fbO.notifyDataSetChanged();
          return true;
          ar.tZ().a(localCommodity.dCQ, this.fbP);
          break;
        }
        while (!(parama instanceof com.tencent.mm.plugin.wallet.pay.model.g));
        localOrders = ((com.tencent.mm.plugin.wallet.pay.model.g)parama).aow();
      }
      while (localOrders == null);
      this.fbN = localOrders.fba;
      Iterator localIterator = this.fbN.iterator();
      do
        if (!localIterator.hasNext())
          break;
      while (!"1".equals(((Orders.Commodity)localIterator.next()).dCK));
    }
    for (int i = 0; ; i = 1)
    {
      this.fbK.setVisibility(0);
      this.fbL.setVisibility(0);
      if (i != 0)
      {
        if (localOrders.eWV == 1)
        {
          this.fbL.setText(com.tencent.mm.n.bGw);
          break;
        }
        this.fbL.setText(com.tencent.mm.n.bGx);
        break;
      }
      this.fbL.setText(com.tencent.mm.n.bGy);
      break;
      return false;
    }
  }

  public final void done()
  {
    if ((this.daW != null) && (this.daW.getVisibility() == 0) && (this.daW.isChecked()))
    {
      com.tencent.mm.pluginsdk.ui.applet.a locala = new com.tencent.mm.pluginsdk.ui.applet.a(this, new o(this));
      LinkedList localLinkedList = new LinkedList();
      localLinkedList.add(Integer.valueOf(9));
      locala.e(this.fbf.username, localLinkedList);
    }
    Bundle localBundle = new Bundle();
    localBundle.putInt("intent_pay_end_errcode", aoJ().getInt("intent_pay_end_errcode"));
    localBundle.putString("intent_pay_app_url", aoJ().getString("intent_pay_app_url"));
    localBundle.putBoolean("intent_pay_end", aoJ().getBoolean("intent_pay_end"));
    aa.i("MicroMsg.WalletOrderInfoUI", "pay done...feedbackData errCode:" + aoJ().getInt("intent_pay_end_errcode"));
    com.tencent.mm.plugin.wallet.b.h.e(this, localBundle);
    if (!cj.hX(this.fbf.faX))
      if (this.fbf.fba.size() <= 0)
        break label338;
    label338: for (String str1 = ((Orders.Commodity)this.fbf.fba.get(0)).dCN; ; str1 = "")
    {
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = this.fbf.faX;
      arrayOfObject[1] = this.fbf.faP;
      arrayOfObject[2] = str1;
      String str2 = String.format("%sreqkey=%s&transid=%s", arrayOfObject);
      aa.d("MicroMsg.WalletOrderInfoUI", "url = " + str2);
      Intent localIntent = new Intent();
      localIntent.putExtra("rawUrl", str2);
      localIntent.putExtra("showShare", false);
      localIntent.putExtra("geta8key_username", com.tencent.mm.model.v.th());
      com.tencent.mm.ak.a.b(this, "webview", "com.tencent.mm.ui.tools.WebViewUI", localIntent);
      return;
    }
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aQm;
  }

  public void onCreate(Bundle paramBundle)
  {
    int i = 1;
    super.onCreate(paramBundle);
    com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
    this.eYW = ((PayInfo)aoJ().getParcelable("key_pay_info"));
    this.fbf = ((Orders)aoJ().getParcelable("key_orders"));
    int k;
    if ((locali != null) && (this.fbf != null) && (this.eYW != null))
    {
      boolean bool = locali.anP();
      l.a(this, aoJ(), 7);
      if (aoJ().getInt("key_support_bankcard", i) == 2)
      {
        k = 2;
        com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
        Object[] arrayOfObject = new Object[7];
        arrayOfObject[0] = Integer.valueOf(this.eYW.fbh);
        arrayOfObject[i] = Integer.valueOf(l.fap);
        if (!bool)
          break label352;
        label139: arrayOfObject[2] = Integer.valueOf(i);
        arrayOfObject[3] = Integer.valueOf(l.anU());
        arrayOfObject[4] = Integer.valueOf((int)(100.0D * this.fbf.faR));
        arrayOfObject[5] = this.fbf.dCP;
        arrayOfObject[6] = Integer.valueOf(k);
        localm.d(10691, arrayOfObject);
      }
    }
    else
    {
      if (((!com.tencent.mm.plugin.wallet.c.c.anX().aof()) && (locali != null) && (locali.anP())) || (!com.tencent.mm.model.v.tp()))
      {
        int j = 0x8000 | com.tencent.mm.model.v.tm();
        be.uz().sr().set(40, Integer.valueOf(j));
      }
      if ((this.eYW == null) || (this.fbf == null) || (this.fbf.fba == null) || (this.fbf.fba.size() <= 0))
        break label357;
      this.fbN = this.fbf.fba;
      if ((locali != null) && ((locali.anO()) || (locali.anP())))
        l(new com.tencent.mm.plugin.wallet.bind.model.g(aoK()));
    }
    while (true)
    {
      FR();
      return;
      k = i;
      break;
      label352: i = 2;
      break label139;
      label357: aa.w("MicroMsg.WalletOrderInfoUI", "mOrders info is Illegal!");
      com.tencent.mm.ui.base.h.a(aal(), com.tencent.mm.n.bGv, 0, new j(this));
    }
  }

  @Deprecated
  protected Dialog onCreateDialog(int paramInt)
  {
    return com.tencent.mm.ui.base.h.b(aal(), getString(com.tencent.mm.n.aQy), getResources().getStringArray(com.tencent.mm.c.ZA), "", new p(this));
  }

  public void onDestroy()
  {
    super.onDestroy();
    if ((this.fbf != null) && (!cj.hX(this.fbf.username)))
      ar.tZ().dp(this.fbf.username);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      com.tencent.mm.plugin.wallet.b.h.m(this);
      done();
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.WalletOrderInfoUI
 * JD-Core Version:    0.6.2
 */