package com.tencent.mm.ui.conversation;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.LinearLayout;

public class ADListView extends LinearLayout
{
  private a gXK;
  private int gXL = 0;
  private ci gXM;
  private d gXN;

  public ADListView(Context paramContext)
  {
    super(paramContext);
  }

  public ADListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final void a(a parama)
  {
    this.gXK = parama;
  }

  public final void a(d paramd)
  {
    this.gXN = paramd;
  }

  public final boolean dP()
  {
    a locala = this.gXK;
    boolean bool = false;
    if (locala != null)
    {
      int i = this.gXK.getCount();
      bool = false;
      if (i > 0)
      {
        int j = this.gXK.nM(0).a(this.gXM);
        bool = false;
        if (j == 0)
          bool = true;
      }
    }
    return bool;
  }

  public void onFinishInflate()
  {
    super.onFinishInflate();
    this.gXM = new ci();
    this.gXM.hac = this;
    this.gXM.had = ((Button)findViewById(2131361931));
    this.gXM.had.setOnClickListener(new b(this));
    setOnClickListener(new c(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.conversation.ADListView
 * JD-Core Version:    0.6.2
 */