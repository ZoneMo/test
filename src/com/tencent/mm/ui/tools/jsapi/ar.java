package com.tencent.mm.ui.tools.jsapi;

import android.app.Activity;
import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.ak;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.ui.base.h;

final class ar
  implements MenuItem.OnMenuItemClickListener
{
  ar(ShareToQQWeiboUI paramShareToQQWeiboUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    ak localak = new ak(this.hpL.getIntent().getIntExtra("type", 0), this.hpL.getIntent().getStringExtra("shortUrl"), ShareToQQWeiboUI.a(this.hpL).getText().toString());
    be.uA().d(localak);
    ShareToQQWeiboUI localShareToQQWeiboUI = this.hpL;
    Activity localActivity = this.hpL.aal();
    this.hpL.getString(n.ber);
    ShareToQQWeiboUI.a(localShareToQQWeiboUI, h.a(localActivity, this.hpL.getString(n.bqt), true, new as(this, localak)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.ar
 * JD-Core Version:    0.6.2
 */