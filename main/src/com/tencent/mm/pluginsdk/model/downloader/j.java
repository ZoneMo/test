package com.tencent.mm.pluginsdk.model.downloader;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.tencent.mm.sdk.platformtools.al;

public final class j
  implements l
{
  private Context mContext = al.getContext();

  public final long a(k paramk)
  {
    Uri localUri = paramk.aqo();
    Intent localIntent;
    if (localUri != null)
    {
      localIntent = new Intent("android.intent.action.VIEW", localUri);
      localIntent.addFlags(268435456);
    }
    try
    {
      this.mContext.startActivity(localIntent);
      label37: return 0L;
    }
    catch (Exception localException)
    {
      break label37;
    }
  }

  public final int bA(long paramLong)
  {
    return -1;
  }

  public final void bn(long paramLong)
  {
  }

  public final void bo(long paramLong)
  {
  }

  public final void c(n paramn)
  {
  }

  public final void d(n paramn)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.downloader.j
 * JD-Core Version:    0.6.2
 */