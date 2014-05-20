package com.tencent.mm.ui.account.mobile;

import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.ch;
import java.util.HashMap;
import java.util.Map;

public class MobileInputUI extends MMActivity
{
  protected String cjJ = null;
  protected String cuq = null;
  protected String eaA;
  protected CheckBox frL;
  protected EditText gqA;
  protected LinearLayout gqB;
  protected TextView gqC;
  protected EditText gqD;
  protected String gqE = null;
  protected Map gqH = new HashMap();
  protected boolean gqI = true;
  protected ch gqJ;
  protected String gqK = null;
  protected String gqL = null;
  protected String gqM = "";
  protected EditText gqR;
  private h gsI;
  protected TextView gsX;
  protected TextView gsw;
  protected Button gsx;
  protected Button gsz;
  protected View gwc;
  protected Button gwd;
  protected TextView gwe;
  protected View gwf;
  protected TextView gwg;
  private int gwh = 0;
  private bd gwi;

  private boolean aGq()
  {
    return this.gwh == 2;
  }

  private void aGr()
  {
    this.gqK = this.gqD.getText().toString().trim();
    this.gqL = this.gqA.getText().toString();
    SM();
    this.gwi.a(bc.gwl);
  }

  private void goBack()
  {
    this.gwi.a(bc.gwk);
    com.tencent.mm.plugin.a.b.ie(this.eaA);
    SM();
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
    this.gqA = ((EditText)findViewById(com.tencent.mm.i.aHg));
    this.gqR = ((EditText)findViewById(com.tencent.mm.i.awJ));
    this.gwc = findViewById(com.tencent.mm.i.aDN);
    this.gqB = ((LinearLayout)findViewById(com.tencent.mm.i.aqL));
    this.gqC = ((TextView)findViewById(com.tencent.mm.i.aqM));
    this.gqD = ((EditText)findViewById(com.tencent.mm.i.aqK));
    this.gwd = ((Button)findViewById(com.tencent.mm.i.ayI));
    this.gwe = ((TextView)findViewById(com.tencent.mm.i.ayG));
    this.gwf = findViewById(com.tencent.mm.i.aGV);
    this.frL = ((CheckBox)findViewById(com.tencent.mm.i.alk));
    this.gsw = ((TextView)findViewById(com.tencent.mm.i.alm));
    this.gsx = ((Button)findViewById(com.tencent.mm.i.alj));
    this.gsz = ((Button)findViewById(com.tencent.mm.i.aCN));
    this.gwg = ((TextView)findViewById(com.tencent.mm.i.aHk));
    this.gsX = ((TextView)findViewById(com.tencent.mm.i.aBQ));
    this.gwc.setVisibility(8);
    this.gwg.setVisibility(8);
    this.gsz.setVisibility(8);
    this.gwd.setVisibility(8);
    this.gwe.setVisibility(8);
    this.gwf.setVisibility(8);
    this.frL.setVisibility(8);
    this.frL.setChecked(true);
    this.gsI = new h(this.gqD, this.gqA);
    String str1 = getString(n.bvL);
    if (a.fxu)
      str1 = getString(n.amt) + getString(n.bdl);
    vT(str1);
    this.gqA.addTextChangedListener(new com.tencent.mm.ui.widget.c(this.gqA, null, 20));
    this.gqA.addTextChangedListener(new ar(this));
    this.gqA.setOnEditorActionListener(new au(this));
    this.gqA.setOnKeyListener(new av(this));
    this.gqA.setOnFocusChangeListener(new aw(this));
    this.gqD.addTextChangedListener(new ax(this));
    this.gqD.setOnFocusChangeListener(new ay(this));
    a(0, getString(n.bec), new az(this));
    dg(false);
    this.gsz.setEnabled(false);
    this.gsz.setOnClickListener(new ba(this));
    if ((!cj.hX(this.cuq)) || (!cj.hX(this.cjJ)))
    {
      if ((this.cuq != null) && (!this.cuq.equals("")))
        this.gqC.setText(this.cuq);
      if ((this.cjJ != null) && (!this.cjJ.equals("")))
        this.gqD.setText("+" + this.cjJ);
      if ((this.gqE == null) || (this.gqE.equals("")))
        break label839;
      this.gqA.setText(this.gqE);
    }
    while (true)
    {
      this.gqB.setOnClickListener(new bb(this));
      a(new as(this));
      return;
      String str2 = ((TelephonyManager)getSystemService("phone")).getSimCountryIso();
      aa.d("MicroMsg.MobileInputUI", "tm.getSimCountryIso()" + str2);
      if (cj.hX(str2))
      {
        aa.e("MicroMsg.MobileInputUI", "getDefaultCountryInfo error");
        break;
      }
      com.tencent.mm.x.c localc = com.tencent.mm.x.b.c(this, str2, getString(n.aqK));
      if (localc == null)
      {
        aa.e("MicroMsg.MobileInputUI", "getDefaultCountryInfo error");
        break;
      }
      this.cuq = localc.cuq;
      this.cjJ = localc.cup;
      break;
      label839: if (this.gwh != 1)
        be.ut().a(new at(this));
    }
  }

  protected final int getLayoutId()
  {
    return k.aXt;
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
    this.gwh = getIntent().getIntExtra("mobile_input_purpose", 0);
    switch (this.gwh)
    {
    default:
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(this.gwh);
      aa.b("MicroMsg.MobileInputUI", "wrong purpose %s", arrayOfObject);
      finish();
      return;
    case 1:
      this.gwi = new ab();
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      this.cuq = cj.R(getIntent().getStringExtra("country_name"), "");
      this.cjJ = cj.R(getIntent().getStringExtra("couttry_code"), "");
      this.gqE = cj.R(getIntent().getStringExtra("bindmcontact_shortmobile"), "");
      this.eaA = com.tencent.mm.plugin.a.b.FL();
      FR();
      this.gwi.a(this);
      return;
      this.gwi = new ah();
      continue;
      this.gwi = new i();
      continue;
      this.gwi = new ah();
      continue;
      this.gwi = new o();
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    this.gwi.stop();
  }

  public void onResume()
  {
    super.onResume();
    this.gwi.start();
    this.gqD.setSelection(this.gqD.getText().toString().length());
    UY();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.MobileInputUI
 * JD-Core Version:    0.6.2
 */