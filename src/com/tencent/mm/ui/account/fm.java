package com.tencent.mm.ui.account;

import android.os.Bundle;
import android.os.Handler;
import com.tencent.mm.ui.a.a.a;
import com.tencent.mm.ui.a.a.e;

public final class fm
{
  private e gpx;
  private fp gsj;
  private Handler handler;

  public fm(e parame, fp paramfp)
  {
    this.gpx = parame;
    this.gsj = paramfp;
  }

  public final void aFV()
  {
    this.handler = new fn(this);
    Bundle localBundle = new Bundle();
    localBundle.putString("client_id", "290293790992170");
    localBundle.putString("client_secret", "6667e9307e67283c76028fd37189c096");
    localBundle.putString("grant_type", "fb_exchange_token");
    localBundle.putString("fb_exchange_token", this.gpx.aLK());
    fo localfo = new fo(this);
    new a(this.gpx).a("oauth/access_token", localBundle, "GET", localfo);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fm
 * JD-Core Version:    0.6.2
 */