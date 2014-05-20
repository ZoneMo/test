package com.tencent.mm.ui.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.am;
import com.tencent.mm.n.ac;

final class cl
  implements DialogInterface.OnCancelListener
{
  cl(ck paramck, am paramam)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.hbZ);
    ck.a(this.hca).ea(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.cl
 * JD-Core Version:    0.6.2
 */