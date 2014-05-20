package com.tencent.mm.pluginsdk.ui.chat;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import com.tencent.mm.sdk.platformtools.e;
import java.util.List;

public class AppGrid extends GridView
{
  private Context context;
  private AdapterView.OnItemClickListener dne = new a(this);
  private d fpe;
  private int fpf;
  private int fpg = 0;
  private int fph = 0;
  private int fpi;
  private int fpj;
  private b fpk;

  public AppGrid(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
  }

  public AppGrid(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
  }

  public AppGrid(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    this.fpi = paramInt1;
    this.fpf = paramInt2;
    this.fpg = paramInt3;
    this.fph = paramInt4;
    this.fpj = paramInt6;
    setNumColumns(paramInt5);
  }

  public final void a(d paramd)
  {
    this.fpe = paramd;
  }

  public final void am(List paramList)
  {
    this.fpk = new b(this, this.context, paramList);
    setBackgroundResource(0);
    setAdapter(this.fpk);
    setOnItemClickListener(this.dne);
    int i = e.a(this.context, 10.0F);
    int j = e.a(this.context, 10.0F);
    setPadding(i, e.a(this.context, 6.0F), j, 0);
  }

  public int getCount()
  {
    return -1 + this.fpk.getCount();
  }

  public final void ku(int paramInt)
  {
    if (paramInt <= 0)
      return;
    setPadding(e.a(this.context, 10.0F), paramInt, e.a(this.context, 10.0F), 0);
    setVerticalSpacing(paramInt / 2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.AppGrid
 * JD-Core Version:    0.6.2
 */