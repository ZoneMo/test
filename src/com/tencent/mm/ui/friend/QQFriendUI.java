package com.tencent.mm.ui.friend;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.m.af;
import com.tencent.mm.m.e;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.am;
import com.tencent.mm.modelfriend.aw;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.tools.eo;

public class QQFriendUI extends MMActivity
  implements com.tencent.mm.n.m
{
  private ListView cIo;
  private ProgressDialog cIr = null;
  private String cIs;
  private eo diw;
  private TextView gpX = null;
  private boolean gpY = false;
  private br hbQ;
  private int is;

  protected final void FR()
  {
    this.cIo = ((ListView)findViewById(i.aEL));
    this.gpX = ((TextView)findViewById(i.asM));
    this.gpX.setText(n.btu);
    this.diw = new eo();
    this.diw.a(new bx(this));
    a(true, this.diw);
    this.hbQ = new br(this, this.is);
    this.hbQ.a(new by(this));
    this.cIo.setAdapter(this.hbQ);
    this.cIo.setOnItemClickListener(new bz(this));
    ax.Aq().e(this.hbQ);
    a(new ca(this));
    new cb(this);
  }

  public final void FS()
  {
    if (this.hbQ != null)
      this.hbQ.ih(this.cIs);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.QQFriendUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (((am)paramx).zO() != 1)
      return;
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.hbQ.FZ();
      return;
    }
    Toast.makeText(this, n.btn, 0).show();
  }

  protected final int getLayoutId()
  {
    return k.aXQ;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    aa.d("MicroMsg.QQFriendUI", "onConfigurationChanged: orientation = " + paramConfiguration.orientation);
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    be.uA().a(143, this);
    String str = getIntent().getStringExtra("qqgroup_name");
    this.is = getIntent().getIntExtra("qqgroup_id", -1);
    if (z.df(this.is))
    {
      am localam = new am(1, this.is);
      be.uA().d(localam);
      Activity localActivity = aal();
      getString(n.ber);
      this.cIr = h.a(localActivity, getString(n.bto), true, new bw(this, localam));
    }
    vT(str);
    FR();
  }

  public void onDestroy()
  {
    ax.Aq().f(this.hbQ);
    be.uA().b(143, this);
    this.hbQ.closeCursor();
    af.wo().cancel();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    aa.v("MicroMsg.QQFriendUI", "qq friend onKeyDown");
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    af.vJ().e(this.hbQ);
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    af.vJ().d(this.hbQ);
    this.hbQ.notifyDataSetChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.QQFriendUI
 * JD-Core Version:    0.6.2
 */