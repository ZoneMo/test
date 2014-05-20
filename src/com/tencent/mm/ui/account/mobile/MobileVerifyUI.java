package com.tencent.mm.ui.account.mobile;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.l;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cm;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.platformtools.ag;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.protocal.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bc;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.account.RegByMobileSetPwdUI;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;
import java.util.Timer;

public class MobileVerifyUI extends MMActivity
{
  public String bQI;
  protected String bTR;
  protected ProgressDialog cIr = null;
  String cie;
  private ContentResolver contentResolver;
  int cxC;
  protected Button dLL;
  private Timer eSL;
  private long eSM = 0L;
  private boolean eSN = false;
  String eaA;
  private String[] fbp;
  SecurityImage gof = null;
  protected EditText grF;
  protected TextView grG;
  private String grJ;
  private boolean grL = false;
  private int grP = 30;
  protected boolean grU = false;
  protected boolean grV = false;
  protected TextView grW;
  protected int grY = -1;
  protected TextView gwL;
  protected TextView gwM;
  protected ScrollView gwN;
  private dr gwO;
  Boolean gwP;
  Boolean gwQ;
  private dq gwR;
  String gwS;
  private int gwh;
  String gws;

  private void aFP()
  {
    if (!this.eSN)
    {
      this.eSL = new Timer();
      this.eSN = true;
      this.eSM = this.grP;
      da localda = new da(this);
      this.eSL.schedule(localda, 1000L, 1000L);
    }
  }

  private void aGs()
  {
    SM();
    if (this.grF.getText().toString().trim().equals(""))
    {
      h.c(this, n.bfC, n.ber);
      return;
    }
    this.gwR.a(dp.gxc);
  }

  private void goBack()
  {
    b.ie(this.eaA);
    if (!this.gwR.a(dp.gxb))
      finish();
  }

