package com.tencent.mm.plugin.safedevice.ui;

import android.content.Intent;
import android.content.SharedPreferences;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.z;

final class ae
  implements View.OnClickListener
{
  ae(SecurityAccountVerifyUI paramSecurityAccountVerifyUI)
  {
  }

  public final void onClick(View paramView)
  {
    b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L600_300," + be.ds("L600_300") + ",1");
    SharedPreferences localSharedPreferences = this.eaJ.getSharedPreferences(al.azs(), 0);
    String str = z.a(localSharedPreferences);
    Intent localIntent = new Intent();
    localIntent.putExtra("rawUrl", String.format("http://support.weixin.qq.com/cgi-bin/mmsupport-bin/readtemplate?lang=%s&t=w_unprotect&step=1&f=Android", new Object[] { str }));
    localIntent.putExtra("useJs", true);
    localIntent.putExtra("vertical_scroll", true);
    localIntent.putExtra("title", this.eaJ.getString(n.bwP));
    localIntent.putExtra("show_bottom", false);
    localIntent.putExtra("showShare", false);
    localIntent.putExtra("neverGetA8Key", true);
    a.cHS.h(localIntent, this.eaJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.ae
 * JD-Core Version:    0.6.2
 */