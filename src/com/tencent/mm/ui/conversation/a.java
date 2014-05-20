package com.tencent.mm.ui.conversation;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.tencent.mm.ac.b;
import com.tencent.mm.ui.bc;
import java.util.ArrayList;

final class a extends bc
{
  private b gXJ = null;
  private ArrayList gtr = new ArrayList();

  public a(Context paramContext)
  {
    super(paramContext, null);
    Ga();
  }

  public final void FZ()
  {
    this.gtr.clear();
    if (this.gXJ == null)
      return;
    bz localbz = new bz(this.gXJ);
    this.gtr.add(localbz);
    notifyDataSetChanged();
  }

  protected final void Ga()
  {
    FZ();
  }

  public final void a(b paramb)
  {
    this.gXJ = paramb;
  }

  public final int getCount()
  {
    return this.gtr.size();
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    bz localbz = (bz)this.gtr.get(paramInt);
    ci localci2;
    if (paramView == null)
    {
      paramView = View.inflate(this.context, 2130903073, null);
      localci2 = new ci();
      localci2.hac = paramView;
      localci2.had = ((Button)paramView.findViewById(2131361931));
      paramView.setTag(localci2);
    }
    for (ci localci1 = localci2; ; localci1 = (ci)paramView.getTag())
    {
      if (localbz.a(localci1) != 0)
        paramView = null;
      return paramView;
    }
  }

  public final bz nM(int paramInt)
  {
    return (bz)this.gtr.get(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.a
 * JD-Core Version:    0.6.2
 */