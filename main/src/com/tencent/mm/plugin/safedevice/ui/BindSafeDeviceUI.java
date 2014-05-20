package com.tencent.mm.plugin.safedevice.ui;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.ui.MMWizardActivity;

public class BindSafeDeviceUI extends MMWizardActivity
{
  protected final void FR()
  {
    mn(n.bwB);
    a(new a(this));
    ((ImageView)findViewById(i.aIE)).setImageResource(h.abw);
    ((TextView)findViewById(i.aIF)).setText(n.bwD);
    ((TextView)findViewById(i.aMT)).setText(n.bwE);
    findViewById(i.aMT).setOnClickListener(new b(this));
  }

  protected final int getLayoutId()
  {
    return k.aZf;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.BindSafeDeviceUI
 * JD-Core Version:    0.6.2
 */