package com.tencent.mm.plugin.base.stub;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.sdk.platformtools.aa;

final class g
  implements DialogInterface.OnCancelListener
{
  g(f paramf)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    try
    {
      paramDialogInterface.dismiss();
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.OAuthSession", "onCancel, ex = " + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.g
 * JD-Core Version:    0.6.2
 */