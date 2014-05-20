package com.tencent.mm.ui.bindmobile;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.n.x;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.friend.ct;

public class BindMContactIntroUI extends MMWizardActivity
  implements com.tencent.mm.n.m
{
  private String bTR;
  private ch cHU = null;
  private Button cXX;
  private TextView gIE;
  private TextView gIF;
  private TextView gIG;
  private TextView gIH;
  private TextView gII;
  private Button gIJ;
  private Button gIK;
  private Button gIL;
  private Button gIM;
  private com.tencent.mm.modelfriend.aa gIN;
  private String gIO = null;
  private boolean gIP = false;
  private boolean gIQ = false;
  private boolean gvH = false;
  private ImageView gvc;
  private ct gvt;

  private void Zz()
  {
    SM();
    if (this.gIP)
    {
      cancel();
      finish();
      return;
    }
    aFs();
  }

  protected final void FR()
  {
    this.gvH = getIntent().getBooleanExtra("is_bind_for_safe_device", false);
    this.gIP = getIntent().getBooleanExtra("is_bind_for_contact_sync", false);
    this.gIN = z.zp();
    this.gvc = ((ImageView)findViewById(com.tencent.mm.i.aJx));
    this.gIE = ((TextView)findViewById(com.tencent.mm.i.aJt));
    this.gIF = ((TextView)findViewById(com.tencent.mm.i.aJu));
    this.gIG = ((TextView)findViewById(com.tencent.mm.i.aJq));
    this.gIH = ((TextView)findViewById(com.tencent.mm.i.aJv));
    this.gII = ((TextView)findViewById(com.tencent.mm.i.aJo));
    this.gIJ = ((Button)findViewById(com.tencent.mm.i.aJn));
    this.gIK = ((Button)findViewById(com.tencent.mm.i.aJp));
    this.cXX = ((Button)findViewById(com.tencent.mm.i.aJr));
    this.gIL = ((Button)findViewById(com.tencent.mm.i.aJs));
    this.gIM = ((Button)findViewById(com.tencent.mm.i.aJw));
    if (this.gIN == com.tencent.mm.modelfriend.aa.cra)
    {
      this.gvc.setImageResource(com.tencent.mm.h.afU);
      this.gIE.setVisibility(0);
      this.gIF.setVisibility(0);
      this.gIG.setVisibility(8);
      this.gIH.setVisibility(8);
      this.gII.setVisibility(8);
      this.gIJ.setVisibility(0);
      this.gIK.setVisibility(8);
      this.cXX.setVisibility(8);
      this.gIL.setVisibility(8);
      this.gIM.setVisibility(8);
      m(1, false);
    }
    if (this.gIN == com.tencent.mm.modelfriend.aa.crb)
    {
      this.gvc.setImageResource(com.tencent.mm.h.afU);
      this.gIE.setVisibility(8);
      this.gIF.setVisibility(8);
      this.gIG.setVisibility(8);
      this.gIH.setVisibility(0);
      this.gII.setVisibility(8);
      this.gIJ.setVisibility(8);
      this.gIK.setVisibility(8);
      this.cXX.setVisibility(0);
      this.gIL.setVisibility(8);
      this.gIM.setVisibility(0);
      m(1, false);
    }
    if (this.gIN == com.tencent.mm.modelfriend.aa.crd)
    {
      this.gvc.setImageResource(com.tencent.mm.h.afT);
      this.gIE.setVisibility(8);
      this.gIF.setVisibility(8);
      this.gIG.setVisibility(0);
      this.gIH.setVisibility(8);
      this.gII.setVisibility(0);
      this.gIJ.setVisibility(8);
      this.gIK.setVisibility(0);
      this.cXX.setVisibility(8);
      this.gIL.setVisibility(0);
      this.gIM.setVisibility(8);
      this.gIL.setText(getString(com.tencent.mm.n.bft));
      m(1, true);
    }
    if (this.gIN == com.tencent.mm.modelfriend.aa.crc)
    {
      this.gvc.setImageResource(com.tencent.mm.h.afT);
      this.gIE.setVisibility(8);
      this.gIF.setVisibility(8);
      this.gIH.setVisibility(8);
      this.gII.setVisibility(0);
      this.gIJ.setVisibility(8);
      this.gIK.setVisibility(0);
      this.cXX.setVisibility(8);
      this.gIL.setVisibility(0);
      this.gIG.setVisibility(0);
      this.gIM.setVisibility(8);
      m(1, true);
    }
    this.bTR = ((String)be.uz().sr().get(6));
    if ((this.bTR == null) || (this.bTR.equals("")))
    {
      this.bTR = ((String)be.uz().sr().get(4097));
      this.gIQ = true;
    }
    TextView localTextView1 = this.gIH;
    int i = com.tencent.mm.n.bfs;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.bTR;
    localTextView1.setText(getString(i, arrayOfObject1));
    TextView localTextView2 = this.gII;
    int j = com.tencent.mm.n.bfz;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = this.bTR;
    localTextView2.setText(getString(j, arrayOfObject2));
    this.gIJ.setOnClickListener(new a(this));
    this.gIM.setOnClickListener(new l(this));
    this.gIK.setOnClickListener(new p(this));
    this.cXX.setOnClickListener(new q(this));
    this.gIL.setOnClickListener(new s(this));
    if (getIntent().getBooleanExtra("skip", false))
      a(0, getString(com.tencent.mm.n.bea), new u(this));
    while (true)
    {
      if ((this.gIN == com.tencent.mm.modelfriend.aa.crd) || (this.gIN == com.tencent.mm.modelfriend.aa.crc))
        a(1, com.tencent.mm.h.afQ, new w(this));
      return;
      a(new v(this));
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.BindMContactIntroUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if ((paramx.getType() == 132) && (paramInt1 == 0) && (paramInt2 == 0))
    {
      if (this.cHU != null)
      {
        this.cHU.dismiss();
        this.cHU = null;
      }
      if (((ai)paramx).vI() == 3)
      {
        if ((this.gIO != null) && (this.gIO.length() > 0))
          be.uz().sr().set(3, this.gIO);
        com.tencent.mm.modelsimple.f.V(this);
        j(this, new Intent(this, BindMContactStatusUI.class));
      }
    }
    label771: 
    while (true)
    {
      return;
      int i;
      switch (paramInt2)
      {
      default:
        i = 0;
      case -34:
      case -43:
      case -214:
      case -41:
      case -35:
      case -36:
      }
      while (true)
      {
        if (i == 0)
          break label343;
        if (this.cHU == null)
          break;
        this.cHU.dismiss();
        this.cHU = null;
        return;
        Toast.makeText(this, com.tencent.mm.n.beS, 0).show();
        i = 1;
        continue;
        Toast.makeText(this, com.tencent.mm.n.beP, 0).show();
        i = 1;
        continue;
        com.tencent.mm.d.a locala = com.tencent.mm.d.a.be(paramString);
        if (locala != null)
          locala.a(this, null, null);
        i = 1;
        continue;
        Toast.makeText(this, com.tencent.mm.n.beR, 0).show();
        i = 1;
        continue;
        Toast.makeText(this, com.tencent.mm.n.beQ, 0).show();
        i = 1;
        continue;
        Toast.makeText(this, com.tencent.mm.n.beU, 0).show();
        i = 1;
      }
      label343: if (paramx.getType() == 254)
      {
        if ((paramInt1 == 0) && (paramInt2 == 0))
        {
          this.gIO = ((com.tencent.mm.modelsimple.s)paramx).Cg();
          com.tencent.mm.modelsimple.ac localac = new com.tencent.mm.modelsimple.ac(2);
          be.uA().d(localac);
          return;
        }
        if (this.cHU != null)
        {
          this.cHU.dismiss();
          this.cHU = null;
        }
        if (paramInt2 == -81)
          com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.byi, com.tencent.mm.n.ber, new c(this));
      }
      else if (paramx.getType() == 255)
      {
        if (this.cHU != null)
        {
          this.cHU.dismiss();
          this.cHU = null;
        }
        if (paramInt2 != 0)
          break label751;
        ai localai = new ai(this.bTR, 3, "", 0, "");
        be.uA().d(localai);
        Activity localActivity = aal();
        getString(com.tencent.mm.n.ber);
        this.cHU = com.tencent.mm.ui.base.h.a(localActivity, getString(com.tencent.mm.n.bfr), true, new i(this, localai));
      }
      while (true)
      {
        label438: if (paramx.getType() != 132)
          break label771;
        if (this.cHU != null)
        {
          this.cHU.dismiss();
          this.cHU = null;
        }
        if (((ai)paramx).vI() != 3)
          break;
        if (paramInt2 != -82)
          break label773;
        com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.byj, com.tencent.mm.n.ber, new k(this));
        return;
        if (paramInt2 == -82)
        {
          com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.byj, com.tencent.mm.n.ber, new d(this));
          break label438;
        }
        if (paramInt2 == -83)
        {
          com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.byg, com.tencent.mm.n.ber, new e(this));
          break label438;
        }
        if (paramInt2 == -84)
        {
          com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.byh, com.tencent.mm.n.ber, new f(this));
          break label438;
        }
        if (paramInt2 == -85)
        {
          com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.byd, com.tencent.mm.n.ber, new g(this));
          break label438;
        }
        if (paramInt2 != -86)
          break label438;
        com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.byl, com.tencent.mm.n.ber, new h(this));
        break label438;
        label751: com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.bye, com.tencent.mm.n.ber, new j(this));
      }
    }
    label773: if (paramInt2 == -83)
    {
      com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.byg, com.tencent.mm.n.ber, new m(this));
      return;
    }
    if (paramInt2 == -84)
    {
      com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.byh, com.tencent.mm.n.ber, new n(this));
      return;
    }
    if (paramInt2 == -85)
    {
      com.tencent.mm.ui.base.h.a(this, com.tencent.mm.n.byd, com.tencent.mm.n.ber, new o(this));
      return;
    }
    int j = com.tencent.mm.n.bfo;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(j, arrayOfObject), 0).show();
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.aSE;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BindMContactIntroUI", "state " + z.zp());
    be.uA().a(132, this);
    be.uA().a(255, this);
    be.uA().a(254, this);
    mn(com.tencent.mm.n.bfk);
  }

  public void onDestroy()
  {
    be.uA().b(132, this);
    be.uA().b(255, this);
    be.uA().b(254, this);
    if (this.gvt != null)
    {
      getContentResolver().unregisterContentObserver(this.gvt);
      this.gvt.recycle();
    }
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      Zz();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindmobile.BindMContactIntroUI
 * JD-Core Version:    0.6.2
 */