package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.tencent.mm.f;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.plugin.wallet.bind.model.g;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.c.c;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.WalletBaseUI;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;

public class WalletCardElmentUI extends WalletBaseUI
  implements TextView.OnEditorActionListener, com.tencent.mm.plugin.wallet.ui.l
{
  private static final String[] eYs = { "ABC_DEBIT", "ABC_CREDIT", "CITIC_CREDIT", "CMBC_DEBIT", "COMM_DEBIT" };
  private Button dLL;
  private ScrollView dTG;
  private TextView eYA;
  private TextView eYB;
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
  private CheckBox eYX;
  private String eYY;
  private String eYZ;
  private TextView eYt;
  private TextView eYu;
  private TextView eYv;
  private TextView eYw;
  private TextView eYx;
  private TextView eYy;
  private TextView eYz;
  private String eZa;
  private int eZb = 1;
  private BaseAdapter eZc = new ae(this);
  private TextView ezr;
  private Handler mHandler = new Handler();

  private void LP()
  {
    if (this.eYT == null)
      this.eYT = new ElementQuery();
    com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
    Bankcard localBankcard = (Bankcard)aoJ().getParcelable("kbankcard");
    if (((locali instanceof com.tencent.mm.plugin.wallet.b.e)) && (localBankcard != null))
    {
      this.eYS.pM(localBankcard.eWQ);
      this.eYS.pM(localBankcard.eWQ);
      boolean[] arrayOfBoolean7 = { true };
      EditHintView[] arrayOfEditHintView7 = new EditHintView[1];
      arrayOfEditHintView7[0] = this.eYS;
      a(arrayOfBoolean7, arrayOfEditHintView7, this.eYt, this.eYu);
      boolean[] arrayOfBoolean8 = { false };
      EditHintView[] arrayOfEditHintView8 = new EditHintView[1];
      arrayOfEditHintView8[0] = this.eYD;
      a(arrayOfBoolean8, arrayOfEditHintView8, this.eYv, this.eYw);
      if (!Bankcard.jB(this.eYT.eWV))
        break label582;
      boolean[] arrayOfBoolean3 = { 0, 0, 0, 0 };
      EditHintView[] arrayOfEditHintView3 = new EditHintView[4];
      arrayOfEditHintView3[0] = this.eYG;
      arrayOfEditHintView3[1] = this.eYH;
      arrayOfEditHintView3[2] = this.eYI;
      arrayOfEditHintView3[3] = this.eYJ;
      a(arrayOfBoolean3, arrayOfEditHintView3, this.eYx, this.eYy);
      bV(true);
      boolean[] arrayOfBoolean4 = new boolean[2];
      arrayOfBoolean4[0] = this.eYT.eXi;
      arrayOfBoolean4[1] = this.eYT.eXj;
      EditHintView[] arrayOfEditHintView4 = new EditHintView[2];
      arrayOfEditHintView4[0] = this.eYF;
      arrayOfEditHintView4[1] = this.eYE;
      a(arrayOfBoolean4, arrayOfEditHintView4, this.eYz, this.eYA);
      if (this.eYD.getVisibility() != 0)
        break label1066;
      switch (this.eYT.eXm)
      {
      default:
        this.eYw.setVisibility(4);
      case 3:
      case 4:
      case 2:
      case 1:
      }
    }
    while (true)
    {
      this.eYw.setTextColor(getResources().getColor(f.aaC));
      return;
      if (cj.hX(this.eYT.eXe))
        this.eYD.pM("");
      while (true)
      {
        boolean[] arrayOfBoolean1 = { false };
        EditHintView[] arrayOfEditHintView1 = new EditHintView[1];
        arrayOfEditHintView1[0] = this.eYS;
        a(arrayOfBoolean1, arrayOfEditHintView1, this.eYt, this.eYu, true);
        boolean[] arrayOfBoolean2 = { true };
        EditHintView[] arrayOfEditHintView2 = new EditHintView[1];
        arrayOfEditHintView2[0] = this.eYD;
        a(arrayOfBoolean2, arrayOfEditHintView2, this.eYv, this.eYw, true);
        break;
        if (2 == this.eYT.eXn)
          this.eYD.pM(this.eYT.eXe + " " + getString(n.bGf));
        else
          this.eYD.pM(this.eYT.eXe + " " + getString(n.bGh));
      }
      label582: if ((this.eYT.anj() != null) && (this.eYT.anj().size() > 0));
      for (int i = 1; ; i = 0)
      {
        if ((!(locali instanceof com.tencent.mm.plugin.wallet.b.e)) && (!locali.anP()) && (!(locali instanceof com.tencent.mm.plugin.wallet.b.d)))
          break label777;
        boolean[] arrayOfBoolean5 = { true, i, true, true };
        EditHintView[] arrayOfEditHintView5 = new EditHintView[4];
        arrayOfEditHintView5[0] = this.eYG;
        arrayOfEditHintView5[1] = this.eYH;
        arrayOfEditHintView5[2] = this.eYI;
        arrayOfEditHintView5[3] = this.eYJ;
        a(arrayOfBoolean5, arrayOfEditHintView5, this.eYx, this.eYy);
        if ((!(locali instanceof com.tencent.mm.plugin.wallet.b.e)) || (c.anX().aod() <= 0))
          break label895;
        this.eYH.setClickable(false);
        this.eYH.pM(c.anX().aN(this));
        this.eYI.jP(this.eZb);
        jE(this.eZb);
        bV(false);
        break;
      }
      label777: boolean[] arrayOfBoolean6 = new boolean[4];
      arrayOfBoolean6[0] = this.eYT.eXg;
      if ((i != 0) && (this.eYT.eXh));
      for (int j = 1; ; j = 0)
      {
        arrayOfBoolean6[1] = j;
        arrayOfBoolean6[2] = this.eYT.eXh;
        arrayOfBoolean6[3] = true;
        EditHintView[] arrayOfEditHintView6 = new EditHintView[4];
        arrayOfEditHintView6[0] = this.eYG;
        arrayOfEditHintView6[1] = this.eYH;
        arrayOfEditHintView6[2] = this.eYI;
        arrayOfEditHintView6[3] = this.eYJ;
        a(arrayOfBoolean6, arrayOfEditHintView6, this.eYx, this.eYy);
        break;
      }
      label895: if (this.eZc.getCount() <= 1)
        this.eYH.setClickable(false);
      while (true)
      {
        List localList = this.eYT.anj();
        if ((localList == null) || (!localList.contains(Integer.valueOf(this.eZb))))
          this.eZb = 1;
        this.eYH.pM(c.anX().c(this, this.eZb));
        break;
        this.eYH.setClickable(true);
      }
      this.eYw.setText(n.bFB);
      this.eYw.setVisibility(0);
      continue;
      this.eYw.setText(n.bFC);
      this.eYw.setVisibility(0);
      continue;
      this.eYw.setText(n.bFD);
      this.eYw.setVisibility(0);
      continue;
      this.eYw.setText(n.bFE);
      this.eYw.setVisibility(0);
    }
    label1066: this.eYw.setVisibility(8);
  }

  private boolean UW()
  {
    EditHintView localEditHintView = this.eYR;
    this.eYR = null;
    if (!this.eYD.U(null))
    {
      if ((this.eYR == null) && (localEditHintView != this.eYD))
        this.eYR = this.eYD;
      this.eYw.setText(n.bFA);
      this.eYw.setTextColor(getResources().getColor(f.aan));
    }
    for (boolean bool1 = false; ; bool1 = true)
    {
      if (!this.eYG.U(null))
      {
        if ((this.eYR == null) && (localEditHintView != this.eYG))
          this.eYR = this.eYG;
        bool1 = false;
      }
      if (!this.eYS.U(this.eYu))
      {
        if ((this.eYR == null) && (localEditHintView != this.eYS))
          this.eYR = this.eYS;
        bool1 = false;
      }
      int i;
      boolean bool2;
      if (!this.eYI.U(this.eYy))
      {
        if ((this.eYR == null) && (localEditHintView != this.eYI))
          this.eYR = this.eYI;
        this.eYy.setText(n.aQe);
        this.eYy.setTextColor(getResources().getColor(f.aan));
        i = 1;
        bool2 = false;
      }
      while (true)
      {
        label288: int j;
        if (!this.eYJ.U(this.eYy))
          if (i != 0)
          {
            this.eYy.setText(n.bFI);
            this.eYy.setTextColor(getResources().getColor(f.aan));
            if ((this.eYR == null) && (localEditHintView != this.eYJ))
              this.eYR = this.eYJ;
            bool2 = false;
            if (this.eYy.getVisibility() == 4)
            {
              this.eYy.setText(n.bFL);
              this.eYy.setTextColor(getResources().getColor(f.aaC));
              this.eYy.setVisibility(0);
            }
            if (this.eYF.U(this.eYA))
              break label815;
            if ((this.eYR == null) && (localEditHintView != this.eYF))
              this.eYR = this.eYF;
            j = 1;
            bool2 = false;
          }
        while (true)
        {
          if (!this.eYE.U(this.eYA))
          {
            if ((this.eYR == null) && (localEditHintView != this.eYE))
              this.eYR = this.eYE;
            bool2 = false;
          }
          while (true)
          {
            if (!this.eYX.isChecked())
              bool2 = false;
            if (!this.eYK.U(this.eYB))
            {
              if ((this.eYR == null) && (localEditHintView != this.eYK))
                this.eYR = this.eYK;
              bool2 = false;
            }
            if (!this.eYL.U(this.eYB))
            {
              if ((this.eYR == null) && (localEditHintView != this.eYL))
                this.eYR = this.eYL;
              bool2 = false;
            }
            if (!this.eYM.U(this.eYB))
            {
              if ((this.eYR == null) && (localEditHintView != this.eYM))
                this.eYR = this.eYM;
              bool2 = false;
            }
            if (!this.eYN.U(this.eYB))
            {
              if ((this.eYR == null) && (localEditHintView != this.eYN))
                this.eYR = this.eYN;
              bool2 = false;
            }
            if (!this.eYO.U(this.eYB))
            {
              if ((this.eYR == null) && (localEditHintView != this.eYO))
                this.eYR = this.eYO;
              bool2 = false;
            }
            if (!this.eYP.U(this.eYB))
            {
              if ((this.eYR == null) && (localEditHintView != this.eYP))
                this.eYR = this.eYP;
              bool2 = false;
            }
            if (!this.eYQ.U(this.eYB))
            {
              if ((this.eYR == null) && (localEditHintView != this.eYQ))
                this.eYR = this.eYQ;
              bool2 = false;
            }
            if (!bool2)
              break label797;
            this.dLL.setEnabled(true);
            this.dLL.setClickable(true);
            if (localEditHintView != null)
              localEditHintView.aoH();
            return bool2;
            this.eYy.setText(n.bFJ);
            this.eYy.setTextColor(getResources().getColor(f.aan));
            break;
            if (i == 0)
              break label288;
            this.eYy.setVisibility(0);
            break label288;
            if (j != 0)
              this.eYA.setVisibility(4);
          }
          label797: this.dLL.setEnabled(false);
          this.dLL.setClickable(false);
          return bool2;
          label815: j = 0;
        }
        bool2 = bool1;
        i = 0;
      }
    }
  }

  private static void a(boolean[] paramArrayOfBoolean, EditHintView[] paramArrayOfEditHintView, TextView paramTextView1, TextView paramTextView2)
  {
    a(paramArrayOfBoolean, paramArrayOfEditHintView, paramTextView1, paramTextView2, false);
  }

  private static void a(boolean[] paramArrayOfBoolean, EditHintView[] paramArrayOfEditHintView, TextView paramTextView1, TextView paramTextView2, boolean paramBoolean)
  {
    int i = paramArrayOfBoolean.length;
    int j = 0;
    int k = 0;
    if (j < i)
    {
      if (paramArrayOfBoolean[j] != 0)
      {
        k = 1;
        paramArrayOfEditHintView[j].setVisibility(0);
      }
      while (true)
      {
        j++;
        break;
        paramArrayOfEditHintView[j].setVisibility(8);
      }
    }
    if (k != 0)
    {
      paramTextView1.setVisibility(0);
      if (paramTextView2 != null)
      {
        if (!paramBoolean)
          break label79;
        paramTextView2.setVisibility(8);
      }
    }
    label79: 
    do
    {
      return;
      paramTextView2.setVisibility(4);
      return;
      paramTextView1.setVisibility(8);
    }
    while (paramTextView2 == null);
    paramTextView2.setVisibility(8);
  }

  private void anp()
  {
    String str1;
    if (UW())
    {
      com.tencent.mm.plugin.wallet.b.l.anR();
      this.eYU = new Authen();
      str1 = aoJ().getString("Kcard_id");
      if (this.eYS.getVisibility() != 0)
        break label487;
    }
    label477: label487: for (String str2 = this.eYS.getText(); ; str2 = str1)
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
        com.tencent.mm.plugin.wallet.b.i locali = com.tencent.mm.plugin.wallet.b.h.m(this);
        if (!(locali instanceof com.tencent.mm.plugin.wallet.b.b))
          break label477;
        a locala = ((com.tencent.mm.plugin.wallet.b.b)locali).a(this.eYU, this.eYV);
        if (locala == null)
          break;
        l(locala);
        return;
      }
      aa.e("MicroMsg.WalletCardElmentUI", "error scene is null!!");
      return;
      aa.e("MicroMsg.WalletCardElmentUI", "error process in the tenpay!!");
      return;
    }
  }

  private void bV(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      TextView localTextView = this.ezr;
      int i;
      int j;
      label45: int k;
      label71: int m;
      label97: int n;
      label123: int i1;
      label149: int i2;
      label175: EditHintView localEditHintView7;
      int i3;
      if (this.eYT.eXr)
      {
        i = 0;
        localTextView.setVisibility(i);
        EditHintView localEditHintView1 = this.eYK;
        if (!this.eYT.eXr)
          break label227;
        j = 0;
        localEditHintView1.setVisibility(j);
        EditHintView localEditHintView2 = this.eYL;
        if (!this.eYT.eXs)
          break label234;
        k = 0;
        localEditHintView2.setVisibility(k);
        EditHintView localEditHintView3 = this.eYM;
        if (!this.eYT.eXt)
          break label241;
        m = 0;
        localEditHintView3.setVisibility(m);
        EditHintView localEditHintView4 = this.eYN;
        if (!this.eYT.eXw)
          break label248;
        n = 0;
        localEditHintView4.setVisibility(n);
        EditHintView localEditHintView5 = this.eYO;
        if (!this.eYT.eXy)
          break label255;
        i1 = 0;
        localEditHintView5.setVisibility(i1);
        EditHintView localEditHintView6 = this.eYP;
        if (!this.eYT.eXx)
          break label262;
        i2 = 0;
        localEditHintView6.setVisibility(i2);
        localEditHintView7 = this.eYQ;
        boolean bool = this.eYT.eXz;
        i3 = 0;
        if (!bool)
          break label269;
      }
      while (true)
      {
        localEditHintView7.setVisibility(i3);
        this.eYB.setVisibility(4);
        return;
        i = 8;
        break;
        label227: j = 8;
        break label45;
        label234: k = 8;
        break label71;
        label241: m = 8;
        break label97;
        label248: n = 8;
        break label123;
        label255: i1 = 8;
        break label149;
        label262: i2 = 8;
        break label175;
        label269: i3 = 8;
      }
    }
    this.ezr.setVisibility(8);
    this.eYK.setVisibility(8);
    this.eYL.setVisibility(8);
    this.eYM.setVisibility(8);
    this.eYN.setVisibility(8);
    this.eYO.setVisibility(8);
    this.eYP.setVisibility(8);
    this.eYQ.setVisibility(8);
    this.eYB.setVisibility(8);
  }

  private void jE(int paramInt)
  {
    if (paramInt == 1)
    {
      a(this.eYI, 1, false);
      return;
    }
    a(this.eYI, 1, true);
  }

  protected final void FR()
  {
    this.eYt = ((TextView)findViewById(com.tencent.mm.i.aQd));
    this.eYS = ((EditHintView)findViewById(com.tencent.mm.i.aQb));
    this.eYu = ((TextView)findViewById(com.tencent.mm.i.aQc));
    this.eYx = ((TextView)findViewById(com.tencent.mm.i.aQf));
    this.eYG = ((EditHintView)findViewById(com.tencent.mm.i.aCm));
    this.eYJ = ((EditHintView)findViewById(com.tencent.mm.i.aBF));
    this.eYH = ((EditHintView)findViewById(com.tencent.mm.i.aQj));
    this.eYI = ((EditHintView)findViewById(com.tencent.mm.i.awl));
    this.eYy = ((TextView)findViewById(com.tencent.mm.i.aQe));
    this.eYv = ((TextView)findViewById(com.tencent.mm.i.aPX));
    this.eYD = ((EditHintView)findViewById(com.tencent.mm.i.aQi));
    this.eYw = ((TextView)findViewById(com.tencent.mm.i.aPY));
    this.eYz = ((TextView)findViewById(com.tencent.mm.i.aQa));
    this.eYF = ((EditHintView)findViewById(com.tencent.mm.i.aqW));
    this.eYE = ((EditHintView)findViewById(com.tencent.mm.i.aqX));
    this.eYA = ((TextView)findViewById(com.tencent.mm.i.aPZ));
    this.eYC = ((TextView)findViewById(com.tencent.mm.i.aQN));
    this.ezr = ((TextView)findViewById(com.tencent.mm.i.aPW));
    this.eYK = ((EditHintView)findViewById(com.tencent.mm.i.atE));
    this.eYL = ((EditHintView)findViewById(com.tencent.mm.i.axO));
    this.eYM = ((EditHintView)findViewById(com.tencent.mm.i.amC));
    this.eYN = ((EditHintView)findViewById(com.tencent.mm.i.ale));
    this.eYO = ((EditHintView)findViewById(com.tencent.mm.i.aDP));
    this.eYP = ((EditHintView)findViewById(com.tencent.mm.i.aEk));
    this.eYQ = ((EditHintView)findViewById(com.tencent.mm.i.arM));
    this.eYB = ((TextView)findViewById(com.tencent.mm.i.aPV));
    this.eYX = ((CheckBox)findViewById(com.tencent.mm.i.aln));
    this.dLL = ((Button)findViewById(com.tencent.mm.i.aCN));
    this.dTG = ((ScrollView)findViewById(com.tencent.mm.i.aQU));
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
    this.eYD.setOnClickListener(new w(this));
    this.eYH.setOnClickListener(new x(this));
    this.eYX.setChecked(true);
    this.eYX.setOnCheckedChangeListener(new y(this));
    findViewById(com.tencent.mm.i.alj).setOnClickListener(new z(this));
    this.eYM.setOnClickListener(new ab(this));
    this.dLL.setOnClickListener(new ac(this));
    LP();
    UW();
    a(this.eYS, 0, false);
    a(this.eYI, 1, false);
    a(this.eYJ, 0, false);
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
      if ((parama instanceof com.tencent.mm.plugin.wallet.pay.model.e))
      {
        com.tencent.mm.plugin.wallet.pay.model.e locale = (com.tencent.mm.plugin.wallet.pay.model.e)parama;
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
          localBundle.putString("key_bank_phone", this.eYT.eXq);
        }
        else if ((parama instanceof com.tencent.mm.plugin.wallet.pwd.a.d))
        {
          com.tencent.mm.plugin.wallet.pwd.a.d locald = (com.tencent.mm.plugin.wallet.pwd.a.d)parama;
          this.eYW.faP = locald.aeS();
          aa.d("MicroMsg.WalletCardElmentUI", "reqKey  " + locald.aeS());
          localBundle.putParcelable("key_pay_info", this.eYW);
          localBundle.putString("kreq_token", locald.ank());
          localBundle.putString("key_bank_phone", this.eYT.eXq);
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
    return k.bbw;
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
          break label408;
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
      label408: this.eYP.setVisibility(8);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bGi);
    this.eYT = ((ElementQuery)aoJ().getParcelable("elemt_query"));
    this.eYV = ((Orders)aoJ().getParcelable("key_orders"));
    this.eYW = ((PayInfo)aoJ().getParcelable("key_pay_info"));
    this.eZb = c.anX().aod();
    if (this.eYW == null)
      this.eYW = new PayInfo();
    aa.d("MicroMsg.WalletCardElmentUI", "mPayInfo " + this.eYW);
    FR();
    this.dTG.pageScroll(33);
    com.tencent.mm.plugin.wallet.b.l.a(this, aoJ(), 3);
  }

  public void onDestroy()
  {
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
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.WalletCardElmentUI
 * JD-Core Version:    0.6.2
 */