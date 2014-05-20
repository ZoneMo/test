package com.tencent.mm.plugin.wallet.bind.ui;

import android.app.Dialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.o;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.plugin.wallet.bind.model.g;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.pay.model.e;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.MMScrollView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public class WalletCardImportUI extends WalletBaseUI
  implements TextView.OnEditorActionListener, com.tencent.mm.plugin.wallet.ui.l
{
  private static final String[] eYs = { "ABC_DEBIT", "ABC_CREDIT", "CITIC_CREDIT", "CMBC_DEBIT" };
  private Button dLL;
  private TextView eYC;
  private EditHintView eYD;
  private EditHintView eYE;
  private EditHintView eYF;
  private EditHintView eYG;
  private EditHintView eYH;
  private EditHintView eYI;
  private EditHintView eYJ;
  private EditHintView eYK;
  private EditHintView eYL;
  private EditHintView eYM;
  private EditHintView eYN;
  private EditHintView eYO;
  private EditHintView eYP;
  private EditHintView eYQ;
  private EditHintView eYR = null;
  private EditHintView eYS;
  private ElementQuery eYT = new ElementQuery();
  private Authen eYU = new Authen();
  private Orders eYV = null;
  private PayInfo eYW = null;
  private String eYY;
  private String eYZ;
  private String eZa;
  private int eZb = 1;
  private MMScrollView eZf;
  private Bankcard eZg = null;
  private CheckBox eZh;
  private CheckBox eZi;
  private BaseAdapter eZj = new ap(this);
  private Dialog erp = null;
  private Handler mHandler = new Handler();

  private void LP()
  {
    EditHintView localEditHintView2;
    EditHintView localEditHintView1;
    label185: String str;
    if (this.eZg != null)
    {
      findViewById(com.tencent.mm.i.aQh).setVisibility(0);
      if (cj.hX(aoJ().getString("key_bank_username")))
        break label500;
      CheckBox localCheckBox = this.eZi;
      int i = n.bFK;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.eZg.dCO;
      localCheckBox.setText(getString(i, arrayOfObject));
      this.eZi.setVisibility(0);
      this.eYK.setVisibility(8);
      this.eYL.setVisibility(8);
      this.eYM.setVisibility(8);
      this.eYN.setVisibility(8);
      this.eYO.setVisibility(8);
      this.eYP.setVisibility(8);
      this.eYQ.setVisibility(8);
      if ((cj.hX(this.eZg.eWQ)) || (!this.eYS.pN(this.eZg.eWP)))
        break label512;
      localEditHintView2 = this.eYS;
      localEditHintView1 = this.eYS;
      if (!this.eZg.eWU)
        break label528;
      str = getString(n.bGf);
      label203: if ((cj.hX(this.eZg.dCO)) || (!this.eYD.pN(this.eZg.dCO + " " + str)))
        break label539;
      if (localEditHintView2 == null)
        localEditHintView2 = this.eYD;
      localEditHintView1 = this.eYD;
    }
    while (true)
    {
      if (this.eYG.pN(this.eZg.eWI))
      {
        if (localEditHintView2 == null)
          localEditHintView2 = this.eYG;
        localEditHintView1 = this.eYG;
      }
      if (this.eYH.pN(c.anX().c(aal(), this.eZg.eWY)))
      {
        if (localEditHintView2 == null)
          localEditHintView2 = this.eYH;
        localEditHintView1 = this.eYH;
      }
      if (this.eYI.pN(this.eZg.eWO))
      {
        if (localEditHintView2 == null)
          localEditHintView2 = this.eYI;
        localEditHintView1 = this.eYI;
      }
      if (this.eYJ.pN(this.eZg.bTR))
      {
        if (localEditHintView2 == null)
          localEditHintView2 = this.eYJ;
        localEditHintView1 = this.eYJ;
      }
      if (this.eYF.pN(this.eZg.eWR))
      {
        if (localEditHintView2 == null)
          localEditHintView2 = this.eYF;
        localEditHintView1 = this.eYF;
      }
      if (this.eYE.pN(this.eZg.eWS))
      {
        if (localEditHintView2 == null)
          localEditHintView2 = this.eYE;
        localEditHintView1 = this.eYE;
      }
      localEditHintView2.setBackgroundResource(com.tencent.mm.h.ady);
      localEditHintView1.setBackgroundResource(com.tencent.mm.h.ady);
      if (!(com.tencent.mm.plugin.wallet.b.h.m(this) instanceof com.tencent.mm.plugin.wallet.b.d))
        break label551;
      this.dLL.setText(n.bFO);
      return;
      label500: this.eZi.setVisibility(8);
      break;
      label512: this.eYS.setVisibility(8);
      localEditHintView1 = null;
      localEditHintView2 = null;
      break label185;
      label528: str = getString(n.bGh);
      break label203;
      label539: this.eYD.setVisibility(8);
    }
    label551: this.dLL.setText(n.bFM);
  }

  private boolean UW()
  {
    if (!this.eZh.isChecked());
    for (boolean bool = false; ; bool = true)
    {
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

  private void anp()
  {
    if (UW())
    {
      com.tencent.mm.plugin.wallet.b.l.anR();
      this.eYU = new Authen();
      aoJ().putBoolean("key_is_follow_bank_username", this.eZi.isChecked());
      if ((this.eZg != null) && (!cj.hX(this.eZg.eWZ)))
      {
        this.eYU.eXN = this.eZg.eWZ;
        this.eYU.eXd = this.eZg.eWT;
        this.eYU.eXo = this.eZg.eWH;
        this.eYU.eWY = this.eZg.eWY;
        this.eYU.fde = aoJ().getString("key_pwd1");
        this.eYU.etE = aoJ().getString("kreq_token");
        com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
        if (!(locali instanceof com.tencent.mm.plugin.wallet.b.b))
          break label607;
        a locala = ((com.tencent.mm.plugin.wallet.b.b)locali).a(this.eYU, this.eYV);
        if (locala == null)
          break label597;
        l(locala);
      }
    }
    else
    {
      return;
    }
    String str1 = aoJ().getString("Kcard_id");
    if (this.eYS.getVisibility() == 0);
    for (String str2 = this.eYS.getText(); ; str2 = str1)
    {
      this.eYU.dHN = ((PayInfo)aoJ().getParcelable("key_pay_info"));
      this.eYU.fdi = str2;
      this.eYU.eXo = this.eYT.eXo;
      this.eYU.eWY = this.eZb;
      this.eYU.fde = aoJ().getString("key_pwd1");
      if (!cj.hX(this.eYF.getText()))
        this.eYU.eWR = this.eYF.getText();
      this.eYU.fdh = this.eYJ.getText();
      this.eYU.fdl = this.eYK.getText();
      this.eYU.fdm = this.eYL.getText();
      this.eYU.dHm = this.eYY;
      this.eYU.bTZ = this.eYZ;
      this.eYU.bUa = this.eZa;
      this.eYU.XX = this.eYN.getText();
      this.eYU.fdn = this.eYO.getText();
      this.eYU.eWa = this.eYP.getText();
      this.eYU.bTQ = this.eYQ.getText();
      String str3 = com.tencent.mm.plugin.wallet.e.b.pQ(this.eYU.fdh);
      aoJ().putString("key_mobile", str3);
      Bundle localBundle = aoJ();
      if (this.eYT.eWV == 2);
      for (boolean bool = true; ; bool = false)
      {
        localBundle.putBoolean("key_is_oversea", bool);
        this.eYU.fdg = this.eYI.getText();
        this.eYU.fdf = this.eYG.getText();
        this.eYU.fdj = this.eYE.getText();
        aa.d("MicroMsg.WalletCardElmentUI", "payInfo " + this.eYU.dHN + " elemt.bankcardTag : " + this.eYT.eWV);
        break;
      }
      label597: aa.e("MicroMsg.WalletCardElmentUI", "error scene is null!!");
      return;
      label607: aa.e("MicroMsg.WalletCardElmentUI", "error process in the tenpay!!");
      return;
    }
  }

  protected final void FR()
  {
    this.eYS = ((EditHintView)findViewById(com.tencent.mm.i.aQb));
    this.eYJ = ((EditHintView)findViewById(com.tencent.mm.i.aBF));
    this.eYG = ((EditHintView)findViewById(com.tencent.mm.i.aCm));
    this.eYH = ((EditHintView)findViewById(com.tencent.mm.i.aQj));
    this.eYI = ((EditHintView)findViewById(com.tencent.mm.i.awl));
    this.eYD = ((EditHintView)findViewById(com.tencent.mm.i.aQi));
    this.eYF = ((EditHintView)findViewById(com.tencent.mm.i.aqW));
    this.eYE = ((EditHintView)findViewById(com.tencent.mm.i.aqX));
    this.eYC = ((TextView)findViewById(com.tencent.mm.i.aQN));
    this.eYK = ((EditHintView)findViewById(com.tencent.mm.i.atE));
    this.eYL = ((EditHintView)findViewById(com.tencent.mm.i.axO));
    this.eYM = ((EditHintView)findViewById(com.tencent.mm.i.amC));
    this.eYN = ((EditHintView)findViewById(com.tencent.mm.i.ale));
    this.eYO = ((EditHintView)findViewById(com.tencent.mm.i.aDP));
    this.eYP = ((EditHintView)findViewById(com.tencent.mm.i.aEk));
    this.eYQ = ((EditHintView)findViewById(com.tencent.mm.i.arM));
    this.eZh = ((CheckBox)findViewById(com.tencent.mm.i.aln));
    this.eZi = ((CheckBox)findViewById(com.tencent.mm.i.all));
    this.dLL = ((Button)findViewById(com.tencent.mm.i.aCN));
    this.eZf = ((MMScrollView)findViewById(com.tencent.mm.i.aQU));
    this.eZf.aoI();
    this.eZf.a(new af(this));
    this.eYG.a(this);
    this.eYS.a(this);
    this.eYH.a(this);
    this.eYI.a(this);
    this.eYJ.a(this);
    this.eYF.a(this);
    this.eYE.a(this);
    this.eYK.a(this);
    this.eYL.a(this);
    this.eYM.a(this);
    this.eYN.a(this);
    this.eYO.a(this);
    this.eYP.a(this);
    this.eYQ.a(this);
    this.eYG.setOnEditorActionListener(this);
    this.eYS.setOnEditorActionListener(this);
    this.eYH.setOnEditorActionListener(this);
    this.eYI.setOnEditorActionListener(this);
    this.eYJ.setOnEditorActionListener(this);
    this.eYF.setOnEditorActionListener(this);
    this.eYE.setOnEditorActionListener(this);
    this.eYK.setOnEditorActionListener(this);
    this.eYL.setOnEditorActionListener(this);
    this.eYM.setOnEditorActionListener(this);
    this.eYN.setOnEditorActionListener(this);
    this.eYO.setOnEditorActionListener(this);
    this.eYP.setOnEditorActionListener(this);
    this.eYQ.setOnEditorActionListener(this);
    this.eYD.setOnClickListener(new ah(this));
    this.eYH.setOnClickListener(new ai(this));
    this.eZh.setChecked(true);
    this.eZh.setOnCheckedChangeListener(new aj(this));
    this.eZi.setChecked(true);
    findViewById(com.tencent.mm.i.alj).setOnClickListener(new ak(this));
    this.eYM.setOnClickListener(new am(this));
    this.dLL.setOnClickListener(new an(this));
    LP();
    UW();
  }

  public final boolean a(int paramInt1, int paramInt2, String paramString, a parama)
  {
    aa.d("MicroMsg.WalletCardElmentUI", " errCode: " + paramInt2 + " errMsg :" + paramString);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      Bundle localBundle = aoJ();
      localBundle.putString("key_mobile", com.tencent.mm.plugin.wallet.e.b.pQ(cj.R(this.eYJ.getText(), "")));
      localBundle.putParcelable("key_authen", this.eYU);
      aa.d("MicroMsg.WalletCardElmentUI", "PayInfo  " + this.eYW);
      if ((parama instanceof e))
      {
        e locale = (e)parama;
        localBundle.putString("kreq_token", locale.ank());
        if (locale.fbe)
          localBundle.putParcelable("key_orders", locale.fbf);
      }
      while (com.tencent.mm.plugin.wallet.b.h.m(this).d(this, null))
      {
        k(new g(aoK()));
        return true;
        if ((parama instanceof com.tencent.mm.plugin.wallet.bind.model.d))
        {
          com.tencent.mm.plugin.wallet.bind.model.d locald1 = (com.tencent.mm.plugin.wallet.bind.model.d)parama;
          this.eYW.faP = locald1.aeS();
          aa.d("MicroMsg.WalletCardElmentUI", "reqKey  " + locald1.aeS());
          localBundle.putParcelable("key_pay_info", this.eYW);
          localBundle.putString("kreq_token", locald1.ank());
        }
        else if ((parama instanceof com.tencent.mm.plugin.wallet.pwd.a.d))
        {
          com.tencent.mm.plugin.wallet.pwd.a.d locald = (com.tencent.mm.plugin.wallet.pwd.a.d)parama;
          this.eYW.faP = locald.aeS();
          aa.d("MicroMsg.WalletCardElmentUI", "reqKey  " + locald.aeS());
          localBundle.putParcelable("key_pay_info", this.eYW);
          localBundle.putString("kreq_token", locald.ank());
        }
        else
        {
          if ((parama instanceof g))
          {
            localBundle.putBoolean("intent_bind_end", true);
            com.tencent.mm.plugin.wallet.b.h.e(this, localBundle);
            com.tencent.mm.ui.base.h.an(this, getString(n.bFp));
            return true;
          }
          return false;
        }
      }
      com.tencent.mm.plugin.wallet.b.h.e(this, localBundle);
      return true;
    }
    return false;
  }

  public final void aN(boolean paramBoolean)
  {
    UW();
  }

  protected final boolean anq()
  {
    return false;
  }

  protected final int getLayoutId()
  {
    return k.bbx;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    aa.i("MicroMsg.WalletCardElmentUI", "onAcvityResult requestCode:" + paramInt1);
    if (paramInt2 != -1)
      return;
    switch (paramInt1)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      UW();
      return;
      this.eYT = ((ElementQuery)paramIntent.getParcelableExtra("elemt_query"));
      LP();
      continue;
      String str1 = paramIntent.getStringExtra("CountryName");
      String str2 = paramIntent.getStringExtra("Country");
      this.eYY = (str1 + "|" + str2);
      String str3 = paramIntent.getStringExtra("ProviceName");
      String str4 = paramIntent.getStringExtra("CityName");
      if (!cj.hX(paramIntent.getStringExtra("Contact_City")))
      {
        this.eYZ = (str3 + "|" + paramIntent.getStringExtra("Contact_Province"));
        this.eZa = (str4 + "|" + paramIntent.getStringExtra("Contact_City"));
        this.eYM.pM(str1 + " " + str4);
      }
      while (true)
      {
        if ((!"US".equals(str2)) && (!"CA".equals(str2)) && (!this.eYT.eXx))
          break label406;
        this.eYP.setVisibility(0);
        break;
        if (!cj.hX(paramIntent.getStringExtra("Contact_Province")))
        {
          this.eZa = (str3 + "|" + paramIntent.getStringExtra("Contact_Province"));
          this.eYM.pM(str1 + " " + str3);
        }
        else
        {
          this.eZa = this.eYY;
          this.eYM.pM(str1);
        }
      }
      label406: this.eYP.setVisibility(8);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bGi);
    this.eYT = ((ElementQuery)aoJ().getParcelable("elemt_query"));
    this.eYV = ((Orders)aoJ().getParcelable("key_orders"));
    this.eYW = ((PayInfo)aoJ().getParcelable("key_pay_info"));
    this.eZg = ((Bankcard)aoJ().getParcelable("key_import_bankcard"));
    if (this.eYW == null)
      this.eYW = new PayInfo();
    aa.d("MicroMsg.WalletCardElmentUI", "mPayInfo " + this.eYW);
    FR();
    this.eZf.pageScroll(33);
    com.tencent.mm.plugin.wallet.b.l.a(this, aoJ(), 3);
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return super.onCreateDialog(paramInt);
    case 1:
    }
    Dialog localDialog = new Dialog(this, o.bIG);
    localDialog.setContentView(k.bbF);
    ListView localListView = (ListView)localDialog.findViewById(com.tencent.mm.i.ala);
    localListView.setAdapter(this.eZj);
    localListView.setOnItemClickListener(new ao(this));
    return localDialog;
  }

  public void onDestroy()
  {
    if ((this.erp != null) && (this.erp.isShowing()))
    {
      this.erp.dismiss();
      this.erp = null;
    }
    super.onDestroy();
  }

  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    aa.d("MicroMsg.WalletCardElmentUI", "onEditorAction actionId : " + paramInt);
    switch (paramInt)
    {
    default:
      if (this.eYR == null)
        anp();
      return false;
    case 5:
    }
    if (this.eYR != null)
      if (this.eYR.dIe)
        this.eYR.aoG();
    while (true)
    {
      return true;
      this.eYR.performClick();
      continue;
      anp();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.WalletCardImportUI
 * JD-Core Version:    0.6.2
 */