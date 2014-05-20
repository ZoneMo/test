package com.tencent.mm.ui.conversation;

import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.tools.dg;

public class BizConversationUI extends MMActivity
{
  private String bNl = "";
  private TextView cPW;
  private boolean cQb = false;
  private cd dLv = new i(this);
  private dg diX;
  private ListView gXP;
  private s gXQ;
  private com.tencent.mm.storage.n gXR;

  protected final void FR()
  {
    mn(2131165638);
    this.gXP = ((ListView)findViewById(2131364014));
    this.cPW = ((TextView)findViewById(2131362657));
    this.cPW.setText(2131165639);
    this.gXQ = new r(this, new e(this));
    this.gXQ.a(new j(this));
    this.gXQ.a(new k(this));
    this.gXP.setAdapter(this.gXQ);
    this.diX = new dg(this);
    this.gXP.setOnItemClickListener(new l(this));
    this.gXP.setOnItemLongClickListener(new m(this));
    this.gXQ.a(new n(this));
    this.gXQ.a(new o(this));
    this.gXQ.a(new p(this));
    a(new q(this));
    new f(this);
  }

  protected final int getLayoutId()
  {
    return 2130903793;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    be.uz().sx().a(this.gXQ);
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    com.tencent.mm.storage.i locali = be.uz().su().tO(this.bNl);
    if (locali == null)
    {
      aa.e("MicroMsg.BizConversationUI", "onCreateContextMenu, contact is null, talker = " + this.bNl);
      return;
    }
    String str = locali.rr();
    if ((str.toLowerCase().endsWith("@chatroom")) && (cj.hX(locali.kn())))
      str = getString(2131165739);
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    paramContextMenu.setHeaderTitle(com.tencent.mm.ao.b.e(this, str, -1));
    paramContextMenu.add(localAdapterContextMenuInfo.position, 1, 0, 2131165586);
  }

  public void onDestroy()
  {
    if (be.se())
      be.uz().sx().b(this.gXQ);
    this.gXQ.onDestroy();
    super.onDestroy();
  }

  public void onPause()
  {
    aa.v("MicroMsg.BizConversationUI", "on pause");
    be.uz().sx().ua("officialaccounts");
    this.gXQ.onPause();
    super.onPause();
  }

  public void onResume()
  {
    aa.v("MicroMsg.BizConversationUI", "on resume");
    this.gXQ.onResume();
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.BizConversationUI
 * JD-Core Version:    0.6.2
 */