  protected final void FR()
  {
    aa.d("MicroMsg.MobileVerifyUI", "init getintent mobile:" + this.bTR);
    this.grF = ((EditText)findViewById(i.anL));
    this.gwL = ((TextView)findViewById(i.aBU));
    this.gwM = ((TextView)findViewById(i.aBS));
    this.grG = ((TextView)findViewById(i.anJ));
    this.grG.setText(this.bTR);
    this.bTR = bc.sL(this.bTR);
    this.gwL.setText(getString(n.brN));
    this.grW = ((TextView)findViewById(i.anM));
    this.dLL = ((Button)findViewById(i.aCN));
    this.gwN = ((ScrollView)findViewById(i.aIj));
    this.fbp = getResources().getStringArray(com.tencent.mm.c.Zt);
    String str = getString(n.bvz);
    this.grW.setText(Html.fromHtml(str));
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new df(this);
    this.gwM.setVisibility(0);
    TextView localTextView = this.gwM;
    Resources localResources = getResources();
    int i = l.bcv;
    int j = this.grP;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.grP);
    localTextView.setText(localResources.getQuantityString(i, j, arrayOfObject));
    aFP();
    this.grL = false;
    this.grF.setFilters(arrayOfInputFilter);
    this.grF.addTextChangedListener(new com.tencent.mm.ui.widget.c(this.grF, null, 12));
    this.dLL.setOnClickListener(new dg(this));
    this.dLL.setEnabled(false);
    this.grF.setTextSize(15.0F);
    this.grF.addTextChangedListener(new dh(this));
    this.gwL.setOnClickListener(new di(this));
    this.gwL.setEnabled(false);
    a(new dl(this));
    this.grF.setOnEditorActionListener(new dm(this));
    this.grF.setOnKeyListener(new dn(this));
  }

  public final void aEP()
  {
    if (aEO() == 1)
    {
      this.gwN.scrollTo(0, this.gwN.getChildAt(0).getMeasuredHeight() - this.gwN.getMeasuredHeight());
      return;
    }
    this.gwN.scrollTo(0, 0);
  }

  protected final void aFR()
  {
    Intent localIntent = new Intent(this, RegByMobileSetPwdUI.class);
    localIntent.putExtra("kintent_hint", getString(n.bys));
    startActivityForResult(localIntent, 0);
  }

  protected final int getLayoutId()
  {
    return k.aXv;
  }

  protected final boolean i(int paramInt1, int paramInt2, String paramString)
  {
    if (paramInt1 == 4);
    int i;
    switch (paramInt2)
    {
    default:
      switch (paramInt2)
      {
      default:
        i = 0;
      case -34:
      case -43:
      case -41:
      case -36:
      case -32:
      case -33:
      case -100:
      }
      break;
    case -1:
    case -75:
    case -140:
    }
    while (i != 0)
    {
      return true;
      if (be.uA().wS() == 6)
      {
        h.c(this, n.bso, n.bsn);
        return true;
      }
      ag.af(this);
      return true;
      if (!com.tencent.mm.sdk.platformtools.cj.hX(this.bQI))
        ag.e(this, paramString, this.bQI);
      return true;
      Toast.makeText(this, n.beS, 0).show();
      i = 1;
      continue;
      Toast.makeText(this, n.beP, 0).show();
      i = 1;
      continue;
      Toast.makeText(this, n.beR, 0).show();
      i = 1;
      continue;
      Toast.makeText(this, n.beU, 0).show();
      i = 1;
      continue;
      h.a(this, getString(n.bfy), "", new do(this));
      i = 1;
      continue;
      h.a(this, n.bfw, n.anM, new dc(this));
      i = 1;
      continue;
      be.uH();
      Activity localActivity = aal();
      if (TextUtils.isEmpty(j.awH()));
      for (String str = com.tencent.mm.an.a.m(aal(), n.bqs); ; str = j.awH())
      {
        h.a(localActivity, str, aal().getString(n.ber), new dd(this), new de(this));
        i = 1;
        break;
      }
    }
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (cm.vs().vt() > 0);
    for (boolean bool = true; ; bool = false)
    {
      this.gwQ = Boolean.valueOf(bool);
      this.gwh = getIntent().getIntExtra("mobile_verify_purpose", 0);
      this.gwS = getIntent().getStringExtra("MicroMsg.MobileVerifyUIIntent_sms_code");
      this.gws = getIntent().getStringExtra("kintent_password");
      this.cie = getIntent().getStringExtra("kintent_nickname");
      this.gwP = Boolean.valueOf(getIntent().getBooleanExtra("kintent_hasavatar", false));
      switch (this.gwh)
      {
      default:
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(this.gwh);
        aa.b("MicroMsg.MobileVerifyUI", "wrong purpose %s", arrayOfObject);
        finish();
        return;
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    this.gwR = new cb();
    while (true)
    {
      String str = getString(n.bfl);
      if (com.tencent.mm.protocal.a.fxu)
        str = getString(n.amt) + getString(n.bdl);
      vT(str);
      this.grP = getIntent().getIntExtra("mobileverify_countdownsec", 30);
      this.grU = getIntent().getBooleanExtra("mobileverify_fb", false);
      this.grV = getIntent().getBooleanExtra("mobileverify_reg_qq", false);
      this.bTR = getIntent().getExtras().getString("bindmcontact_mobile");
      this.eaA = b.FL();
      FR();
      this.gwR.a(this);
      if (this.gwS == null)
        break;
      this.grF.setText(this.gwS);
      aGs();
      return;
      this.gwR = new cn();
      if ((this.gws != null) && (this.gws.length() >= 4))
      {
        this.cxC = 1;
      }
      else
      {
        this.cxC = 4;
        continue;
        this.gwR = new bw();
        continue;
        this.gwR = new cj();
      }
    }
    this.gwO = new dr(this, new Handler());
    getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, this.gwO);
  }

  public void onDestroy()
  {
    if (this.gwO != null)
    {
      getContentResolver().unregisterContentObserver(this.gwO);
      this.gwO = null;
    }
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    this.gwR.stop();
  }

  public void onResume()
  {
    super.onResume();
    this.gwR.start();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.MobileVerifyUI
 * JD-Core Version:    0.6.2
 */