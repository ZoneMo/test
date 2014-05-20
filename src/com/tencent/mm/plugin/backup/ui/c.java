package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.a.f;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.r;
import com.tencent.mm.ui.base.h;

final class c
  implements MenuItem.OnMenuItemClickListener
{
  c(BakChatInputCryptUI paramBakChatInputCryptUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str = BakChatInputCryptUI.a(this.cLS).getText().toString();
    if ((au.hX(str)) || (r.ir(f.h(str.getBytes())) != BakChatInputCryptUI.b(this.cLS)))
    {
      h.p(this.cLS, this.cLS.getString(2131166082), null);
      return true;
    }
    d.F(f.i(str.getBytes()));
    Intent localIntent = new Intent(this.cLS.aal(), BakChatRecoveringUI.class);
    localIntent.putExtra("recover_svrId", BakChatInputCryptUI.c(this.cLS));
    localIntent.putExtra("recover_svr_size", BakChatInputCryptUI.d(this.cLS));
    this.cLS.startActivity(localIntent);
    this.cLS.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.c
 * JD-Core Version:    0.6.2
 */