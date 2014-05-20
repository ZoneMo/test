package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.mm.i;
import com.tencent.mm.k;
import java.util.HashMap;
import java.util.Map;

public class MMPageControlView extends LinearLayout
{
  private Context context;
  private int count;
  private ImageView dcQ;
  private int gAI = k.aXq;
  private Map map = new HashMap();

  public MMPageControlView(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
  }

  public MMPageControlView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
  }

  private void ni(int paramInt)
  {
    removeAllViews();
    if (paramInt >= this.count)
      return;
    int i = this.count;
    int j = 0;
    label20: if (j < i)
    {
      if (paramInt != j)
        break label137;
      this.dcQ = ((ImageView)this.map.get(Integer.valueOf(j)));
      if (this.dcQ == null)
      {
        this.dcQ = ((ImageView)View.inflate(this.context, this.gAI, null).findViewById(i.aBD));
        this.map.put(Integer.valueOf(j), this.dcQ);
      }
      this.dcQ.setSelected(true);
    }
    while (true)
    {
      if (j == 0)
        this.dcQ.setPadding(0, 0, 0, 0);
      addView(this.dcQ);
      j++;
      break label20;
      break;
      label137: this.dcQ = ((ImageView)this.map.get(Integer.valueOf(j)));
      if (this.dcQ == null)
      {
        this.dcQ = ((ImageView)View.inflate(this.context, this.gAI, null).findViewById(i.aBD));
        this.map.put(Integer.valueOf(j), this.dcQ);
      }
      this.dcQ.setSelected(false);
    }
  }

  public final void bj(int paramInt1, int paramInt2)
  {
    this.count = paramInt1;
    ni(paramInt2);
  }

  public final void ng(int paramInt)
  {
    ni(paramInt);
  }

  public final void nh(int paramInt)
  {
    this.gAI = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMPageControlView
 * JD-Core Version:    0.6.2
 */