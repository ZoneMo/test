package com.tencent.mm.ui.account.mobile;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.cm;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.pluginsdk.ui.ae;
import com.tencent.mm.protocal.j;
import com.tencent.mm.sdk.platformtools.bc;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.account.RegByMobileRegAIOUI;
import com.tencent.mm.ui.account.RegByMobileSetPwdUI;
import com.tencent.mm.ui.applet.SecurityImage;
import java.io.File;

public class MobileLoginOrForceReg extends MMActivity
  implements m
{
  private String bTR;
  protected ProgressDialog cIr = null;
  private ImageView cMS;
  private TextView cPP;
  private String cgp;
  private String crH;
  private int cxC;
  private SecurityImage gof = null;
  private a gqG = null;
  private TextView grG;
  private Button gwn;
  private Button gwo;
  private LinearLayout gwp;
  private LinearLayout gwq;
  private int gwr;
  private String gws;
  private String gwt;
  private boolean gwu;
  private String gwv;
  private String gww;
  private Handler handler = new be(this);
  private String username;

  private void goBack()
  {
    b.ie("R200_100");
    if (cm.vs().vt() > 0);
    for (Intent localIntent = new Intent(this, RegByMobileRegAIOUI.class); ; localIntent = new Intent(this, MobileInputUI.class))
    {
      localIntent.putExtra("mobile_input_purpose", 2);
      localIntent.addFlags(67108864);
      startActivity(localIntent);
      b.jdMethod_if(com.tencent.mm.model.be.uv() + "," + getClass().getName() + ",R200_600," + com.tencent.mm.model.be.ds("R200_600") + ",2");
      finish();
      return;
    }
  }

  public final void FR()
  {
    this.gwn = ((Button)findViewById(com.tencent.mm.i.aqH));
    this.gwo = ((Button)findViewById(com.tencent.mm.i.atK));
    this.gwp = ((LinearLayout)findViewById(com.tencent.mm.i.avN));
    this.gwq = ((LinearLayout)findViewById(com.tencent.mm.i.aCR));
    this.cMS = ((ImageView)findViewById(com.tencent.mm.i.amX));
    this.cPP = ((TextView)findViewById(com.tencent.mm.i.aCQ));
    this.grG = ((TextView)findViewById(com.tencent.mm.i.anJ));
    new bc();
    String str1;
    if (this.bTR.startsWith("+"))
    {
      String str2 = bc.sK(this.bTR);
      if (!cj.hX(str2))
      {
        String str3 = this.bTR.substring(1 + str2.length());
        str1 = "+" + str2 + " " + bc.aO(str2, str3);
      }
    }
    while (true)
    {
      this.grG.setText(str1);
      if ((!cj.hX(this.crH)) || (!cj.hX(this.gwt)))
        break;
      this.gwq.setVisibility(0);
      this.gwp.setVisibility(8);
      this.gwn.setOnClickListener(new bn(this));
      this.gwo.setOnClickListener(new bp(this));
      mn(n.brF);
      a(new bq(this));
      return;
      str1 = this.bTR;
      continue;
      str1 = "+86 " + bc.aO("86", this.bTR);
    }
    this.gwq.setVisibility(8);
    this.gwp.setVisibility(0);
    if (cj.hX(this.crH))
      this.cPP.setVisibility(8);
    while (true)
    {
      Bitmap localBitmap = com.tencent.mm.pluginsdk.ui.c.aqP().nx();
      if (localBitmap != null)
        this.cMS.setImageBitmap(localBitmap);
      if (cj.hX(this.gwt))
        break;
      new bm(this, this.gwt).start();
      break;
      this.cPP.setText(this.crH);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (paramx.getType() == 255)
      if ((paramInt1 != 0) || (paramInt2 != 0))
      {
        Intent localIntent2 = new Intent(this, RegByMobileSetPwdUI.class);
        localIntent2.putExtra("kintent_hint", getString(n.bys));
        startActivityForResult(localIntent2, 0);
      }
    do
    {
      return;
      if ((paramx.getType() != 380) || (this.gqG == null))
        break;
      this.gqG.a(this, paramInt1, paramInt2, paramString);
    }
    while ((paramInt1 != 0) || (paramInt2 != 0));
    com.tencent.mm.modelsimple.ac localac = new com.tencent.mm.modelsimple.ac(1);
    com.tencent.mm.model.be.uA().d(localac);
    getString(n.ber);
    this.cIr = com.tencent.mm.ui.base.h.a(this, getString(n.byr), true, new br(this, localac));
    return;
    if ((paramx.getType() == 126) && (paramInt1 == 0) && (paramInt2 == 0))
    {
      String str2 = this.bTR;
      Boolean localBoolean = Boolean.valueOf(this.gwu);
      String str3 = this.gww;
      String str4 = this.gwv;
      com.tencent.mm.model.be.uI();
      com.tencent.mm.model.be.P(true);
      if (localBoolean.booleanValue())
      {
        String str5 = com.tencent.mm.storage.h.ggB + "temp.avatar";
        String str6 = com.tencent.mm.storage.h.ggB + "temp.avatar.hd";
        new File(str5).renameTo(new File(str6));
        com.tencent.mm.a.c.deleteFile(str5);
        com.tencent.mm.sdk.platformtools.h.a(str6, 96, 96, Bitmap.CompressFormat.JPEG, 90, str5, true);
        new com.tencent.mm.pluginsdk.model.k(this, com.tencent.mm.storage.h.ggB + "temp.avatar").a(new bs(this, paramx, str2), new bt(this, paramx, str2));
      }
      while (paramInt2 == -6)
        if (this.gof == null)
        {
          this.gof = com.tencent.mm.ui.applet.i.a(this, n.bvU, false, ((ad)paramx).zR(), ((ad)paramx).zS(), "", new bu(this, str3, str4, paramx, localBoolean), null, new bf(this), new bg(this, str3, str4, paramx, localBoolean));
          return;
          this.cgp = ((ad)paramx).Cx();
          bd.cik.s("login_user_name", str2);
          Intent localIntent1 = com.tencent.mm.plugin.a.a.cHS.w(this);
          localIntent1.addFlags(67108864);
          localIntent1.putExtra("LauncherUI.enter_from_reg", true);
          startActivity(localIntent1);
          b.jdMethod_if(com.tencent.mm.model.be.uv() + "," + getClass().getName() + ",R200_600," + com.tencent.mm.model.be.ds("R200_600") + ",4");
          finish();
        }
        else
        {
          this.gof.b(false, ((ad)paramx).zR(), ((ad)paramx).zS(), "");
          return;
        }
    }
    int i = 0;
    switch (paramInt2)
    {
    default:
      label680: if (i == 0)
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
      Activity localActivity2 = aal();
      int k = n.bfv;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      Toast.makeText(localActivity2, getString(k, arrayOfObject), 0).show();
      return;
      Toast.makeText(this, n.beS, 0).show();
      i = 1;
      break label680;
      Toast.makeText(this, n.beP, 0).show();
      i = 1;
      break label680;
      Toast.makeText(this, n.beR, 0).show();
      i = 1;
      break label680;
      Toast.makeText(this, n.beU, 0).show();
      i = 1;
      break label680;
      com.tencent.mm.ui.base.h.a(this, getString(n.bfy), "", new bh(this));
      i = 1;
      break label680;
      com.tencent.mm.ui.base.h.a(this, n.bfw, n.anM, new bi(this));
      i = 1;
      break label680;
      com.tencent.mm.model.be.uH();
      Activity localActivity1 = aal();
      if (TextUtils.isEmpty(j.awH()));
      for (String str1 = com.tencent.mm.an.a.m(aal(), n.bqs); ; str1 = j.awH())
      {
        com.tencent.mm.ui.base.h.a(localActivity1, str1, aal().getString(n.ber), new bj(this), new bk(this));
        i = 1;
        break;
      }
    }
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aXu;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.tencent.mm.model.be.uA().a(380, this);
    com.tencent.mm.model.be.uA().a(126, this);
    com.tencent.mm.model.be.uA().a(255, this);
    this.cgp = getIntent().getStringExtra("ticket");
    this.bTR = getIntent().getStringExtra("moble");
    this.gwr = getIntent().getIntExtra("next_controll", 0);
    this.username = getIntent().getStringExtra("username");
    this.gws = getIntent().getStringExtra("password");
    this.crH = getIntent().getStringExtra("nickname");
    this.gwt = getIntent().getStringExtra("avatar_url");
    this.gwu = getIntent().getBooleanExtra("kintent_hasavatar", false);
    this.gwv = getIntent().getStringExtra("kintent_nickname");
    this.gww = getIntent().getStringExtra("kintent_password");
    if ((this.gww != null) && (this.gww.length() >= 4));
    for (this.cxC = 1; ; this.cxC = 4)
    {
      FR();
      return;
    }
  }

  public void onDestroy()
  {
    com.tencent.mm.model.be.uA().b(380, this);
    com.tencent.mm.model.be.uA().b(126, this);
    com.tencent.mm.model.be.uA().b(255, this);
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
  }

  public void onResume()
  {
    super.onResume();
    b.jdMethod_if(com.tencent.mm.model.be.uv() + "," + getClass().getName() + ",R200_600," + com.tencent.mm.model.be.ds("R200_600") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.MobileLoginOrForceReg
 * JD-Core Version:    0.6.2
 */