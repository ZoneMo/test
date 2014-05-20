package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.k;
import com.tencent.mm.m.q;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.ag;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.bc;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.v;

public class LoginHistoryUI extends MMActivity
  implements m
{
  private String bQI = "";
  private ProgressDialog cIr = null;
  private SharedPreferences chz;
  private String eax;
  private SecurityImage gof = null;
  private TextView gqQ;
  private EditText gqR;
  private View gqS;
  private Button gqT;
  private Button gqU;
  private db gqV = new db();
  private String gqW;
  private ImageView gqX;
  private MMKeyboardUperView gqY;
  private ResizeLayout gqZ;
  private String gra;
  private v grb = new bp(this);

  private void f(com.tencent.mm.modelsimple.i parami)
  {
    Intent localIntent = com.tencent.mm.plugin.a.a.cHS.w(this);
    localIntent.addFlags(67108864);
    if (parami != null)
    {
      localIntent.putExtra("kstyle_show_bind_mobile_afterauth", parami.Ca());
      localIntent.putExtra("kstyle_bind_recommend_show", parami.Cc());
      localIntent.putExtra("kstyle_bind_wording", parami.Cb());
    }
    startActivity(localIntent);
    finish();
  }

  protected final void FR()
  {
    this.gra = bd.cik.t("login_user_name", "");
    String str1 = bd.cik.t("last_avatar_path", "");
    int i = cj.sV(bd.cik.t("last_bind_info", "0"));
    String str2 = getIntent().getStringExtra("email_address");
    if ((!cj.hX(str2)) && (!str2.equalsIgnoreCase(this.gra)))
    {
      str1 = "";
      this.gra = str2;
    }
    String str3 = str1;
    this.gqX = ((ImageView)findViewById(com.tencent.mm.i.axM));
    if (!cj.hX(str3))
    {
      Bitmap localBitmap = q.z(str3, this.gra);
      if (localBitmap != null)
        this.gqX.setImageBitmap(Bitmap.createBitmap(localBitmap, 5, 5, -10 + localBitmap.getWidth(), -10 + localBitmap.getHeight(), null, false));
    }
    if ((be.uD()) && (!this.gra.equals("")))
    {
      f(null);
      return;
    }
    this.gqY = ((MMKeyboardUperView)findViewById(com.tencent.mm.i.aIk));
    this.gqQ = ((TextView)findViewById(com.tencent.mm.i.ayB));
    this.gqR = ((EditText)findViewById(com.tencent.mm.i.ayH));
    this.gqS = findViewById(com.tencent.mm.i.ayF);
    this.gqS.setVisibility(0);
    this.gqT = ((Button)findViewById(com.tencent.mm.i.ayE));
    this.gqU = ((Button)findViewById(com.tencent.mm.i.ayD));
    this.gqZ = ((ResizeLayout)findViewById(com.tencent.mm.i.aHv));
    if (cj.ta(this.gra).booleanValue())
    {
      new bc();
      String str4 = "86";
      String str5 = this.gra;
      if (this.gra.startsWith("+"))
      {
        str5 = str5.replace("+", "");
        str4 = bc.sK(this.gra);
        if (str4 != null)
          str5 = str5.substring(str4.length());
      }
      String str6 = bc.aO(str4, str5);
      this.gqQ.setText(str6);
      label379: this.gqY.ag(findViewById(com.tencent.mm.i.atF));
      this.gqZ.a(new bn(this));
      this.gqR.setTypeface(Typeface.DEFAULT);
      this.gqR.setTransformationMethod(new PasswordTransformationMethod());
      this.gqY.setOnTouchListener(new bz(this));
      this.gqR.setOnEditorActionListener(new cb(this));
      this.gqR.setOnKeyListener(new cc(this));
      this.gqR.addTextChangedListener(new cd(this));
      a(0, getString(n.bpS), new ce(this));
      this.gqU.setOnClickListener(new cf(this));
      if (this.gqR.getText().toString().length() <= 0)
        break label697;
      this.gqU.setEnabled(true);
    }
    while (true)
    {
      this.gqS.setOnClickListener(new cg(this, i));
      this.gqT.setOnClickListener(new ch(this));
      this.eax = getIntent().getStringExtra("auth_ticket");
      if (!cj.hX(this.eax))
      {
        this.gqQ.setText(cj.hW(db.aFN()));
        this.gqR.setText(cj.hW(db.aFO()));
        new Handler().postDelayed(new bo(this), 500L);
      }
      if (!com.tencent.mm.sdk.platformtools.j.gcq)
        break;
      com.tencent.mm.plugin.a.a.cHT.f(this);
      return;
      this.gqQ.setText(this.gra);
      break label379;
      label697: this.gqU.setEnabled(false);
    }
  }

  public final void SM()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)getSystemService("input_method");
    if (localInputMethodManager == null);
    IBinder localIBinder;
    do
    {
      View localView;
      do
      {
        return;
        localView = getCurrentFocus();
      }
      while (localView == null);
      localIBinder = localView.getWindowToken();
    }
    while (localIBinder == null);
    localInputMethodManager.hideSoftInputFromWindow(localIBinder, 0);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.LoginHistoryUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    aa.d("MicroMsg.LoginHistoryUI", "Scene Type " + paramx.getType());
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    this.bQI = ((com.tencent.mm.modelsimple.i)paramx).BY();
    aa.e("MicroMsg.LoginHistoryUI", "url " + this.bQI);
    int i;
    if (paramx.getType() == 380)
    {
      be.uA().b(380, this);
      this.gqV.grs = ((com.tencent.mm.modelsimple.i)paramx).BW();
      this.gqV.grp = ((com.tencent.mm.modelsimple.i)paramx).zS();
      this.gqV.grr = ((com.tencent.mm.modelsimple.i)paramx).zR();
      this.gqV.grq = ((com.tencent.mm.modelsimple.i)paramx).BX();
      if (paramInt2 == -205)
      {
        this.eax = ((com.tencent.mm.modelsimple.i)paramx).xn();
        this.gqW = ((com.tencent.mm.modelsimple.i)paramx).BZ();
      }
      if ((paramInt1 == 4) && ((paramInt2 == -16) || (paramInt2 == -17)))
      {
        i = 1;
        be.uA().d(new com.tencent.mm.model.cb(new br(this)));
      }
    }
    while (true)
    {
      if ((i != 0) || ((paramInt1 == 0) && (paramInt2 == 0)))
      {
        be.uI();
        z.zu();
        String str1 = bd.cik.t("login_user_name", "");
        if ((!str1.equals("")) && (!str1.equals(this.gqV.cxs)))
        {
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = str1;
          arrayOfObject1[1] = this.gqV.cxs;
          aa.e("MicroMsg.LoginHistoryUI", "onSceneEnd, start launcher without show addrbook comfirm. lastAcc:%s, curAcc:%d", arrayOfObject1);
          ag.hP(this.gqV.cxs);
          f((com.tencent.mm.modelsimple.i)paramx);
        }
      }
      while (true)
      {
        return;
        ag.a(this, new bs(this, (com.tencent.mm.modelsimple.i)paramx));
        f.T(this);
        return;
        if (paramInt2 == -106)
        {
          ag.v(this, paramString);
          return;
        }
        if (paramInt2 == -30)
        {
          if (com.tencent.mm.protocal.a.fxu)
          {
            Intent localIntent2 = new Intent();
            localIntent2.putExtra("rawUrl", this.bQI);
            localIntent2.putExtra("showShare", false);
            localIntent2.putExtra("show_bottom", false);
            localIntent2.putExtra("needRedirect", false);
            localIntent2.putExtra("neverGetA8Key", true);
            localIntent2.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
            localIntent2.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
            com.tencent.mm.plugin.a.a.cHS.h(localIntent2, this);
            return;
          }
          h.a(this, getString(n.bqf), "", new bt(this, paramx), new bu(this));
          return;
        }
        int j;
        if (com.tencent.mm.plugin.a.a.cHT.b(this, paramInt1, paramInt2))
          j = 1;
        while (j == 0)
        {
          int k = n.bmy;
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(paramInt1);
          arrayOfObject2[1] = Integer.valueOf(paramInt2);
          Toast.makeText(this, getString(k, arrayOfObject2), 0).show();
          return;
          if (paramInt1 == 4);
          switch (paramInt2)
          {
          default:
            j = 0;
            break;
          case -1:
            if (be.uA().wS() == 6)
            {
              h.c(this, n.bso, n.bsn);
              j = 1;
            }
            break;
          case -4:
          case -3:
            h.c(this, n.bjZ, n.bpV);
            j = 1;
            break;
          case -9:
            h.c(this, n.bpU, n.bpV);
            j = 1;
            break;
          case -72:
            h.c(this, n.bvM, n.ber);
            j = 1;
            break;
          case -75:
            ag.af(this);
            j = 1;
            break;
          case -6:
            be.uA().a(380, this);
            if (this.gof == null)
              this.gof = com.tencent.mm.ui.applet.i.a(this, n.bvU, this.gqV.grs, this.gqV.grr, this.gqV.grp, this.gqV.grq, new bv(this), null, new bx(this), this.gqV);
            while (true)
            {
              j = 1;
              break;
              aa.d("MicroMsg.LoginHistoryUI", "imgSid:" + this.gqV.grp + " img len" + this.gqV.grr.length + " " + com.tencent.mm.compatible.g.j.qg());
              this.gof.b(this.gqV.grs, this.gqV.grr, this.gqV.grp, this.gqV.grq);
            }
          case -100:
            be.uH();
            if (TextUtils.isEmpty(com.tencent.mm.protocal.j.awH()));
            for (String str2 = com.tencent.mm.an.a.m(this, n.bqs); ; str2 = com.tencent.mm.protocal.j.awH())
            {
              h.a(this, str2, getString(n.ber), new by(this), new ca(this));
              j = 1;
              break;
            }
          case -205:
            db.a(this.gqV);
            Intent localIntent1 = new Intent();
            localIntent1.putExtra("auth_ticket", this.eax);
            localIntent1.putExtra("binded_mobile", this.gqW);
            localIntent1.putExtra("from_source", 2);
            com.tencent.mm.plugin.a.a.cHS.f(this, localIntent1);
            j = 1;
            break;
          case -140:
            if (!cj.hX(this.bQI))
              ag.e(this, paramString, this.bQI);
            j = 1;
          }
        }
      }
      i = 0;
    }
  }

  protected final int getLayoutId()
  {
    return k.aVs;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.tencent.mm.plugin.a.a.cHT.nJ();
    this.chz = al.getContext().getSharedPreferences(al.azs(), 0);
    if (this.chz.getInt("is_user_52_welcome_key", 0) == 2)
      be.uA().d(new fj());
    FR();
  }

  public void onDestroy()
  {
    be.uA().b(380, this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 0))
    {
      Intent localIntent = com.tencent.mm.plugin.a.a.cHS.w(this);
      localIntent.addFlags(67108864);
      localIntent.putExtra("can_finish", true);
      startActivity(localIntent);
      finish();
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
    be.uw();
    String str = bd.cik.t("login_user_name", "");
    if ((be.uD()) && (!str.equals("")))
      f(null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.LoginHistoryUI
 * JD-Core Version:    0.6.2
 */