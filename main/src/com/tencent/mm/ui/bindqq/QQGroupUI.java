package com.tencent.mm.ui.bindqq;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.am;
import com.tencent.mm.modelfriend.au;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.bc;

public class QQGroupUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private TextView cPW = null;
  private View gJA = null;
  private ListView gJy;
  private bc gJz;

  protected final void FR()
  {
    this.gJy = ((ListView)findViewById(i.aEO));
    this.cPW = ((TextView)findViewById(i.aES));
    this.cPW.setText(n.btp);
    this.gJz = new w(this, this, new q(this));
    this.gJy.setAdapter(this.gJz);
    this.gJy.setOnItemClickListener(new r(this));
    this.gJA = findViewById(i.aEQ);
    this.gJA.setOnClickListener(new s(this));
    a(new t(this));
    new u(this);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.QQGroupUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (((am)paramx).zO() != 0);
    do
    {
      return;
      if (this.cIr != null)
      {
        this.cIr.dismiss();
        this.cIr = null;
      }
    }
    while ((paramInt1 == 0) && (paramInt2 == 0));
    Toast.makeText(this, n.btq, 0).show();
  }

  protected final int getLayoutId()
  {
    return k.aXS;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    aa.d("MicroMsg.QQGroupUI", "onConfigurationChanged: orientation = " + paramConfiguration.orientation);
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(n.btt);
    be.uA().a(143, this);
    FR();
    if (cj.c((Integer)be.uz().sr().get(9)) != 0);
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        am localam = new am(0, 0);
        be.uA().d(localam);
        Activity localActivity = aal();
        getString(n.ber);
        this.cIr = h.a(localActivity, getString(n.btr), true, new v(this, localam));
      }
      return;
    }
  }

  public void onDestroy()
  {
    be.uA().b(143, this);
    this.gJz.closeCursor();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    aa.v("MicroMsg.QQGroupUI", "qq group onKeyDown");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    ax.Ao().f(this.gJz);
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    ax.Ao().e(this.gJz);
    this.gJz.ca(null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindqq.QQGroupUI
 * JD-Core Version:    0.6.2
 */