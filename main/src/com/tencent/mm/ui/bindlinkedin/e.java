package com.tencent.mm.ui.bindlinkedin;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.cj;

final class e
  implements View.OnClickListener
{
  e(BindLinkedInUI paramBindLinkedInUI)
  {
  }

  public final void onClick(View paramView)
  {
    String str = (String)be.uz().sr().get(286723);
    if (!cj.hX(str))
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("rawUrl", str);
      localIntent.putExtra("geta8key_username", v.th());
      a.b(this.gIz, "webview", "com.tencent.mm.ui.tools.WebViewUI", localIntent);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindlinkedin.e
 * JD-Core Version:    0.6.2
 */