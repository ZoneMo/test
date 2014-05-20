package com.tencent.mm.ui.contact;

import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.c.a.hs;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.protocal.a.oc;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.cf;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.widget.MMEditText;
import java.io.File;

public class ContactRemarkInfoModUI extends MMActivity
  implements com.tencent.mm.n.m
{
  public static InputFilter[] gTA = arrayOfInputFilter;
  private String bUj;
  private com.tencent.mm.storage.i cQI;
  private String cwG;
  private ProgressDialog dRP;
  private int edN;
  private MMEditText gTB;
  private EditText gTC;
  private TextView gTD;
  private ImageView gTE;
  private ImageView gTF;
  private TextView gTG;
  private View gTH;
  private Button gTI;
  private View gTJ;
  private String gTK;
  private boolean gTL = false;
  private boolean gTM = false;
  private String gTt;
  private String username;

  static
  {
    InputFilter[] arrayOfInputFilter = new InputFilter[1];
    arrayOfInputFilter[0] = new InputFilter.LengthFilter(50);
  }

  private static void Jc()
  {
    be.uA().d(new com.tencent.mm.z.i(5));
  }

  private void aKA()
  {
    Bitmap localBitmap = com.tencent.mm.ae.c.BT().gn(this.username);
    if (localBitmap != null)
    {
      this.gTF.setVisibility(8);
      this.gTE.setVisibility(0);
      this.gTE.setImageBitmap(localBitmap);
    }
    this.gTL = true;
  }

  private boolean aKB()
  {
    String str = this.gTB.getText().toString().trim();
    aa.i("MiroMsg.ContactRemarkInfoModUI", "Set New RemarkName : " + str + ", Report kvStat, addContactScene = " + this.edN);
    com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.edN);
    localm.d(10448, arrayOfObject);
    switch (this.cQI.getSource())
    {
    case 12:
    default:
    case 10:
    case 11:
    case 13:
    }
    com.tencent.mm.modelfriend.h localh;
    do
    {
      com.tencent.mm.storage.ce localce = be.uz().sv().vF(this.cQI.getUsername());
      if (((localce == null) || (com.tencent.mm.platformtools.au.hX(localce.aAs()))) && (!com.tencent.mm.platformtools.au.hX(this.cQI.aAs())))
        localce = be.uz().sv().vF(this.cQI.aAs());
      if ((localce != null) && (!com.tencent.mm.platformtools.au.hX(localce.aAs())))
        be.uz().sv().vG(localce.aAs());
      if (aKD())
        break;
      return false;
      localh = ax.Al().fq(this.cQI.getUsername());
    }
    while ((localh == null) || (com.tencent.mm.platformtools.au.hX(localh.yM())));
    if (com.tencent.mm.platformtools.au.hX(str))
      localh.yV();
    while (true)
    {
      ax.Al().a(localh.yK(), localh);
      break;
      localh.yU();
    }
    this.gTK = str;
    w.b(this.cQI, str);
    return true;
  }

  private boolean aKC()
  {
    if (!aKE())
      return false;
    String str = this.gTC.getText().toString().trim();
    this.bUj = str;
    oc localoc = new oc();
    localoc.fPp = this.username;
    localoc.fEA = str;
    be.uz().st().a(new az(54, localoc));
    return true;
  }

  private boolean aKD()
  {
    String str = this.gTB.getText().toString().trim();
    return ((this.gTK == null) || (!this.gTK.equals(str))) && ((!com.tencent.mm.platformtools.au.hX(this.gTK)) || (!com.tencent.mm.platformtools.au.hX(str)));
  }

  private boolean aKE()
  {
    String str = this.gTC.getText().toString().trim();
    return ((this.bUj == null) || (!this.bUj.equals(str))) && ((!com.tencent.mm.platformtools.au.hX(this.bUj)) || (!com.tencent.mm.platformtools.au.hX(str)));
  }

  private boolean aKF()
  {
    return !com.tencent.mm.platformtools.au.hX(this.gTt);
  }

  private void aKG()
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this, ContactRemarkInfoViewUI.class);
    localIntent.putExtra("Contact_Scene", this.edN);
    localIntent.putExtra("Contact_User", this.cQI.getUsername());
    localIntent.addFlags(67108864);
    startActivity(localIntent);
    finish();
  }

  private void aKz()
  {
    if ((aKE()) || (aKF()) || (aKD()))
    {
      dg(true);
      return;
    }
    dg(false);
  }

  private void goBack()
  {
    boolean bool1 = aKF();
    boolean bool2 = aKD();
    boolean bool3 = aKE();
    if ((bool1) || (bool2) || (bool3))
    {
      com.tencent.mm.ui.base.h.a(this, getString(2131166233), null, getString(2131166234), getString(2131166235), new bs(this), new bt(this));
      return;
    }
    finish();
  }

  private static int q(CharSequence paramCharSequence)
  {
    return 200 - Math.round(r(paramCharSequence));
  }

  private static float r(CharSequence paramCharSequence)
  {
    float f = 0.0F;
    int i = 0;
    if (i < paramCharSequence.length())
    {
      if (com.tencent.mm.platformtools.au.l(paramCharSequence.charAt(i)));
      for (f += 1.0F; ; f += 0.5F)
      {
        i++;
        break;
      }
    }
    return f;
  }

  private void wL(String paramString)
  {
    if (com.tencent.mm.platformtools.au.hX(paramString));
    Bitmap localBitmap;
    do
    {
      File localFile;
      do
      {
        return;
        localFile = new File(paramString);
      }
      while (!localFile.exists());
      if (localFile.length() > 204800L)
      {
        com.tencent.mm.ui.base.h.p(this, getString(2131166261), null);
        return;
      }
      float f = com.tencent.mm.an.a.getDensity(this);
      localBitmap = e.e(this.gTt, f);
    }
    while (localBitmap == null);
    this.gTF.setVisibility(8);
    this.gTE.setVisibility(0);
    this.gTE.setImageBitmap(localBitmap);
    this.gTL = true;
  }

  private String wM(String paramString)
  {
    String str;
    if (!com.tencent.mm.a.c.as(paramString))
      str = null;
    int i;
    do
    {
      return str;
      i = com.tencent.mm.sdk.platformtools.f.hH(paramString);
      str = com.tencent.mm.ae.c.BT().gl(this.username) + ".tmp";
      if (!com.tencent.mm.sdk.platformtools.h.a(paramString, 960, 960, Bitmap.CompressFormat.JPEG, 70, str))
      {
        aa.e("MiroMsg.ContactRemarkInfoModUI", "createThumbNail big pic fail");
        return null;
      }
    }
    while ((i == 0) || (com.tencent.mm.sdk.platformtools.h.a(str, i, Bitmap.CompressFormat.JPEG, 70, str)));
    aa.e("MiroMsg.ContactRemarkInfoModUI", "rotate big pic fail");
    return null;
  }

  private void z(String paramString1, String paramString2, String paramString3)
  {
    com.tencent.mm.storage.i locali = be.uz().su().tO(this.username);
    if ((locali != null) && (locali.rj() > 0) && (locali.rb()))
    {
      this.cQI.bH(paramString1);
      this.cQI.bUj = paramString2;
      this.cQI.bUk = paramString3;
      be.uz().su().A(this.cQI);
      com.tencent.mm.sdk.b.a.ayH().f(new hs());
    }
  }

  protected final void FR()
  {
    this.gTB = ((MMEditText)findViewById(2131362429));
    this.gTC = ((EditText)findViewById(2131362434));
    this.gTE = ((ImageView)findViewById(2131362437));
    this.gTF = ((ImageView)findViewById(2131362436));
    this.gTD = ((TextView)findViewById(2131362435));
    this.gTJ = findViewById(2131362433);
    mn(2131166270);
    label300: com.tencent.mm.modelfriend.h localh;
    if (!com.tencent.mm.platformtools.au.hX(this.gTK))
    {
      this.gTB.yd(com.tencent.mm.platformtools.au.hW(this.gTK));
      this.gTC.append(com.tencent.mm.platformtools.au.hW(this.bUj));
      this.gTB.setFilters(gTA);
      this.gTB.addTextChangedListener(new br(this));
      this.gTD.setText(q(this.gTC.getEditableText()));
      this.gTC.setOnFocusChangeListener(new bu(this));
      EditText localEditText = this.gTC;
      InputFilter[] arrayOfInputFilter = new InputFilter[1];
      arrayOfInputFilter[0] = new cd(this);
      localEditText.setFilters(arrayOfInputFilter);
      this.gTC.addTextChangedListener(new ce(this, (byte)0));
      if (com.tencent.mm.platformtools.au.hX(this.cwG))
        break label435;
      this.gTF.setVisibility(8);
      this.gTE.setVisibility(0);
      if (com.tencent.mm.ae.c.BT().gm(this.username))
        break label428;
      com.tencent.mm.ae.c.BT().a(this.username, this.cwG, new bz(this));
      this.gTE.setOnClickListener(new bv(this));
      this.gTF.setOnClickListener(new bw(this));
      localh = ax.Al().fq(this.cQI.getUsername());
      if ((localh != null) && (!com.tencent.mm.platformtools.au.hX(localh.yM())))
        break label455;
    }
    while (true)
    {
      a(getString(2131167694), new bx(this), com.tencent.mm.ui.bt.gnO);
      a(new by(this));
      if (!com.tencent.mm.platformtools.au.hX(this.gTK))
        break label555;
      dg(false);
      return;
      this.gTB.yd(com.tencent.mm.platformtools.au.hW(this.cQI.rq()));
      break;
      label428: aKA();
      break label300;
      label435: this.gTF.setVisibility(0);
      this.gTE.setVisibility(8);
      break label300;
      label455: this.gTG = ((TextView)findViewById(2131362431));
      this.gTH = findViewById(2131362430);
      this.gTI = ((Button)findViewById(2131362432));
      this.gTH.setVisibility(0);
      TextView localTextView = this.gTG;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localh.yM();
      localTextView.setText(getString(2131166264, arrayOfObject));
      this.gTI.setOnClickListener(new cc(this, localh));
    }
    label555: dg(true);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MiroMsg.ContactRemarkInfoModUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.dRP != null)
    {
      this.dRP.dismiss();
      this.dRP = null;
    }
    if ((paramInt1 != 0) || (paramInt2 != 0))
      com.tencent.mm.ui.base.h.p(this, getString(2131165319), null);
    while (paramx.getType() != 575)
      return;
    File localFile = new File(this.gTt);
    if (localFile.exists())
      localFile.renameTo(new File(com.tencent.mm.ae.c.BT().gl(this.username)));
    String str = ((com.tencent.mm.ae.b)paramx).cwG;
    if (!com.tencent.mm.platformtools.au.hX(str))
      this.cwG = str;
    boolean bool1 = aKB();
    boolean bool2 = aKC();
    if ((bool1) || (bool2))
      Jc();
    z(this.gTK, this.bUj, this.cwG);
    aKG();
  }

  protected final int getLayoutId()
  {
    return 2130903228;
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.d("MiroMsg.ContactRemarkInfoModUI", "onAcvityResult requestCode:%d, resultCode:%d", arrayOfObject);
    switch (paramInt1)
    {
    default:
    case 100:
    case 200:
    case 400:
    }
    do
    {
      String str1;
      do
      {
        do
        {
          String str2;
          do
          {
            return;
            str2 = s.a(getApplicationContext(), paramIntent, be.uz().sB());
          }
          while (str2 == null);
          this.gTt = wM(str2);
          wL(this.gTt);
          this.gTM = true;
          aKz();
          return;
        }
        while (paramIntent == null);
        str1 = com.tencent.mm.ui.tools.h.b(getApplicationContext(), paramIntent, be.uz().sB());
      }
      while (str1 == null);
      this.gTt = wM(str1);
      wL(this.gTt);
      this.gTM = true;
      aKz();
      return;
    }
    while ((paramIntent == null) || (!paramIntent.getBooleanExtra("response_delete", false)));
    this.gTt = null;
    this.cwG = null;
    this.gTF.setVisibility(0);
    this.gTE.setVisibility(8);
    this.gTE.setImageBitmap(null);
    this.gTL = false;
    this.cQI = be.uz().su().tO(this.username);
    this.cQI.bUk = "";
    be.uz().su().a(this.username, this.cQI);
    aKz();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(575, this);
    this.edN = getIntent().getIntExtra("Contact_Scene", 9);
    this.username = getIntent().getStringExtra("Contact_User");
    if (com.tencent.mm.platformtools.au.hX(this.username))
    {
      finish();
      return;
    }
    this.cQI = be.uz().su().tO(this.username);
    this.gTK = this.cQI.ru();
    this.bUj = this.cQI.bUj;
    this.cwG = this.cQI.bUk;
    FR();
  }

  public void onDestroy()
  {
    be.uA().b(575, this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4)
    {
      goBack();
      return true;
    }
    return false;
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ContactRemarkInfoModUI
 * JD-Core Version:    0.6.2
 */