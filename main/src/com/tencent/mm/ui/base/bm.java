package com.tencent.mm.ui.base;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.o;
import com.tencent.mm.sdk.platformtools.cj;

public final class bm extends ar
{
  private BaseAdapter dDF;
  private ListView dbd;
  private View dey;
  private View gAq;
  private AdapterView.OnItemClickListener gAr;
  private TextView kb;
  private Context mContext;
  private String mTitle;

  public bm(Context paramContext)
  {
    super(paramContext, o.bIN);
    this.mContext = paramContext;
    this.dey = View.inflate(this.mContext, k.aWy, null);
    this.gAq = this.dey.findViewById(i.aNg);
    this.kb = ((TextView)this.dey.findViewById(i.title));
    this.dbd = ((ListView)this.dey.findViewById(i.list));
  }

  public final void a(BaseAdapter paramBaseAdapter)
  {
    this.dDF = paramBaseAdapter;
  }

  public final void dismiss()
  {
    super.dismiss();
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(this.dey);
  }

  public final void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.gAr = paramOnItemClickListener;
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      this.mTitle = paramCharSequence.toString();
      return;
    }
    this.mTitle = null;
  }

  public final void show()
  {
    if (cj.hX(this.mTitle))
    {
      this.gAq.setVisibility(8);
      this.kb.setVisibility(8);
    }
    while (true)
    {
      if (this.gAr != null)
        this.dbd.setOnItemClickListener(this.gAr);
      if (this.dDF != null)
        this.dbd.setAdapter(this.dDF);
      super.show();
      return;
      this.gAq.setVisibility(0);
      this.kb.setVisibility(0);
      this.kb.setText(this.mTitle);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bm
 * JD-Core Version:    0.6.2
 */