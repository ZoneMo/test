package com.tencent.mm.ui;

import android.content.Context;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.network.bm;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.af;
import com.tencent.mm.sdk.platformtools.am;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.base.aa;
import com.tencent.mm.ui.base.x;

public final class cx
{
  public static boolean a(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    switch (paramInt1)
    {
    default:
      return false;
    case 1:
      int i;
      if ((((paramInt3 & 0x2) == 0) || (!be.uA().wT()) || (!af.k(paramContext, be.uA().getNetworkServerIp(), String.valueOf(paramInt2)))) && (((paramInt3 & 0x1) == 0) || (!bm.ac(paramContext)) || (!af.aZ(paramContext))))
        if (((paramInt3 & 0x4) != 0) && (ba.br(paramContext)))
        {
          if (be.se())
            break label149;
          i = 0;
        }
      while (true)
      {
        if (i == 0)
        {
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(1);
          arrayOfObject2[1] = Integer.valueOf(paramInt2);
          Toast.makeText(paramContext, paramContext.getString(2131165275, arrayOfObject2), 1).show();
        }
        return true;
        if (au.c((Boolean)be.uz().sr().get(61)))
        {
          i = 0;
        }
        else if (!am.sE("show_wap_adviser"))
        {
          i = 0;
        }
        else
        {
          View localView = View.inflate(paramContext, 2130903574, null);
          ((TextView)localView.findViewById(2131363341)).setText(2131167108);
          CheckBox localCheckBox = (CheckBox)localView.findViewById(2131363343);
          localCheckBox.setText(paramContext.getString(2131167099));
          localCheckBox.setOnCheckedChangeListener(new cg());
          localCheckBox.setVisibility(0);
          aa localaa = new aa(paramContext);
          localaa.mR(2131167675);
          localaa.ai(localView);
          localaa.b(2131167097, new ch(paramContext));
          localaa.dp(false);
          localaa.c(2131167098, null);
          localaa.a(new ci());
          localaa.aGI().show();
          i = 1;
        }
      }
    case 2:
      label149: Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(2);
      arrayOfObject1[1] = Integer.valueOf(paramInt2);
      Toast.makeText(paramContext, paramContext.getString(2131165276, arrayOfObject1), 1).show();
      return true;
    case 3:
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.cx
 * JD-Core Version:    0.6.2
 */