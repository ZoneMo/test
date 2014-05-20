package com.tencent.mm.ui.tools;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.o;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.ar;

final class v extends ar
{
  private BaseAdapter dDF;
  private View dey;
  private View gAq;
  private AdapterView.OnItemClickListener gAr;
  private View.OnClickListener hhi;
  private ListView hhw;
  private Button hhx;
  private Button hhy;
  private View.OnClickListener hhz;
  private TextView kb;
  private Context mContext;
  private String mTitle;

  public v(BrowserChooseActivity paramBrowserChooseActivity, Context paramContext)
  {
    super(paramContext, o.bIN);
    this.mContext = paramContext;
    this.dey = View.inflate(this.mContext, k.aSi, null);
    this.kb = ((TextView)this.dey.findViewById(i.amz));
    this.hhw = ((ListView)this.dey.findViewById(i.ams));
    this.hhx = ((Button)this.dey.findViewById(i.amj));
    this.hhy = ((Button)this.dey.findViewById(i.amk));
    this.gAq = this.dey.findViewById(i.amA);
  }

  public final void a(BaseAdapter paramBaseAdapter)
  {
    this.dDF = paramBaseAdapter;
  }

  public final void en(boolean paramBoolean)
  {
    if (this.hhx != null)
      this.hhx.setEnabled(paramBoolean);
    if (this.hhy != null)
      this.hhy.setEnabled(paramBoolean);
  }

  public final void onBackPressed()
  {
    this.hhl.finish();
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(this.dey);
  }

  public final void p(View.OnClickListener paramOnClickListener)
  {
    this.hhz = paramOnClickListener;
  }

  public final void q(View.OnClickListener paramOnClickListener)
  {
    this.hhi = paramOnClickListener;
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
        this.hhw.setOnItemClickListener(this.gAr);
      if (this.dDF != null)
        this.hhw.setAdapter(this.dDF);
      if (this.hhx != null)
        this.hhx.setOnClickListener(this.hhz);
      if (this.hhy != null)
        this.hhy.setOnClickListener(this.hhi);
      super.show();
      return;
      this.gAq.setVisibility(0);
      this.kb.setVisibility(0);
      this.kb.setText(this.mTitle);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.v
 * JD-Core Version:    0.6.2
 */