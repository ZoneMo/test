package com.tencent.mm.ui.contact;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.ak.a;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.VoiceSearchLayout;
import com.tencent.mm.pluginsdk.ui.tools.u;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.storage.k;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.cx;
import com.tencent.mm.ui.voicesearch.j;

public class ChatroomContactUI extends MMActivity
  implements m
{
  private TextView dir;
  private ListView gSA;
  private j gSE;
  private ContactCountView gSO;
  private u gTj;
  private ap gTk;
  private VoiceSearchLayout gmc;
  private com.tencent.mm.pluginsdk.ui.e goY = new com.tencent.mm.pluginsdk.ui.e(new av(this));

  private void akH()
  {
    if (this.gTk != null)
      this.gTk.ca(null);
    if (this.gSE != null)
      this.gSE.ca(null);
  }

  public final void FR()
  {
    ((TextView)findViewById(2131361904)).setVisibility(8);
    this.gSA = ((ListView)findViewById(2131361903));
    this.gSA.setAdapter(null);
    this.dir = ((TextView)findViewById(2131361904));
    this.dir.setText(2131166184);
    this.gTk = new ap(this, "@all.chatroom.contact");
    this.gTk.aEJ();
    this.gSE = new j(aal(), 1);
    this.gSE.xY("@all.chatroom.contact");
    this.gTj = new u();
    this.gTj.a(new az(this));
    a(true, this.gTj);
    this.gTk.a(new ba(this));
    this.gTk.a(new bb(this));
    this.gTk.a(new bc(this));
    this.gSA.setOnScrollListener(this.goY);
    this.gTk.a(this.goY);
    this.gSA.setOnItemClickListener(new bd(this));
    this.gSA.setOnTouchListener(new be(this));
    ListView localListView = this.gSA;
    ContactCountView localContactCountView = new ContactCountView(this);
    this.gSO = localContactCountView;
    localListView.addFooterView(localContactCountView, null, false);
    a(new bf(this));
    a(0, 2131167451, 2130838792, new bg(this));
    new aw(this);
    this.gSA.setAdapter(this.gTk);
    this.gSE.eA(false);
    this.gSA.setVisibility(0);
    this.gmc = new VoiceSearchLayout(this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(14);
    this.gmc.setLayoutParams(localLayoutParams);
    this.gmc.kj(com.tencent.mm.sdk.platformtools.e.a(this, 100.0F));
    this.gmc.setVisibility(8);
    ((ViewGroup)aET()).setVisibility(0);
    ((ViewGroup)aET()).addView(this.gmc);
    if (this.gmc != null)
      this.gmc.a(new ax(this));
    if (this.gTk.getCount() == 0)
    {
      this.dir.setSingleLine(false);
      this.dir.setPadding(40, 0, 40, 0);
      this.dir.setVisibility(0);
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (!au.ag(this));
    while ((cx.a(this, paramInt1, paramInt2, 4)) || (paramInt1 != 0) || (paramInt2 != 0))
      return;
    switch (paramx.getType())
    {
    default:
      return;
    case 38:
    }
    akH();
  }

  protected final int getLayoutId()
  {
    return 2130903139;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(2131166171);
    FR();
    com.tencent.mm.model.be.uA().a(38, this);
    com.tencent.mm.model.be.uz().su().a(this.gTk);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    com.tencent.mm.model.be.uA().b(38, this);
    com.tencent.mm.model.be.uz().su().b(this.gTk);
    this.gTk.detach();
    this.gTk.closeCursor();
    this.gTk.aDU();
    this.gSE.detach();
    this.gSE.closeCursor();
  }

  protected void onPause()
  {
    super.onPause();
    if (this.gTj != null)
      this.gTj.onPause();
    if (this.gSE != null)
      this.gSE.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    if (this.gSO != null)
    {
      this.gSO.aKx();
      this.gSO.aKy();
    }
    if ((this.gTj != null) && (this.gmc != null))
    {
      a.avr();
      if ((com.tencent.mm.x.b.Bj()) || (!z.azj().equals("zh_CN")))
        break label95;
      this.gTj.cP(true);
      this.gTj.r(this.gmc);
    }
    while (true)
    {
      if (this.gSE != null)
        this.gSE.onResume();
      return;
      label95: this.gTj.cP(false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ChatroomContactUI
 * JD-Core Version:    0.6.2
 */