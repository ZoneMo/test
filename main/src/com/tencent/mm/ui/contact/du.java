package com.tencent.mm.ui.contact;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

final class du
  implements View.OnClickListener
{
  du(SelectContactUI paramSelectContactUI)
  {
  }

  public final void onClick(View paramView)
  {
    Object localObject = paramView.getTag();
    Button localButton;
    if (localObject != null)
    {
      SelectContactUI.b(this.gVn).wN((String)localObject);
      if (!SelectContactUI.b(this.gVn).aKU())
        break label135;
      this.gVn.dg(true);
      SelectContactUI.d(this.gVn, (String)localObject);
      SelectContactUI.y(this.gVn).setText(this.gVn.getString(2131167684) + "(" + SelectContactUI.x(this.gVn) + ")");
      localButton = SelectContactUI.y(this.gVn);
      if (SelectContactUI.x(this.gVn) <= 0)
        break label146;
    }
    label135: label146: for (boolean bool = true; ; bool = false)
    {
      localButton.setEnabled(bool);
      return;
      this.gVn.dg(false);
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.du
 * JD-Core Version:    0.6.2
 */