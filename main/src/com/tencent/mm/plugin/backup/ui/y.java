package com.tencent.mm.plugin.backup.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.TextView;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashSet;

final class y
  implements View.OnClickListener
{
  y(x paramx, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    CheckBox localCheckBox = (CheckBox)paramView.getTag();
    if (!localCheckBox.isChecked())
    {
      if (!x.a(this.cMO).contains(this.cMN))
        x.a(this.cMO).add(this.cMN);
      localCheckBox.setChecked(true);
    }
    while (true)
    {
      this.cMO.If();
      ((BakChatUploadSelectUI)x.c(this.cMO)).Ih().setText(cj.K(x.b(this.cMO).a(x.a(this.cMO))));
      return;
      localCheckBox.setChecked(false);
      boolean bool = x.a(this.cMO).remove(this.cMN);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.BakChatSelectAdapter", "removeOk" + bool);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.y
 * JD-Core Version:    0.6.2
 */