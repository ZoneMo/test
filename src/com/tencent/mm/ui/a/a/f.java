package com.tencent.mm.ui.a.a;

import android.os.Bundle;
import android.webkit.CookieSyncManager;
import com.tencent.mm.sdk.platformtools.aa;

final class f
  implements g
{
  f(e parame)
  {
  }

  public final void a(d paramd)
  {
    aa.d("Facebook-authorize", "Login failed: " + paramd);
    e.a(this.haw).a(paramd);
  }

  public final void a(h paramh)
  {
    aa.d("Facebook-authorize", "Login failed: " + paramh);
    e.a(this.haw).a(paramh);
  }

  public final void e(Bundle paramBundle)
  {
    CookieSyncManager.getInstance().sync();
    this.haw.xh(paramBundle.getString("access_token"));
    this.haw.xi(paramBundle.getString("expires_in"));
    if (this.haw.aLJ())
    {
      aa.d("Facebook-authorize", "Login Success! access_token=" + this.haw.aLK() + " expires=" + this.haw.aLL());
      e.a(this.haw).e(paramBundle);
      return;
    }
    e.a(this.haw).a(new h("Failed to receive access token."));
  }

  public final void onCancel()
  {
    aa.d("Facebook-authorize", "Login canceled");
    e.a(this.haw).onCancel();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.a.a.f
 * JD-Core Version:    0.6.2
 */