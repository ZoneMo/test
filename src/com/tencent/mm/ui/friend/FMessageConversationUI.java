package com.tencent.mm.ui.friend;

import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.ah.a;
import com.tencent.mm.ah.k;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.tools.dg;

public class FMessageConversationUI extends MMActivity
{
  private cd cQa = new ae(this);
  private String cTq;
  private m haK;
  private ListView hbc;
  private e hbd;

  protected final void FR()
  {
    this.haK = new m(aal());
    k.Dy().e(this.haK);
    this.haK.a(new w(this));
    this.haK.a(new x(this));
    this.haK.a(new y(this));
    this.haK.a(new z(this));
    this.hbc = ((ListView)findViewById(2131362698));
    this.hbc.setAdapter(this.haK);
    dg localdg = new dg(this);
    this.hbc.setOnItemLongClickListener(new aa(this, localdg));
    this.hbd = new e(aal(), this.haK);
    this.hbc.setOnItemClickListener(this.hbd);
    TextView localTextView = (TextView)findViewById(2131362699);
    localTextView.setOnClickListener(new ab(this));
    this.hbc.setEmptyView(localTextView);
    a(0, getString(2131167420), new ac(this));
    a(new ad(this));
  }

  protected final int getLayoutId()
  {
    return 2130903314;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(2131166211);
    FR();
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    a locala = (a)this.haK.getItem(localAdapterContextMenuInfo.position);
    if (locala == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.FMessageConversationUI", "onItemLongClick, item is null, pos = " + localAdapterContextMenuInfo.position);
      return;
    }
    if (!cj.hX(locala.field_displayName))
      paramContextMenu.setHeaderTitle(com.tencent.mm.ao.b.e(this, locala.field_displayName, -1));
    paramContextMenu.add(0, 0, 0, 2131167687);
    this.cTq = locala.field_talker;
  }

  protected void onDestroy()
  {
    super.onDestroy();
    k.Dy().Do();
    k.Dy().f(this.haK);
  }

  protected void onPause()
  {
    super.onPause();
    be.uz().sr().set(143618, Integer.valueOf(0));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.FMessageConversationUI
 * JD-Core Version:    0.6.2
 */