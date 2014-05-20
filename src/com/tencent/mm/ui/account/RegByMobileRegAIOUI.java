package com.tencent.mm.ui.account;

import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.Editable;
import android.text.Spannable;
import android.text.Spannable.Factory;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cm;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.bc;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.ch;
import java.util.HashMap;
import java.util.Map;

public class RegByMobileRegAIOUI extends MMActivity
  implements m
{
  private ImageView cMS;
  private String cjJ = null;
  private String cuq = null;
  private String eaA;
  private EditText gqA;
  private LinearLayout gqB;
  private TextView gqC;
  private EditText gqD;
  private String gqE = null;
  private Map gqH = new HashMap();
  private boolean gqI = true;
  private ch gqJ;
  private String gqK = null;
  private String gqL = null;
  private String gqM = "";
  private ResizeLayout gqZ;
  private int grM;
  private CheckBox gsA;
  private boolean gsB = false;
  private ImageView gsC;
  private LinearLayout gsD;
  private int gsE = 0;
  private boolean gsF;
  private boolean gsG;
  private ScrollView gsH;
  private com.tencent.mm.ui.account.mobile.h gsI;
  private boolean gsJ = false;
  private final int gsK = 128;
  private EditText gsn;
  private String gsu;
  private String gsv;
  private TextView gsw;
  private Button gsx;
  private EditText gsy;
  private Button gsz;

  private void Zz()
  {
    com.tencent.mm.plugin.a.b.ie(this.eaA);
    com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + getClass().getName() + ",RE200_100," + be.ds("RE200_100") + ",2");
    finish();
  }

  private void a(ky paramky)
  {
    switch (gv.gst[paramky.ordinal()])
    {
    default:
      return;
    case 1:
      com.tencent.mm.ui.base.h.c(this, n.bvE, n.bvG);
      return;
    case 2:
      com.tencent.mm.ui.base.h.c(this, n.bvF, n.bvG);
      return;
    case 3:
      com.tencent.mm.ui.base.h.c(this, n.bEe, n.bdI);
      return;
    case 4:
    }
    com.tencent.mm.ui.base.h.c(this, n.bEg, n.bdI);
  }

  private boolean a(Editable[] paramArrayOfEditable)
  {
    int i = paramArrayOfEditable.length;
    int j = 0;
    if (j < i)
    {
      Editable localEditable = paramArrayOfEditable[j];
      if ((localEditable != null) && (localEditable.toString().length() != 0));
    }
    for (int k = 0; ; k = 1)
    {
      if ((k != 0) && (this.gqI))
      {
        return true;
        j++;
        break;
      }
      return false;
    }
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
    this.gsw = ((TextView)findViewById(i.alm));
    this.gsy = ((EditText)findViewById(i.aGX));
    this.gsz = ((Button)findViewById(i.aGW));
    this.cMS = ((ImageView)findViewById(i.aJc));
    this.gsC = ((ImageView)findViewById(i.aJe));
    this.gsA = ((CheckBox)findViewById(i.aHa));
    this.gsn = ((EditText)findViewById(i.aHe));
    this.gsn.setInputType(129);
    this.gsH = ((ScrollView)findViewById(i.aIk));
    this.gqZ = ((ResizeLayout)findViewById(i.aHv));
    this.gsD = ((LinearLayout)findViewById(i.aGY));
    this.gsI = new com.tencent.mm.ui.account.mobile.h(this.gqD, this.gqA);
    this.gqZ.a(new gf(this));
    gr localgr = new gr(this);
    this.gsy.setOnFocusChangeListener(localgr);
    this.gqA.setOnFocusChangeListener(localgr);
    this.gsn.setOnFocusChangeListener(localgr);
    this.gqD.setOnFocusChangeListener(localgr);
    if (cm.vs().vu() > 0)
      this.gsG = true;
    if (cm.vs().vv() > 0)
      this.gsF = true;
    if (!this.gsF)
    {
      this.cMS.setVisibility(8);
      this.gsC.setVisibility(8);
    }
    if (!this.gsG)
    {
      this.gsn.setVisibility(8);
      this.gsA.setVisibility(8);
    }
    String str1 = getString(n.bvL);
    if (com.tencent.mm.protocal.a.fxu)
      str1 = str1 + getString(n.bdl);
    vT(str1);
    if (this.gsx != null)
      this.gsx.setOnClickListener(new gw(this));
    String str2 = getString(n.bps);
    if (cj.azT())
    {
      String str7 = getString(n.bpt);
      Spannable localSpannable2 = Spannable.Factory.getInstance().newSpannable(str2 + "  " + str7);
      localSpannable2.setSpan(new gx(this), str2.length() + "  ".length(), str2.length() + str7.length() + "  ".length(), 33);
      this.gsw.setText(localSpannable2);
      this.gsw.setMovementMethod(LinkMovementMethod.getInstance());
      this.gqA.addTextChangedListener(new com.tencent.mm.ui.widget.c(this.gqA, null, 20));
      this.gqA.addTextChangedListener(new ha(this));
      this.gqD.addTextChangedListener(new hb(this));
      this.gsn.addTextChangedListener(new hc(this));
      this.gsy.addTextChangedListener(new gg(this));
      this.gsz.setOnClickListener(new gh(this));
      this.gsz.setEnabled(false);
      if ((cj.hX(this.cuq)) && (cj.hX(this.cjJ)))
        break label1142;
      label762: if ((this.cuq != null) && (!this.cuq.equals("")))
        this.gqC.setText(this.cuq);
      if ((this.cjJ != null) && (!this.cjJ.equals("")))
        this.gqD.setText("+" + this.cjJ);
      if ((this.gqE == null) || (this.gqE.equals("")))
        break label1254;
      this.gqA.setText(this.gqE);
    }
    while (true)
    {
      this.gqB.setOnClickListener(new gj(this));
      a(new gk(this));
      this.cMS.setOnClickListener(new gl(this));
      be.ut().a(new gm(this));
      this.gsA.setOnCheckedChangeListener(new gn(this));
      return;
      String str3 = getString(n.bpv);
      String str4 = getString(n.bpu);
      String str5 = getString(n.bdp);
      Spannable localSpannable1 = Spannable.Factory.getInstance().newSpannable(str2 + "  " + str3 + str5 + str4);
      localSpannable1.setSpan(new gy(this), str2.length() + "  ".length(), str2.length() + "  ".length() + str3.length(), 33);
      localSpannable1.setSpan(new gz(this), str2.length() + str3.length() + "  ".length() + str5.length(), str2.length() + str3.length() + "  ".length() + str5.length() + str4.length(), 33);
      this.gsw.setText(localSpannable1);
      break;
      label1142: String str6 = ((TelephonyManager)getSystemService("phone")).getSimCountryIso();
      aa.d("MicroMsg.RegByMobileRegUI", "tm.getSimCountryIso()" + str6);
      if (cj.hX(str6))
      {
        aa.e("MicroMsg.RegByMobileRegUI", "getDefaultCountryInfo error");
        break label762;
      }
      com.tencent.mm.x.c localc = com.tencent.mm.x.b.c(this, str6, getString(n.aqK));
      if (localc == null)
      {
        aa.e("MicroMsg.RegByMobileRegUI", "getDefaultCountryInfo error");
        break label762;
      }
      this.cuq = localc.cuq;
      this.cjJ = localc.cup;
      break label762;
      label1254: be.ut().a(new gi(this));
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
    if (paramInt2 == -75);
    int i;
    do
    {
      com.tencent.mm.ui.base.h.c(this, n.bdo, n.buW);
      do
        return;
      while (paramx.getType() != 145);
      i = ((ag)paramx).vI();
      if (i == 12)
      {
        if ((paramInt2 == -41) || (paramInt2 == -59))
        {
          com.tencent.mm.d.a locala1 = com.tencent.mm.d.a.be(paramString);
          if (locala1 != null)
          {
            locala1.a(this, null, null);
            return;
          }
          com.tencent.mm.ui.base.h.c(this, n.bvA, n.bvB);
          return;
        }
        if ((paramInt2 == -36) || (paramInt2 == -35) || (paramInt2 == -3))
        {
          String str = ((ag)paramx).zD();
          if (!cj.hX(str))
            this.gqL = str.trim();
          this.gqL = bc.sL(this.gqL);
          this.gsv = (this.gqK + this.gqL);
          com.tencent.mm.plugin.a.b.id("RE200_100");
          com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",RE200_200," + be.ds("RE200_200") + ",1");
          com.tencent.mm.d.a locala2 = com.tencent.mm.d.a.be(paramString);
          if (locala2 != null)
          {
            locala2.a(this, new gp(this), new gs(this));
            return;
          }
          getString(n.ber);
          this.gqJ = com.tencent.mm.ui.base.h.a(this, getString(n.bvv), true, new gt(this));
          ag localag = new ag(this.gqK + this.gqL, 14, "", 0, "");
          be.uA().d(localag);
          com.tencent.mm.plugin.a.b.ie("RE200_250");
          this.gsJ = false;
          return;
        }
        if (paramInt2 == -34)
        {
          com.tencent.mm.ui.base.h.p(this, getString(n.beS), "");
          return;
        }
        int k = n.bfv;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramInt1);
        arrayOfObject2[1] = Integer.valueOf(paramInt2);
        Toast.makeText(this, getString(k, arrayOfObject2), 0).show();
      }
    }
    while (i != 14);
    if ((paramInt2 == 0) || (paramString == null))
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("bindmcontact_mobile", this.gqK + " " + this.gqA.getText().toString());
      localIntent.putExtra("bindmcontact_shortmobile", this.gqL);
      localIntent.putExtra("country_name", this.cuq);
      localIntent.putExtra("couttry_code", this.cjJ);
      localIntent.putExtra("login_type", this.grM);
      localIntent.putExtra("mobileverify_countdownsec", ((ag)paramx).zF());
      localIntent.putExtra("mobileverify_countdownstyle", ((ag)paramx).zG());
      localIntent.putExtra("mobileverify_fb", ((ag)paramx).zH());
      localIntent.putExtra("mobileverify_reg_qq", ((ag)paramx).zI());
      localIntent.putExtra("kintent_nickname", this.gsy.getText().toString());
      localIntent.putExtra("kintent_password", this.gsn.getText().toString());
      localIntent.putExtra("kintent_hasavatar", this.gsB);
      a(RegByMobileWaitingSMSUI.class, localIntent);
      com.tencent.mm.plugin.a.b.b(false, be.uv() + "," + getClass().getName() + "," + "RE200_100" + "," + be.ds("RE200_100") + ",2");
      return;
    }
    if (paramInt2 == -41)
    {
      com.tencent.mm.ui.base.h.c(this, n.bvA, n.bvB);
      return;
    }
    if (paramInt2 == -34)
    {
      com.tencent.mm.ui.base.h.p(this, getString(n.beS), "");
      return;
    }
    int j = n.bfv;
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(j, arrayOfObject1), 0).show();
  }

  protected final int getLayoutId()
  {
    return k.aYD;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt2)
    {
    default:
      Bitmap localBitmap = com.tencent.mm.plugin.a.a.cHT.a(this, paramInt1, paramInt2, paramIntent);
      if (localBitmap != null)
      {
        this.cMS.setImageBitmap(localBitmap);
        this.gsB = true;
        this.gsC.setVisibility(8);
      }
      break;
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
    this.eaA = com.tencent.mm.plugin.a.b.FL();
    com.tencent.mm.plugin.a.b.eT(cm.vs().getId());
    FR();
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
    com.tencent.mm.plugin.a.b.id("RE200_100");
  }

  public void onResume()
  {
    super.onResume();
    be.uA().a(380, this);
    be.uA().a(145, this);
    be.uA().a(132, this);
    com.tencent.mm.plugin.a.b.b(true, be.uv() + "," + getClass().getName() + ",RE200_100," + be.ds("RE200_100") + ",1");
    this.gqD.setSelection(this.gqD.getText().toString().length());
    UY();
    this.gsE = 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByMobileRegAIOUI
 * JD-Core Version:    0.6.2
 */