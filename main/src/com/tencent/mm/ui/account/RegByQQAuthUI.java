package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;

public class RegByQQAuthUI extends MMActivity
  implements m
{
  private String bPk;
  private ProgressDialog cIr = null;
  private String cgp;
  private String cxs;
  private String gro;
  private EditText gts = null;
  private int gtt;

  protected final void FR()
  {
    this.gtt = getIntent().getIntExtra("RegByQQ_BindUin", 0);
    this.gro = getIntent().getStringExtra("RegByQQ_RawPsw");
    this.cxs = getIntent().getStringExtra("RegByQQ_Account");
    this.cgp = getIntent().getStringExtra("RegByQQ_Ticket");
    this.bPk = getIntent().getStringExtra("RegByQQ_Nick");
    aa.v("MicroMsg.RegByQQAuthUI", "values : bindUin:" + this.gtt + "  pass:" + this.gro + "  ticket:" + this.cgp);
    this.gts = ((EditText)findViewById(i.aCO));
    if ((this.bPk != null) && (!this.bPk.equals("")))
      this.gts.setText(this.bPk);
    mn(n.bvQ);
    a(0, getString(n.bec), new in(this));
    a(new ip(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.RegByQQAuthUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (!cj.ag(this));
    while (true)
    {
      return;
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        switch (paramx.getType())
        {
        default:
          return;
        case 126:
        }
        be.uI();
        bd.cik.s("login_user_name", this.cxs);
        Intent localIntent1 = new Intent(this, BindMContactIntroUI.class);
        localIntent1.putExtra("skip", true);
        Intent localIntent2 = a.cHS.w(this);
        localIntent2.addFlags(67108864);
        localIntent2.putExtra("LauncherUI.enter_from_reg", true);
        MMWizardActivity.b(this, localIntent1, localIntent2);
        return;
      }
      int i;
      if (a.cHT.b(aal(), paramInt1, paramInt2))
        i = 1;
      while (i == 0)
      {
        int j = n.bnj;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        Toast.makeText(this, getString(j, arrayOfObject), 0).show();
        return;
        if (paramInt1 == 4);
        switch (paramInt2)
        {
        default:
          i = 0;
          break;
        case -1:
          if (be.uA().wS() == 6)
          {
            h.c(this, n.bso, n.bsn);
            i = 1;
          }
          break;
        case -3:
          h.c(this, n.bdH, n.bvO);
          i = 1;
          break;
        case -4:
          h.c(this, n.bdG, n.bvO);
          i = 1;
          break;
        case -12:
          h.c(this, n.bvP, n.bvO);
          i = 1;
          break;
        case -11:
          h.c(this, n.bvN, n.bvO);
          i = 1;
          break;
        case -72:
          h.c(aal(), n.bvM, n.ber);
          i = 1;
          break;
        case -75:
          h.c(aal(), n.bdo, n.ber);
          i = 1;
        }
      }
    }
  }

  protected final int getLayoutId()
  {
    return k.aYG;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public void onPause()
  {
    super.onPause();
    be.uA().b(126, this);
  }

  public void onResume()
  {
    super.onResume();
    be.uA().a(126, this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByQQAuthUI
 * JD-Core Version:    0.6.2
 */