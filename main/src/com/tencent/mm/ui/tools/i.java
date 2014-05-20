package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.tencent.mm.n;

final class i extends AsyncTask
{
  private String filePath;
  private ProgressDialog hgL;
  private boolean hgM;
  private Uri uri;

  i(Intent paramIntent1, Activity paramActivity, String paramString, Intent paramIntent2, int paramInt)
  {
  }

  private Integer aML()
  {
    try
    {
      if (this.uri == null)
        return null;
      Bitmap localBitmap = com.tencent.mm.sdk.platformtools.h.g(this.uri);
      this.filePath = h.r(this.hgO, localBitmap);
      return null;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  protected final void onPreExecute()
  {
    try
    {
      this.uri = this.dLF.getData();
      this.hgM = false;
      Activity localActivity = this.hgN;
      this.hgN.getString(n.ber);
      this.hgL = com.tencent.mm.ui.base.h.a(localActivity, this.hgN.getString(n.bdZ), true, new j(this));
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.i
 * JD-Core Version:    0.6.2
 */