package com.tencent.mm.ui.base;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;

final class dt
{
  public static int gCM = 0;
  private static Toast toast = null;

  public static void y(Context paramContext, int paramInt)
  {
    Context localContext = paramContext.getApplicationContext();
    if (gCM != paramInt)
    {
      toast = null;
      gCM = paramInt;
    }
    if (toast == null)
      toast = Toast.makeText(localContext, "", 1);
    View localView = View.inflate(localContext, k.aYX, null);
    if (paramInt == 1)
      ((TextView)localView.findViewById(i.aIo)).setText(n.bru);
    while (true)
    {
      toast.setView(localView);
      toast.show();
      return;
      if (paramInt == 3)
        ((TextView)localView.findViewById(i.aIo)).setText(n.brv);
      else
        ((TextView)localView.findViewById(i.aIo)).setText(n.brw);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.dt
 * JD-Core Version:    0.6.2
 */