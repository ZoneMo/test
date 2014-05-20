package com.tencent.mm.ui.account;

import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.Spannable;
import android.text.Spannable.Factory;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.bc;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.account.mobile.MobileVerifyUI;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import java.util.HashMap;
import java.util.Map;

@Deprecated
public class RegByMobileRegUI extends MMActivity
  implements m
{
  private String cjJ = null;
  private String cuq = null;
  private String eaA;
  private CheckBox frL;
  private EditText gqA;
  private LinearLayout gqB;
  private TextView gqC;
  private EditText gqD;
  private String gqE = null;
  private Button gqF;
  private Map gqH = new HashMap();
  private boolean gqI = true;
  private ch gqJ;
  private String gqK = null;
  private String gqL = null;
  private String gqM = "";
  private int grM;
  private String grN = null;
  private String grR = "";
  private int grS = 2;
  private int gsE = 0;
  private boolean gsO = false;
  private String gsu;
  private String gsv;
  private TextView gsw;
  private Button gsx;

  private void Zz()
  {
    com.tencent.mm.plugin.a.b.ie(this.eaA);
    finish();
  }

  protected final void FR()
  {
    this.gqH.clear();
    String[] arrayOfString1 = getString(n.aqK).trim().split(",");
    for (int i = 0; i < arrayOfString1.length; i++)
    {
      String[] arrayOfString2 = arrayOfString1[i].trim().split(":");
      this.gqH.put(arrayOfString2[0], arrayOfString2[1]);
    }
    this.gqA = ((EditText)findViewById(i.aHg));
    this.gqB = ((LinearLayout)findViewById(i.aqL));
    this.gqC = ((TextView)findViewById(i.aqM));
    this.gqD = ((EditText)findViewById(i.aqK));
    this.gqD.setText(getString(n.biL));
    this.gqF = ((Button)findViewById(i.ayK));
    this.frL = ((CheckBox)findViewById(i.alk));
    this.gsw = ((TextView)findViewById(i.alm));
    this.gsx = ((Button)findViewById(i.alj));
    String str1 = getString(n.bvL);
    if (com.tencent.mm.protocal.a.fxu)
      str1 = str1 + getString(n.bdl);
    vT(str1);
    this.frL.setVisibility(8);
    this.frL.setChecked(true);
    if (this.gsx != null)
      this.gsx.setOnClickListener(new hd(this));
    String str2 = getString(n.bps);
    if (cj.azT())
    {
      String str7 = getString(n.bpt);
      Spannable localSpannable2 = Spannable.Factory.getInstance().newSpannable(str2 + "  " + str7);
      localSpannable2.setSpan(new hn(this), str2.length() + "  ".length(), str2.length() + str7.length() + "  ".length(), 33);
      this.gsw.setText(localSpannable2);
      this.gsw.setMovementMethod(LinkMovementMethod.getInstance());
      this.gqA.addTextChangedListener(new com.tencent.mm.ui.widget.c(this.gqA, null, 20));
      this.gqA.addTextChangedListener(new hq(this));
      this.gqA.setOnEditorActionListener(new hr(this));
      this.gqA.setOnKeyListener(new hs(this));
      this.gqD.addTextChangedListener(new ht(this));
      a(0, getString(n.bec), new hu(this));
      dg(false);
      if ((cj.hX(this.cuq)) && (cj.hX(this.cjJ)))
        break label915;
      label529: if ((this.cuq != null) && (!this.cuq.equals("")))
        this.gqC.setText(this.cuq);
      if ((this.cjJ != null) && (!this.cjJ.equals("")))
        this.gqD.setText("+" + this.cjJ);
      if ((this.gqE == null) || (this.gqE.equals("")))
        break label1024;
      this.gqA.setText(this.gqE);
      label635: this.gqB.setOnClickListener(new hf(this));
      this.gqF.setVisibility(8);
      if ((this.grM != 2) && (this.grM != 1))
        break label1042;
      this.gqF.setVisibility(4);
      this.gsx.setVisibility(8);
      this.gsw.setVisibility(8);
    }
    while (true)
    {
      a(new hh(this));
      return;
      String str3 = getString(n.bpv);
      String str4 = getString(n.bpu);
      String str5 = getString(n.bdp);
      Spannable localSpannable1 = Spannable.Factory.getInstance().newSpannable(str2 + "  " + str3 + str5 + str4);
      localSpannable1.setSpan(new ho(this), str2.length() + "  ".length(), str2.length() + "  ".length() + str3.length(), 33);
      localSpannable1.setSpan(new hp(this), str2.length() + str3.length() + "  ".length() + str5.length(), str2.length() + str3.length() + "  ".length() + str5.length() + str4.length(), 33);
      this.gsw.setText(localSpannable1);
      break;
      label915: String str6 = ((TelephonyManager)getSystemService("phone")).getSimCountryIso();
      aa.d("MicroMsg.RegByMobileRegUI", "tm.getSimCountryIso()" + str6);
      if (cj.hX(str6))
      {
        aa.e("MicroMsg.RegByMobileRegUI", "getDefaultCountryInfo error");
        break label529;
      }
      com.tencent.mm.x.c localc = com.tencent.mm.x.b.c(this, str6, getString(n.aqK));
      if (localc == null)
      {
        aa.e("MicroMsg.RegByMobileRegUI", "getDefaultCountryInfo error");
        break label529;
      }
      this.cuq = localc.cuq;
      this.cjJ = localc.cup;
      break label529;
      label1024: be.ut().a(new he(this));
      break label635;
      label1042: if (this.grM == 0)
        if (com.tencent.mm.x.b.Bj())
        {
          if ((cj.tc("2013-11-30 00:00:00") >= 0L) || (cj.azW() % 2 == 0))
          {
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Long.valueOf(System.currentTimeMillis());
            aa.d("MicroMsg.RegByMobileRegUI", "has overtime:[%d]", arrayOfObject);
            this.gqF.setVisibility(4);
          }
          else
          {
            this.gsO = true;
            this.gqF.setText(n.bvy);
            this.gqF.setOnClickListener(new hg(this));
          }
        }
        else
          this.gqF.setVisibility(8);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.RegByMobileRegUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.gqJ != null)
    {
      this.gqJ.dismiss();
      this.gqJ = null;
    }
    if (paramx.getType() == 132)
      if ((paramInt1 == 0) && (paramInt2 == 0))
        if (((ai)paramx).vI() == 1)
        {
          if (this.grM != 2)
            break label292;
          com.tencent.mm.plugin.a.b.ie("L3");
        }
    label291: label292: int i;
    label1008: 
    do
    {
      do
      {
        do
        {
          break label291;
          break label291;
          break label291;
          Intent localIntent3 = new Intent();
          localIntent3.putExtra("bindmcontact_mobile", this.gqK + " " + this.gqA.getText().toString());
          localIntent3.putExtra("bindmcontact_shortmobile", this.gqA.getText().toString().trim());
          localIntent3.putExtra("country_name", this.cuq);
          localIntent3.putExtra("couttry_code", this.cjJ);
          localIntent3.putExtra("login_type", this.grM);
          if (this.grM == 2)
            localIntent3.putExtra("mobile_verify_purpose", 3);
          while (true)
          {
            localIntent3.putExtra("regsetinfo_ticket", this.grN);
            localIntent3.putExtra("regsetinfo_NextStep", this.grR);
            localIntent3.putExtra("regsetinfo_NextStyle", this.grS);
            a(MobileVerifyUI.class, localIntent3);
            finish();
            return;
            if (this.grM != 0)
              break;
            com.tencent.mm.plugin.a.b.ie("R200_300");
            break;
            if (this.grM == 0)
              localIntent3.putExtra("mobile_verify_purpose", 2);
          }
          int m = n.bfv;
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(paramInt1);
          arrayOfObject2[1] = Integer.valueOf(paramInt2);
          Toast.makeText(this, getString(m, arrayOfObject2), 0).show();
          return;
          if (paramInt2 == -75)
          {
            h.c(this, n.bdo, n.buW);
            return;
          }
        }
        while (paramx.getType() != 145);
        i = ((ag)paramx).vI();
        if (i != 12)
          break label1008;
        if ((paramInt2 == -41) || (paramInt2 == -59))
        {
          com.tencent.mm.d.a locala1 = com.tencent.mm.d.a.be(paramString);
          if (locala1 != null)
          {
            locala1.a(this, null, null);
            return;
          }
          h.c(this, n.bvA, n.bvB);
          return;
        }
        if ((paramInt2 != -36) && (paramInt2 != -35) && (paramInt2 != -3))
          break;
        String str1 = ((ag)paramx).zD();
        if (!cj.hX(str1))
          this.gqL = str1.trim();
        this.gqL = bc.sL(this.gqL);
        this.gsv = (this.gqK + this.gqL);
        if (this.grM == 0)
          com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",R200_200," + be.ds("R200_200") + ",1");
        while (true)
        {
          com.tencent.mm.d.a locala2 = com.tencent.mm.d.a.be(paramString);
          if (locala2 == null)
            break;
          locala2.a(this, new hj(this, paramInt2), new hl(this));
          return;
          if (this.grM == 2)
            com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",F200_200," + be.ds("F200_200") + ",1");
        }
        getString(n.ber);
        this.gqJ = h.a(this, getString(n.bvv), true, new hm(this));
        String str2 = this.gqK + this.gqL;
        if (paramInt2 == -3);
        for (int j = 8; ; j = 14)
        {
          ag localag = new ag(str2, j, "", 0, "");
          be.uA().d(localag);
          if (this.grM != 0)
            break;
          com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",R200_200," + be.ds("R200_200") + ",2");
          return;
        }
      }
      while (this.grM != 2);
      com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",F200_200," + be.ds("F200_200") + ",2");
      return;
      if (paramInt2 == -34)
      {
        h.p(this, getString(n.beS), "");
        return;
      }
      int k = n.bfv;
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt1);
      arrayOfObject1[1] = Integer.valueOf(paramInt2);
      Toast.makeText(this, getString(k, arrayOfObject1), 0).show();
      if (i == 14)
      {
        if (paramInt2 == -41)
        {
          h.c(this, n.bvA, n.bvB);
          return;
        }
        com.tencent.mm.plugin.a.b.ie("R200_300");
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("bindmcontact_mobile", this.gqK + " " + this.gqA.getText().toString());
        localIntent2.putExtra("bindmcontact_shortmobile", this.gqL);
        localIntent2.putExtra("country_name", this.cuq);
        localIntent2.putExtra("couttry_code", this.cjJ);
        localIntent2.putExtra("login_type", this.grM);
        localIntent2.putExtra("mobileverify_countdownsec", ((ag)paramx).zF());
        localIntent2.putExtra("mobileverify_countdownstyle", ((ag)paramx).zG());
        localIntent2.putExtra("mobileverify_fb", ((ag)paramx).zH());
        localIntent2.putExtra("mobileverify_reg_qq", ((ag)paramx).zI());
        localIntent2.putExtra("mobile_verify_purpose", 2);
        a(MobileVerifyUI.class, localIntent2);
      }
    }
    while (i != 8);
    if (paramInt2 == 0)
    {
      Intent localIntent1 = new Intent();
      localIntent1.putExtra("bindmcontact_mobile", this.gqK + " " + this.gqA.getText().toString());
      localIntent1.putExtra("bindmcontact_shortmobile", this.gqL);
      localIntent1.putExtra("country_name", this.cuq);
      localIntent1.putExtra("couttry_code", this.cjJ);
      localIntent1.putExtra("login_type", this.grM);
      localIntent1.putExtra("mobileverify_countdownsec", ((ag)paramx).zF());
      localIntent1.putExtra("mobileverify_countdownstyle", ((ag)paramx).zG());
      localIntent1.putExtra("mobileverify_fb", ((ag)paramx).zH());
      localIntent1.putExtra("mobileverify_reg_qq", ((ag)paramx).zI());
      localIntent1.putExtra("mobile_verify_purpose", 2);
      a(MobileVerifyUI.class, localIntent1);
      return;
    }
    h.c(this, n.bvA, n.bvB);
  }

  protected final int getLayoutId()
  {
    return k.aYC;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt2)
    {
    default:
    case 100:
    }
    do
    {
      return;
      this.cuq = cj.R(paramIntent.getStringExtra("country_name"), "");
      this.cjJ = cj.R(paramIntent.getStringExtra("couttry_code"), "");
      if (!this.cuq.equals(""))
        this.gqC.setText(this.cuq);
    }
    while (this.cjJ.equals(""));
    this.gqD.setText("+" + this.cjJ);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.cuq = cj.R(getIntent().getStringExtra("country_name"), "");
    this.cjJ = cj.R(getIntent().getStringExtra("couttry_code"), "");
    this.gqE = cj.R(getIntent().getStringExtra("bindmcontact_shortmobile"), "");
    this.grM = getIntent().getIntExtra("login_type", 0);
    this.grN = getIntent().getStringExtra("regsetinfo_ticket");
    this.grR = getIntent().getStringExtra("regsetinfo_NextStep");
    this.grS = getIntent().getIntExtra("regsetinfo_NextStyle", 2);
    this.eaA = com.tencent.mm.plugin.a.b.FL();
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      Zz();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    be.uA().b(380, this);
    be.uA().b(145, this);
    be.uA().b(132, this);
    if (this.grM == 0)
      if (this.gsO)
        com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + getClass().getName() + ",R1_with_email_entry," + be.ds("R1_with_email_entry") + ",2");
    while (this.grM != 2)
    {
      return;
      com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + getClass().getName() + ",R200_100," + be.ds("R200_100") + ",2");
      return;
    }
    com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + getClass().getName() + ",F200_100," + be.ds("F200_100") + ",2");
  }

  public void onResume()
  {
    super.onResume();
    be.uA().a(380, this);
    be.uA().a(145, this);
    be.uA().a(132, this);
    if (this.grM == 0)
      if (this.gsO)
      {
        com.tencent.mm.plugin.a.b.id("R1_with_email_entry");
        com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",R1_with_email_entry," + be.ds("R1_with_email_entry") + ",1");
      }
    while (true)
    {
      this.gqD.setSelection(this.gqD.getText().toString().length());
      UY();
      this.gsE = 0;
      return;
      com.tencent.mm.plugin.a.b.id("R200_100");
      com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",R200_100," + be.ds("R200_100") + ",1");
      continue;
      if (this.grM == 2)
      {
        com.tencent.mm.plugin.a.b.id("F200_100");
        com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",F200_100," + be.ds("F200_100") + ",1");
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByMobileRegUI
 * JD-Core Version:    0.6.2
 */