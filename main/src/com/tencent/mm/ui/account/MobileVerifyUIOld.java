package com.tencent.mm.ui.account;

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
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.f;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.l;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n;
import com.tencent.mm.n.m;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.protocal.j;
import com.tencent.mm.sdk.platformtools.bc;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.account.mobile.MobileInputUI;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.friend.FindMContactAddUI;
import java.util.List;
import java.util.Timer;

@Deprecated
public class MobileVerifyUIOld extends MMActivity
  implements m
{
  private String bTR;
  private ProgressDialog cIr = null;
  private ContentResolver contentResolver;
  private com.tencent.mm.ui.base.x dUF;
  private Timer eSL;
  private long eSM = 0L;
  private boolean eSN = false;
  private String eaA;
  private String[] fbp;
  private com.tencent.mm.ui.account.mobile.a gqG = null;
  private EditText grF;
  private TextView grG;
  private Button grH;
  private Button grI;
  private String grJ;
  private fi grK;
  private boolean grL = false;
  private int grM;
  private String grN = null;
  private int grO = 0;
  private int grP = 30;
  private TextView grQ;
  private String grR = "";
  private int grS = 2;
  private boolean grT = true;
  private boolean grU = false;
  private boolean grV = false;
  private TextView grW;
  private TextView grX;
  private int grY = -1;
  private boolean grZ = false;

  private void aFP()
  {
    if (!this.eSN)
    {
      this.eSL = new Timer();
      this.eSN = true;
      this.eSM = this.grP;
      dx localdx = new dx(this);
      this.eSL.schedule(localdx, 1000L, 1000L);
    }
  }

  private int aFQ()
  {
    switch (this.grM)
    {
    case 1:
    case 3:
    default:
      return 17;
    case 0:
      return 15;
    case 2:
    }
    return 9;
  }

  private void aFR()
  {
    Intent localIntent = new Intent(this, RegByMobileSetPwdUI.class);
    localIntent.putExtra("kintent_hint", getString(n.bys));
    startActivityForResult(localIntent, 0);
  }

  private void goBack()
  {
    if (this.grM == 3)
    {
      b.ie("L200_100");
      Intent localIntent = new Intent(this, MobileInputUI.class);
      localIntent.putExtra("mobile_input_purpose", 1);
      localIntent.addFlags(67108864);
      startActivity(localIntent);
      finish();
      return;
    }
    b.ie(this.eaA);
    if (this.grM == 0)
    {
      h.a(this, getString(n.brJ), "", getString(n.brK), getString(n.brL), new ee(this), new ef(this));
      return;
    }
    finish();
  }

  protected final void FR()
  {
    this.bTR = getIntent().getExtras().getString("bindmcontact_mobile");
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MobileVerifyUI", "init getintent mobile:" + this.bTR);
    this.grF = ((EditText)findViewById(i.anL));
    this.grI = ((Button)findViewById(i.anI));
    this.grQ = ((TextView)findViewById(i.aBT));
    this.grG = ((TextView)findViewById(i.anJ));
    this.grG.setText(this.bTR);
    this.bTR = bc.sL(this.bTR);
    Button localButton1 = this.grI;
    int i = n.bfe;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.grP);
    localButton1.setText(getString(i, arrayOfObject1));
    this.grH = ((Button)findViewById(i.anN));
    this.grW = ((TextView)findViewById(i.anM));
    this.fbp = getResources().getStringArray(com.tencent.mm.c.Zt);
    String str = getString(n.bvz);
    this.grW.setText(Html.fromHtml(str));
    this.grX = ((TextView)findViewById(i.anD));
    InputFilter[] arrayOfInputFilter;
    if ((this.grV) && (this.grM == 0))
    {
      this.grX.setVisibility(0);
      this.grX.setOnClickListener(new el(this));
      arrayOfInputFilter = new InputFilter[1];
      arrayOfInputFilter[0] = new ex(this);
      if (this.grO == 1)
        break label625;
      if (this.grO != 2)
        break label566;
      this.grQ.setVisibility(8);
      this.grI.setVisibility(0);
      Button localButton2 = this.grI;
      Resources localResources2 = getResources();
      int m = l.bcv;
      int n = this.grP;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(this.grP);
      localButton2.setText(localResources2.getQuantityString(m, n, arrayOfObject3));
      aFP();
    }
    while (true)
    {
      this.grL = false;
      this.grF.setFilters(arrayOfInputFilter);
      this.grF.addTextChangedListener(new com.tencent.mm.ui.widget.c(this.grF, null, 6));
      a(0, getString(n.bec), new ey(this));
      dg(false);
      this.grF.setTextSize(15.0F);
      this.grF.addTextChangedListener(new ez(this));
      this.grI.setOnClickListener(new fa(this));
      this.grQ.setOnClickListener(new fd(this));
      this.grI.setEnabled(false);
      a(new fg(this));
      this.grH.setVisibility(8);
      this.grF.setOnEditorActionListener(new fh(this));
      this.grF.setOnKeyListener(new eb(this));
      return;
      this.grX.setVisibility(4);
      break;
      label566: if (this.grO == 3)
      {
        this.grQ.setVisibility(0);
        this.grI.setVisibility(8);
        this.grQ.setText(getString(n.brN));
        this.grQ.setTextColor(getResources().getColor(f.aac));
      }
      else
      {
        label625: this.grQ.setVisibility(0);
        this.grI.setVisibility(8);
        TextView localTextView = this.grQ;
        Resources localResources1 = getResources();
        int j = l.bcv;
        int k = this.grP;
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Integer.valueOf(this.grP);
        localTextView.setText(localResources1.getQuantityString(j, k, arrayOfObject2));
        aFP();
      }
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.n.x paramx)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MobileVerifyUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (paramx.getType() == 255)
    {
      be.uA().b(255, this);
      if ((paramInt1 != 0) || (paramInt2 != 0))
        aFR();
    }
    do
    {
      int n;
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if ((paramx.getType() != 380) || (this.gqG == null))
                break;
              be.uA().b(380, this);
              this.gqG.a(this, paramInt1, paramInt2, paramString);
            }
            while ((paramInt1 != 0) || (paramInt2 != 0));
            if ((this.grM == 0) || (this.grM == 3))
            {
              be.uA().a(255, this);
              com.tencent.mm.modelsimple.ac localac = new com.tencent.mm.modelsimple.ac(1);
              be.uA().d(localac);
              getString(n.ber);
              this.cIr = h.a(this, getString(n.byr), true, new ek(this, paramx));
              return;
            }
          }
          while (this.grM != 2);
          aFR();
          return;
          if (paramx.getType() != 145)
            break;
          be.uA().b(145, this);
          n = ((ag)paramx).vI();
        }
        while ((n != 15) && (n != 9) && (n != 17));
        if ((paramInt1 != 0) || (paramInt2 != 0))
          break;
        if (n == 15)
        {
          if (this.grM == 2)
          {
            be.uA().a(380, this);
            this.gqG = new com.tencent.mm.ui.account.mobile.a(new em(this), ((ag)paramx).getUsername(), ((ag)paramx).zB(), this.bTR);
            this.gqG.l(this);
            return;
          }
          b.ie("R200_900_phone");
          Intent localIntent4 = new Intent();
          localIntent4.putExtra("regsetinfo_ticket", ((ag)paramx).zC());
          localIntent4.putExtra("regsetinfo_user", this.bTR);
          localIntent4.putExtra("regsetinfo_ismobile", 1);
          localIntent4.putExtra("regsetinfo_NextControl", ((ag)paramx).zE());
          localIntent4.setClass(this, RegSetInfoUI.class);
          aal().startActivity(localIntent4);
          return;
        }
        if (n == 17)
        {
          be.uA().a(380, this);
          this.gqG = new com.tencent.mm.ui.account.mobile.a(new en(this), ((ag)paramx).getUsername(), ((ag)paramx).zB(), this.bTR);
          this.gqG.l(this);
          return;
        }
      }
      while (n != 9);
      be.uA().a(380, this);
      this.gqG = new com.tencent.mm.ui.account.mobile.a(new eo(this), ((ag)paramx).getUsername(), ((ag)paramx).zB(), this.bTR);
      this.gqG.l(this);
      return;
      if ((n == 15) && (paramInt2 == -212))
      {
        if (this.grM == 0)
          b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R200_600," + be.ds("R200_600") + ",1");
        View localView = View.inflate(this, k.aWo, null);
        Button localButton1 = (Button)localView.findViewById(i.aBc);
        Button localButton2 = (Button)localView.findViewById(i.aBd);
        ((TextView)localView.findViewById(i.aBk)).setText(getString(n.beG));
        localButton1.setText(getString(n.beY));
        localButton1.setOnClickListener(new ep(this, paramx));
        localButton2.setText(getString(n.bfd));
        localButton2.setOnClickListener(new eq(this, paramx));
        String str3 = getString(n.bds);
        es locales = new es(this);
        com.tencent.mm.ui.base.x localx;
        if (((this instanceof Activity)) && (((Activity)this).isFinishing()))
          localx = null;
        while (true)
        {
          this.dUF = localx;
          return;
          com.tencent.mm.ui.base.aa localaa = new com.tencent.mm.ui.base.aa(this);
          localaa.dp(false);
          localaa.b(str3, locales);
          localaa.ai(localView);
          localx = localaa.aGI();
          localx.show();
          h.a(this, localx);
        }
      }
      if ((n == 17) && (paramInt2 == -30))
      {
        b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L200_900_phone," + be.ds("L200_900_phone") + ",1");
        String str2 = com.tencent.mm.d.a.be(paramString).desc;
        if (cj.hX(str2))
          str2 = getString(n.bqc);
        h.a(this, str2, "", getString(n.bqe), getString(n.bqd), new et(this, paramx), new eu(this));
        return;
      }
      if (paramInt2 == -51)
      {
        com.tencent.mm.d.a locala = com.tencent.mm.d.a.be(paramString);
        if (locala != null)
        {
          locala.a(this, null, null);
          return;
        }
        h.c(this, n.bfw, n.anM);
        return;
      }
      if (paramx.getType() != 132)
        break;
      be.uA().b(132, this);
    }
    while ((((ai)paramx).vI() != 2) || (paramInt1 != 0) || (paramInt2 != 0));
    be.uI();
    List localList = com.tencent.mm.pluginsdk.c.aR(this);
    int m;
    if ((localList != null) && (localList.size() != 0))
    {
      m = 1;
      if ((this.grR == null) || (!this.grR.contains("1")) || (m == 0))
        break label1285;
      if (this.grM != 1)
        break label1276;
      b.ie("R300_300_QQ");
    }
    while (true)
    {
      Intent localIntent2 = new Intent(this, FindMContactAddUI.class);
      localIntent2.addFlags(67108864);
      localIntent2.putExtra("regsetinfo_ticket", this.grN);
      localIntent2.putExtra("regsetinfo_NextStep", this.grR);
      localIntent2.putExtra("regsetinfo_NextStyle", this.grS);
      localIntent2.putExtra("login_type", 1);
      Intent localIntent3 = com.tencent.mm.plugin.a.a.cHS.w(this);
      localIntent3.addFlags(67108864);
      MMWizardActivity.b(this, localIntent2, localIntent3);
      finish();
      return;
      m = 0;
      break;
      label1276: b.ie("R300_300_phone");
    }
    label1285: Intent localIntent1 = com.tencent.mm.plugin.a.a.cHS.w(this);
    localIntent1.addFlags(67108864);
    startActivity(localIntent1);
    this.grY = 4;
    finish();
    return;
    int i;
    switch (paramInt2)
    {
    default:
      i = 0;
      label1391: if (i == 0)
        break;
    case -34:
    case -43:
    case -41:
    case -36:
    case -32:
    case -33:
    case -100:
    }
    for (int j = 1; (j == 0) && ((paramInt1 != 0) || (paramInt2 != 0)); j = 0)
    {
      int k = n.bfv;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      Toast.makeText(this, getString(k, arrayOfObject), 0).show();
      return;
      Toast.makeText(this, n.beS, 0).show();
      i = 1;
      break label1391;
      Toast.makeText(this, n.beP, 0).show();
      i = 1;
      break label1391;
      Toast.makeText(this, n.beR, 0).show();
      i = 1;
      break label1391;
      Toast.makeText(this, n.beU, 0).show();
      i = 1;
      break label1391;
      h.a(this, getString(n.bfy), "", new eg(this));
      i = 1;
      break label1391;
      h.a(this, n.bfw, n.anM, new eh(this));
      i = 1;
      break label1391;
      be.uH();
      Activity localActivity = aal();
      if (TextUtils.isEmpty(j.awH()));
      for (String str1 = com.tencent.mm.an.a.m(aal(), n.bqs); ; str1 = j.awH())
      {
        h.a(localActivity, str1, aal().getString(n.ber), new ei(this), new ej(this));
        i = 1;
        break;
      }
    }
  }

  protected final int getLayoutId()
  {
    return k.aXv;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str = getString(n.bfl);
    if (com.tencent.mm.protocal.a.fxu)
      str = getString(n.amt) + getString(n.bdl);
    vT(str);
    this.grM = getIntent().getIntExtra("login_type", 0);
    this.grK = new fi(this, new Handler());
    getContentResolver().registerContentObserver(Uri.parse("content://sms/"), true, this.grK);
    this.grN = getIntent().getStringExtra("regsetinfo_ticket");
    this.grP = getIntent().getIntExtra("mobileverify_countdownsec", 30);
    this.grO = getIntent().getIntExtra("mobileverify_countdownstyle", 0);
    this.grU = getIntent().getBooleanExtra("mobileverify_fb", false);
    this.grV = getIntent().getBooleanExtra("mobileverify_reg_qq", false);
    this.grR = getIntent().getStringExtra("regsetinfo_NextStep");
    this.grS = getIntent().getIntExtra("regsetinfo_NextStyle", 2);
    this.grT = true;
    this.eaA = b.FL();
    FR();
  }

  public void onDestroy()
  {
    if (this.grK != null)
    {
      getContentResolver().unregisterContentObserver(this.grK);
      this.grK = null;
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
    if (this.grY != -1);
    for (int i = this.grY; ; i = 2)
    {
      if (this.grM == 0)
        b.b(false, be.uv() + "," + getClass().getName() + ",R200_300," + be.ds("R200_300") + "," + i);
      do
      {
        return;
        if (this.grM == 3)
        {
          b.b(false, be.uv() + "," + getClass().getName() + ",L200_400," + be.ds("L200_400") + "," + i);
          return;
        }
      }
      while (this.grM != 2);
      b.b(false, be.uv() + "," + getClass().getName() + ",F200_300," + be.ds("F200_300") + "," + i);
      return;
    }
  }

  public void onResume()
  {
    super.onResume();
    if (this.grM == 0)
    {
      b.id("R200_300");
      b.b(true, be.uv() + "," + getClass().getName() + ",R200_300," + be.ds("R200_300") + ",1");
    }
    do
    {
      return;
      if (this.grM == 3)
      {
        b.id("L200_400");
        b.b(true, be.uv() + "," + getClass().getName() + ",L200_400," + be.ds("L200_400") + ",1");
        return;
      }
    }
    while (this.grM != 2);
    b.id("F200_300");
    b.b(true, be.uv() + "," + getClass().getName() + ",F200_300," + be.ds("F200_300") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.MobileVerifyUIOld
 * JD-Core Version:    0.6.2
 */