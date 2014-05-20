package com.tencent.mm.console;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.ClipboardManager;
import android.widget.Toast;

final class e
  implements DialogInterface.OnClickListener
{
  e(Context paramContext, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((ClipboardManager)this.cfR.getSystemService("clipboard")).setText(this.cfS);
    Toast.makeText(this.cfR, 2131168883, 0).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.console.e
 * JD-Core Version:    0.6.2
 */