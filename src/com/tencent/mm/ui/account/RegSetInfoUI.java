package com.tencent.mm.ui.account;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.a.c;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.account.mobile.MobileInputUI;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.bindmobile.FindMContactIntroUI;
import java.io.File;
import java.util.LinkedList;

public class RegSetInfoUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private Button dGA;
  private int eLl = 0;
  private String fcj;
  private SecurityImage gof = null;
  private String grN;
  private boolean gsB = false;
  private EditText gsR;
  private EditText gtB;
  private String gtC;
  private String gtD;
  private int gtE;
  private String gtF;
  private TextView gtG;
  private View gtH;
  private boolean gtI = false;
  private ImageView gtJ;
  private int gtK = 3;
  private LinkedList gtL = new LinkedList();
  private ImageView gtM;
  private ImageView gtN;
  private ProgressBar gtO;
  private String gtP = "";
  private ImageView gtQ;
  private View gtR;
  private TextView gtS;
  private String gtT = null;
  private boolean gtU = false;
  private PopupWindow gtV;
  private View gtW;
  private boolean gtX = false;
  private ay gtY = new ay(Looper.myLooper(), new jg(this), true);

  private void Zz()
  {
    SM();
    if (aGf())
    {
      com.tencent.mm.ui.base.h.a(this, getString(n.bvX), "", new ke(this), new kg(this));
      return;
    }
    if (aGg())
    {
      com.tencent.mm.ui.base.h.a(this, getString(n.bvW), "", new kh(this), new ki(this));
      return;
    }
    if (this.eLl == 0);
    for (int i = 1; i != 0; i = 0)
    {
      com.tencent.mm.ui.base.h.a(this, getString(n.bvW), "", new kj(this), new kk(this));
      return;
    }
    if (aGh())
    {
      com.tencent.mm.ui.base.h.a(this, getString(n.bvW), "", new kl(this), new km(this));
      return;
    }
    b.ie("R200_100");
    Intent localIntent = new Intent(this, MobileInputUI.class);
    localIntent.putExtra("mobile_input_purpose", 2);
    localIntent.addFlags(67108864);
    startActivity(localIntent);
    finish();
  }

  private boolean aGb()
  {
    return (this.gtN.getVisibility() == 8) || (this.gtU);
  }

  private void aGc()
  {
    String str = this.gsR.getText().toString().trim();
    Button localButton = this.dGA;
    if (!cj.hX(str));
    for (boolean bool = true; ; bool = false)
    {
      localButton.setEnabled(bool);
      return;
    }
  }

  private boolean aGd()
  {
    return (0x1 & this.gtK) > 0;
  }

  private boolean aGe()
  {
    return (0x2 & this.gtK) > 0;
  }

  private boolean aGf()
  {
    return this.eLl == 1;
  }

  private boolean aGg()
  {
    return this.eLl == 2;
  }

  private boolean aGh()
  {
    return this.eLl == 3;
  }

  private int aGi()
  {
    int i = 2;
    if (aGf())
      i = 4;
    while ((aGg()) || (!aGh()))
      return i;
    return 6;
  }

  private String aGj()
  {
    if (aGf())
      return this.gtC;
    if (aGh())
      return this.gtD;
    return this.gtF;
  }

  private boolean i(int paramInt1, int paramInt2, String paramString)
  {
    if (com.tencent.mm.plugin.a.a.cHT.b(aal(), paramInt1, paramInt2))
      return true;
    switch (paramInt2)
    {
    default:
      return false;
    case -10:
    case -7:
      com.tencent.mm.ui.base.h.c(this, n.buV, n.buW);
      return true;
    case -75:
      com.tencent.mm.ui.base.h.c(this, n.bdo, n.buW);
      return true;
    case -100:
      be.uH();
      Activity localActivity = aal();
      if (TextUtils.isEmpty(com.tencent.mm.protocal.j.awH()));
      for (String str = com.tencent.mm.an.a.m(aal(), n.bqs); ; str = com.tencent.mm.protocal.j.awH())
      {
        com.tencent.mm.ui.base.h.a(localActivity, str, aal().getString(n.ber), new kc(this), new kd(this));
        return true;
      }
    case -48:
    }
    com.tencent.mm.d.a locala = com.tencent.mm.d.a.be(paramString);
    if (locala != null)
      locala.a(this, null, null);
    while (true)
    {
      return true;
      com.tencent.mm.ui.base.h.p(this, getString(n.bwc), "");
    }
  }

  private void q(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (cj.hX(this.gtB.getText().toString().trim()))
      paramBoolean1 = false;
    ImageView localImageView1 = this.gtN;
    int i;
    ImageView localImageView2;
    if (paramBoolean2)
    {
      i = com.tencent.mm.h.aiz;
      localImageView1.setImageResource(i);
      localImageView2 = this.gtN;
      if (!paramBoolean1)
        break label93;
    }
    label93: for (int j = 0; ; j = 8)
    {
      localImageView2.setVisibility(j);
      boolean bool = false;
      if (paramBoolean1)
      {
        bool = false;
        if (paramBoolean2)
          bool = true;
      }
      this.gtU = bool;
      return;
      i = com.tencent.mm.h.aiw;
      break;
    }
  }

  protected final void FR()
  {
    this.gtW = findViewById(com.tencent.mm.i.aEh);
    this.gtR = findViewById(com.tencent.mm.i.aJd);
    this.gtJ = ((ImageView)findViewById(com.tencent.mm.i.aJc));
    this.gsR = ((EditText)findViewById(com.tencent.mm.i.aGX));
    this.gtS = ((TextView)findViewById(com.tencent.mm.i.aJf));
    this.gtB = ((EditText)findViewById(com.tencent.mm.i.aHb));
    this.gtG = ((TextView)findViewById(com.tencent.mm.i.amc));
    this.gtH = findViewById(com.tencent.mm.i.aHn);
    this.gtM = ((ImageView)findViewById(com.tencent.mm.i.aCP));
    this.gtN = ((ImageView)findViewById(com.tencent.mm.i.aRf));
    this.gtO = ((ProgressBar)findViewById(com.tencent.mm.i.aEB));
    this.gtQ = ((ImageView)findViewById(com.tencent.mm.i.aJe));
    this.dGA = ((Button)findViewById(com.tencent.mm.i.aCN));
    this.gtM.setVisibility(8);
    this.gtN.setVisibility(8);
    this.gtO.setVisibility(8);
    this.gtQ.setVisibility(8);
    this.gsB = false;
    this.gtU = false;
    View localView1 = this.gtR;
    int i;
    int j;
    label253: int k;
    if (aGd())
    {
      i = 0;
      localView1.setVisibility(i);
      View localView2 = this.gtH;
      if (!aGe())
        break label513;
      j = 0;
      localView2.setVisibility(j);
      TextView localTextView = this.gtG;
      boolean bool = aGe();
      k = 0;
      if (!bool)
        break label520;
      label279: localTextView.setVisibility(k);
      if ((!aGd()) || (!aGe()))
        break label527;
      this.gtS.setText(getString(n.bwb));
    }
    while (true)
    {
      be.ut().a(new kf(this));
      this.gsR.addTextChangedListener(new kn(this));
      this.dGA.setOnClickListener(new ko(this));
      this.gtB.setOnFocusChangeListener(new kp(this));
      this.gtB.addTextChangedListener(new kq(this));
      a(new ks(this));
      this.gsR.setOnEditorActionListener(new kt(this));
      this.gsR.setOnKeyListener(new jh(this));
      this.gtB.setOnEditorActionListener(new ji(this));
      this.gtB.setOnKeyListener(new jj(this));
      this.gtJ.setOnClickListener(new jk(this));
      File localFile = new File(com.tencent.mm.storage.h.ggB);
      if (!localFile.exists())
        localFile.mkdir();
      aGc();
      return;
      i = 8;
      break;
      label513: j = 8;
      break label253;
      label520: k = 8;
      break label279;
      label527: if ((aGd()) && (!aGe()))
        this.gtS.setText(getString(n.bvZ));
      else if ((!aGd()) && (aGe()))
        this.gtS.setText(getString(n.bwa));
      else
        this.gtS.setText(getString(n.bvY));
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MiroMsg.RegSetInfoUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    String str1;
    String str2;
    int i1;
    if (paramx.getType() == 126)
    {
      be.uA().b(126, this);
      if (this.cIr != null)
      {
        this.cIr.dismiss();
        this.cIr = null;
      }
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        this.gtT = null;
        str1 = aGj();
        str2 = ((ad)paramx).Cy();
        i1 = ((ad)paramx).Cz();
        be.uI();
        be.P(true);
        if (this.gsB)
        {
          String str3 = com.tencent.mm.storage.h.ggB + "temp.avatar";
          String str4 = com.tencent.mm.storage.h.ggB + "temp.avatar.hd";
          new File(str3).renameTo(new File(str4));
          c.deleteFile(str3);
          com.tencent.mm.sdk.platformtools.h.a(str4, 96, 96, Bitmap.CompressFormat.JPEG, 90, str3, true);
          new com.tencent.mm.pluginsdk.model.k(this, com.tencent.mm.storage.h.ggB + "temp.avatar").a(new jo(this, paramx, str1, str2, i1), new jp(this, paramx, str1, str2, i1));
        }
      }
      else
      {
        if (paramInt2 != -6)
          break label640;
        if (this.gof != null)
          break label613;
        this.gof = com.tencent.mm.ui.applet.i.a(aal(), n.bvU, false, ((ad)paramx).zR(), ((ad)paramx).zS(), "", new jq(this, paramx), null, new jt(this), new ju(this, paramx));
      }
    }
    label613: 
    do
    {
      do
      {
        do
        {
          return;
          this.grN = ((ad)paramx).Cx();
          bd.cik.s("login_user_name", str1);
          if ((str2 != null) && (str2.contains("0")))
          {
            b.ie("R300_100_phone");
            Intent localIntent2 = new Intent(this, FindMContactIntroUI.class);
            localIntent2.addFlags(67108864);
            localIntent2.putExtra("regsetinfo_ticket", this.grN);
            localIntent2.putExtra("regsetinfo_NextStep", str2);
            localIntent2.putExtra("regsetinfo_NextStyle", i1);
            Intent localIntent3 = com.tencent.mm.plugin.a.a.cHS.w(this);
            localIntent3.addFlags(67108864);
            localIntent3.putExtra("LauncherUI.enter_from_reg", true);
            MMWizardActivity.b(this, localIntent2, localIntent3);
            finish();
            break;
          }
          Intent localIntent1 = com.tencent.mm.plugin.a.a.cHS.w(this);
          localIntent1.addFlags(67108864);
          localIntent1.putExtra("LauncherUI.enter_from_reg", true);
          startActivity(localIntent1);
          b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R200_900_phone," + be.ds("R200_900_phone") + ",4");
          finish();
          break;
          this.gof.b(false, ((ad)paramx).zR(), ((ad)paramx).zS(), "");
          return;
        }
        while (i(paramInt1, paramInt2, paramString));
        if (paramx.getType() == 429)
        {
          be.uA().b(429, this);
          if (this.cIr != null)
          {
            this.cIr.dismiss();
            this.cIr = null;
          }
          this.gtO.setVisibility(8);
          if ((paramInt1 == 0) && (paramInt2 == 0))
          {
            this.gtT = null;
            int k = ((com.tencent.mm.modelfriend.an)paramx).zQ();
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = Integer.valueOf(k);
            aa.e("MiroMsg.RegSetInfoUI", "UsernameRet %d", arrayOfObject3);
            if ((k == -14) || (k == -10) || (k == -7))
            {
              LinkedList localLinkedList = ((com.tencent.mm.modelfriend.an)paramx).zP();
              com.tencent.mm.d.a locala = com.tencent.mm.d.a.be(paramString);
              if (locala != null)
                this.gtG.setText(locala.desc);
              this.gtL.clear();
              if ((localLinkedList != null) && (localLinkedList.size() > 0))
              {
                if (localLinkedList.size() > 3);
                String[] arrayOfString;
                for (int m = 3; ; m = localLinkedList.size())
                {
                  arrayOfString = new String[m];
                  for (int n = 0; n < m; n++)
                  {
                    arrayOfString[n] = ((rw)localLinkedList.get(n)).getString();
                    this.gtL.add(arrayOfString[n]);
                  }
                }
                if (this.gtX)
                {
                  if (this.gtV != null)
                  {
                    this.gtV.dismiss();
                    this.gtV = null;
                  }
                  this.gtV = fl.a(this, this.gtW, arrayOfString, new ka(this, arrayOfString));
                }
              }
              q(true, true);
              return;
            }
            if (cj.hX(this.gtB.getText().toString().trim()))
            {
              q(false, false);
              return;
            }
            q(true, false);
            this.gtG.setText(getString(n.bwd));
            if (this.gtV != null)
            {
              this.gtV.dismiss();
              this.gtV = null;
            }
            this.gtB.postDelayed(new jv(this), 50L);
            return;
          }
          if (paramInt2 == -6)
          {
            if (this.gof == null)
            {
              this.gof = com.tencent.mm.ui.applet.i.a(aal(), n.bvU, false, ((com.tencent.mm.modelfriend.an)paramx).zR(), ((com.tencent.mm.modelfriend.an)paramx).zS(), "", new jw(this, paramx), null, new jy(this), new jz(this, paramx));
              return;
            }
            this.gof.b(false, ((com.tencent.mm.modelfriend.an)paramx).zR(), ((com.tencent.mm.modelfriend.an)paramx).zS(), "");
            return;
          }
          q(true, true);
        }
      }
      while (i(paramInt1, paramInt2, paramString));
      if (paramInt1 == 8)
      {
        int j = n.bmE;
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramInt1);
        arrayOfObject2[1] = Integer.valueOf(paramInt2);
        this.gtT = getString(j, arrayOfObject2);
        Toast.makeText(this, this.gtT, 0).show();
        return;
      }
    }
    while ((paramInt1 == 0) && (paramInt2 == 0));
    label640: int i = n.bnj;
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(i, arrayOfObject1), 0).show();
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aYH;
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.d("MiroMsg.RegSetInfoUI", "onAcvityResult requestCode:%d, resultCode:%d", arrayOfObject);
    Bitmap localBitmap = com.tencent.mm.plugin.a.a.cHT.a(this, paramInt1, paramInt2, paramIntent);
    if (localBitmap != null)
    {
      this.gtJ.setImageBitmap(localBitmap);
      this.gsB = true;
      this.gtQ.setVisibility(0);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str = getString(n.bwe);
    if (com.tencent.mm.protocal.a.fxu)
      str = getString(n.amt) + getString(n.bdl);
    vT(str);
    com.tencent.mm.plugin.a.a.cHT.nJ();
    this.gtC = getIntent().getStringExtra("regsetinfo_user");
    this.gtD = getIntent().getStringExtra("regsetinfo_bind_email");
    this.grN = getIntent().getStringExtra("regsetinfo_ticket");
    this.fcj = getIntent().getStringExtra("regsetinfo_pwd");
    this.gtF = getIntent().getStringExtra("regsetinfo_binduin");
    if (!cj.hX(this.gtF))
      this.gtE = com.tencent.mm.a.j.aw(this.gtF);
    this.eLl = getIntent().getExtras().getInt("regsetinfo_ismobile", 0);
    this.gtI = getIntent().getExtras().getBoolean("regsetinfo_isForce", false);
    this.gtK = getIntent().getIntExtra("regsetinfo_NextControl", 3);
    FR();
    if (this.eLl == 1)
    {
      b.id("R200_900_phone");
      b.b(true, be.uv() + "," + getClass().getName() + ",R200_900_phone," + be.ds("R200_900_phone") + ",1");
    }
    while (true)
    {
      this.gtX = false;
      return;
      if (this.eLl == 2)
      {
        b.id("R4_QQ");
        b.b(true, be.uv() + "," + getClass().getName() + ",R4_QQ," + be.ds("R4_QQ") + ",1");
      }
      else if (this.eLl == 3)
      {
        b.id("R200_900_email");
        b.b(true, be.uv() + "," + getClass().getName() + ",R200_900_email," + be.ds("R200_900_email") + ",1");
      }
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    if (this.eLl == 1)
      b.b(false, be.uv() + "," + getClass().getName() + ",R200_900_phone," + be.ds("R200_900_phone") + ",2");
    do
    {
      return;
      if (this.eLl == 2)
      {
        b.b(false, be.uv() + "," + getClass().getName() + ",R4_QQ," + be.ds("R4_QQ") + ",2");
        return;
      }
    }
    while (this.eLl != 3);
    b.b(false, be.uv() + "," + getClass().getName() + ",R200_900_email," + be.ds("R200_900_email") + ",2");
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

  public void onResume()
  {
    super.onResume();
    this.gsR.postDelayed(new js(this), 500L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegSetInfoUI
 * JD-Core Version:    0.6.2
 */