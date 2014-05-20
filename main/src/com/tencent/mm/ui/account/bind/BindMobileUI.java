package com.tencent.mm.ui.account.bind;

import android.content.ContentResolver;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.k;
import com.tencent.mm.modelsimple.BindWordingContent;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.friend.ct;
import com.tencent.mm.x.b;
import com.tencent.mm.x.c;

public class BindMobileUI extends MMWizardActivity
{
  private String bTR;
  private String cjJ = null;
  private String cuq = null;
  private TextView dYB;
  private LinearLayout gqB;
  private TextView gqC;
  private String gqE = null;
  private ImageView gvA;
  private boolean gvB;
  private BindWordingContent gvl;
  private int gvm;
  private EditText gvr;
  private TextView gvs;
  private ct gvt;
  private Button gvu;
  private TextView gvv;
  private TextView gvw;
  private CheckBox gvx;
  private CheckBox gvy;
  private LinearLayout gvz;

  protected final void FR()
  {
    this.gvr = ((EditText)findViewById(com.tencent.mm.i.anC));
    this.gqB = ((LinearLayout)findViewById(com.tencent.mm.i.aqL));
    this.gqC = ((TextView)findViewById(com.tencent.mm.i.aqM));
    this.gvs = ((TextView)findViewById(com.tencent.mm.i.aqK));
    this.dYB = ((TextView)findViewById(com.tencent.mm.i.anH));
    this.gvu = ((Button)findViewById(com.tencent.mm.i.ano));
    this.gvv = ((TextView)findViewById(com.tencent.mm.i.anE));
    this.dYB.setText(getString(n.bff));
    this.gvw = ((TextView)findViewById(com.tencent.mm.i.anp));
    this.gvz = ((LinearLayout)findViewById(com.tencent.mm.i.anG));
    this.gvy = ((CheckBox)findViewById(com.tencent.mm.i.any));
    this.gvx = ((CheckBox)findViewById(com.tencent.mm.i.anx));
    this.gvA = ((ImageView)findViewById(com.tencent.mm.i.anB));
    if (this.gvl != null)
    {
      if ((this.gvl.title != null) && (this.gvl.title.length() > 0))
        this.dYB.setText(this.gvl.title);
      if ((this.gvl.content != null) && (this.gvl.content.length() > 0))
        this.gvw.setText(this.gvl.content);
    }
    switch (this.gvl.cwN.intValue())
    {
    default:
      switch (this.gvm)
      {
      default:
        label328: if ((cj.hX(this.cuq)) && (cj.hX(this.cjJ)));
        break;
      case 0:
      case 1:
      }
      break;
    case 0:
    case 1:
    case 2:
    }
    while (true)
    {
      if ((this.cuq != null) && (!this.cuq.equals("")))
        this.gqC.setText(this.cuq);
      if ((this.cjJ != null) && (!this.cjJ.equals("")))
        this.gvs.setText("+" + this.cjJ);
      if ((this.gqE != null) && (!this.gqE.equals("")))
        this.gvr.setText(this.gqE);
      this.gvu.setOnClickListener(new f(this));
      this.gvv.setOnClickListener(new g(this));
      if (this.gvB)
      {
        mn(n.beJ);
        this.gvA.setVisibility(8);
        this.dYB.setText(n.beX);
        this.gvz.setVisibility(8);
        this.gvy.setVisibility(8);
        this.gvy.setChecked(false);
        this.gvx.setVisibility(0);
        this.gvx.setChecked(false);
        this.gvw.setVisibility(8);
        this.gvw.setText(getString(n.beK));
        this.gvv.setVisibility(8);
        this.gvu.setText(n.beJ);
        a(new h(this));
      }
      this.gqB.setOnClickListener(new i(this));
      this.gqB.setOnClickListener(new j(this));
      return;
      this.gvA.setImageResource(com.tencent.mm.h.acu);
      break;
      this.gvA.setImageResource(com.tencent.mm.h.acx);
      break;
      this.gvA.setImageResource(com.tencent.mm.h.acv);
      break;
      this.gvz.setVisibility(0);
      this.gvy.setVisibility(0);
      this.gvw.setVisibility(8);
      break label328;
      this.gvz.setVisibility(8);
      this.gvy.setVisibility(8);
      this.gvw.setVisibility(0);
      break label328;
      String str = ((TelephonyManager)getSystemService("phone")).getSimCountryIso();
      aa.d("MicroMsg.BindMContactUI", "tm.getSimCountryIso()" + str);
      if (cj.hX(str))
      {
        aa.e("MicroMsg.BindMContactUI", "getDefaultCountryInfo error");
      }
      else
      {
        c localc = b.c(this, str, getString(n.aqK));
        if (localc == null)
        {
          aa.e("MicroMsg.BindMContactUI", "getDefaultCountryInfo error");
        }
        else
        {
          this.cuq = localc.cuq;
          this.cjJ = localc.cup;
        }
      }
    }
  }

  protected final int getLayoutId()
  {
    return k.aSx;
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
    this.gvs.setText("+" + this.cjJ);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.bfg);
    this.cuq = cj.R(getIntent().getStringExtra("country_name"), "");
    this.cjJ = cj.R(getIntent().getStringExtra("couttry_code"), "");
    this.gqE = cj.R(getIntent().getStringExtra("bindmcontact_shortmobile"), "");
    this.gvl = ((BindWordingContent)getIntent().getParcelableExtra("kstyle_bind_wording"));
    this.gvm = getIntent().getIntExtra("kstyle_bind_recommend_show", 0);
    this.gvB = getIntent().getBooleanExtra("is_bind_for_chatroom_upgrade", false);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
    if (this.gvt != null)
    {
      getContentResolver().unregisterContentObserver(this.gvt);
      this.gvt.recycle();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      aFs();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.bind.BindMobileUI
 * JD-Core Version:    0.6.2
 */