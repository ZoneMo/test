package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.o;
import com.tencent.mm.ui.base.ar;

public final class az
{
  public static void a(Context paramContext, Runnable paramRunnable)
  {
    ar localar = new ar(paramContext, o.bIO);
    LinearLayout localLinearLayout = (LinearLayout)((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(k.aTt, null);
    localLinearLayout.setMinimumWidth(10000);
    ImageButton localImageButton = (ImageButton)localLinearLayout.findViewById(i.apI);
    localar.getWindow();
    localar.setCanceledOnTouchOutside(true);
    localar.setOnDismissListener(new ba());
    localar.setOnCancelListener(new bb());
    localImageButton.setOnClickListener(new bc(localar, paramRunnable));
    localar.setContentView(localLinearLayout);
    localar.show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.az
 * JD-Core Version:    0.6.2
 */