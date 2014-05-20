package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.tencent.mm.a.f;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.r;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;

final class bs
  implements View.OnClickListener
{
  bs(BakchatSetCryptUI paramBakchatSetCryptUI)
  {
  }

  public final void onClick(View paramView)
  {
    String str = BakchatSetCryptUI.a(this.cNR).getText().toString();
    if (cj.hX(str))
      return;
    if (!str.endsWith(BakchatSetCryptUI.b(this.cNR).getText().toString()))
    {
      h.p(this.cNR, this.cNR.getString(2131166080), null);
      return;
    }
    if (!BakchatSetCryptUI.iE(str))
    {
      h.p(this.cNR, this.cNR.getString(2131166081), null);
      return;
    }
    if (str.equals(BakchatSetCryptUI.b(this.cNR).getText().toString()))
    {
      d.F(f.i(str.getBytes()));
      Intent localIntent = new Intent(this.cNR, BakChatUploadingUI.class);
      localIntent.putStringArrayListExtra("bak_usernames_list", BakchatSetCryptUI.c(this.cNR));
      localIntent.putExtra("needPwd", true);
      localIntent.putExtra("keyHashCode", r.ir(f.h(str.getBytes())));
      localIntent.putExtra("isSelectAll", this.cNR.getIntent().getBooleanExtra("isSelectAll", false));
      this.cNR.startActivity(localIntent);
      this.cNR.finish();
      return;
    }
    h.p(this.cNR, this.cNR.getString(2131166080), null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.bs
 * JD-Core Version:    0.6.2
 */