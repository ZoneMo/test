package com.tencent.mm.ui.gallery;

import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Gallery.LayoutParams;
import com.tencent.mm.model.ab;
import com.tencent.mm.model.y;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.platformtools.q;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.MMGallery;
import com.tencent.mm.ui.tools.MMGestureGallery;
import com.tencent.mm.ui.transmit.MsgRetransmitUI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class GestureGalleryUI extends MMActivity
  implements View.OnTouchListener, ab
{
  private AdapterView.OnItemSelectedListener dnd = new f(this);
  private MMGallery dqg;
  private MMGestureGallery dqh;
  float dqi = 0.0F;
  float dqj = 0.0F;
  boolean dqk = false;
  float dql = 1.0F;
  private y dqm;
  private List dqn = new ArrayList();
  private int dqo = -1;
  private g hcw;
  private String hcx;
  private int type = 0;

  protected final void FR()
  {
    String str1 = au.hW(getIntent().getStringExtra("nowUrl"));
    this.type = getIntent().getIntExtra("type", 0);
    String[] arrayOfString = getIntent().getStringArrayExtra("urlList");
    String str2;
    int i;
    if ((arrayOfString == null) || (arrayOfString.length == 0))
    {
      str2 = au.hW(getIntent().getStringExtra("htmlData"));
      i = 0;
    }
    while (i >= 0)
    {
      int m = str2.indexOf("weixin://viewimage/", i);
      if (m >= 0)
      {
        i = str2.indexOf("\"", m);
        if (i >= 0)
        {
          String str3 = str2.substring(m + 19, i);
          aa.d("MicroMsg.GestureGalleryUI", "start:" + m + " end:" + i + " url:" + str3);
          this.dqn.add(str3);
          continue;
          this.dqn = Arrays.asList(arrayOfString);
        }
      }
    }
    int j = 0;
    label316: int k;
    if (j < this.dqn.size())
    {
      if (str1.equals(this.dqn.get(j)))
        this.dqo = j;
    }
    else
    {
      a(new a(this));
      this.hcw = new g(this);
      if (!q.Fq())
        break label360;
      this.dqh = ((MMGestureGallery)findViewById(2131362427));
      this.dqh.setVisibility(0);
      this.dqh.setVerticalFadingEdgeEnabled(false);
      this.dqh.setHorizontalFadingEdgeEnabled(false);
      this.dqh.setAdapter(this.hcw);
      this.dqh.setSelection(this.dqo);
      this.dqh.setOnItemSelectedListener(this.dnd);
      k = getIntent().getIntExtra("nevNext", 1);
      if (1 != k)
        break label417;
      a(0, getString(2131166695), new b(this));
    }
    label360: 
    while (2 != k)
    {
      return;
      j++;
      break;
      this.dqg = ((MMGallery)findViewById(2131363485));
      this.dqg.setVisibility(0);
      this.dqg.setAdapter(this.hcw);
      this.dqg.setSelection(this.dqo);
      this.dqg.setOnItemSelectedListener(this.dnd);
      break label316;
    }
    label417: a(0, 2130838978, new c(this));
  }

  protected final int getLayoutId()
  {
    return 2130903616;
  }

  public final void m(String paramString, int paramInt)
  {
    if (this.hcw != null)
      if (!q.Fq())
        break label46;
    label46: for (int i = this.dqh.getSelectedItemPosition(); ; i = this.dqg.getSelectedItemPosition())
    {
      if (paramInt == i)
        this.hcx = y.l(paramString, this.type);
      this.hcw.notifyDataSetChanged();
      return;
    }
  }

  protected final void mU(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return;
    Intent localIntent = new Intent(this, MsgRetransmitUI.class);
    localIntent.putExtra("Retr_File_Name", paramString);
    localIntent.putExtra("Retr_Msg_Type", 0);
    localIntent.putExtra("Retr_Compress_Type", 0);
    startActivity(localIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.dqm = new y();
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.dqm.tV();
  }

  public void onPause()
  {
    super.onPause();
    y localy = this.dqm;
    aa.d("MicroMsg.GetPicService", "removeListener :" + hashCode());
    localy.chU = null;
  }

  public void onResume()
  {
    super.onResume();
    y localy = this.dqm;
    aa.d("MicroMsg.GetPicService", "addListener :" + hashCode());
    localy.chU = this;
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = 1;
    aa.d("MicroMsg.GestureGalleryUI", "Main onTouch event.getAction():" + paramMotionEvent.getAction());
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 3:
    case 4:
    default:
    case 5:
    case 2:
    case 6:
    }
    while (true)
    {
      i = 0;
      float f1;
      do
      {
        return i;
        this.dqi = q.j(paramMotionEvent);
        if (this.dqi <= 5.0F)
          break;
        this.dqk = i;
        break;
        if (!this.dqk)
          break;
        this.dqj = q.j(paramMotionEvent);
        if (this.dqj < 5.0F)
          break;
        f1 = this.dqj - this.dqi;
        if (f1 == 0.0F)
          break;
      }
      while (Math.abs(f1) <= 5.0F);
      float f2 = f1 / 854.0F;
      ScaleAnimation localScaleAnimation = new ScaleAnimation(this.dql, f2 + this.dql, this.dql, f2 + this.dql, i, 0.5F, i, 0.5F);
      localScaleAnimation.setDuration(100L);
      localScaleAnimation.setFillAfter(i);
      localScaleAnimation.setFillEnabled(i);
      this.dql = (f2 + this.dql);
      this.dqg.getSelectedView().setLayoutParams(new Gallery.LayoutParams((int)(480.0F * this.dql), (int)(854.0F * this.dql)));
      this.dqi = this.dqj;
      return i;
      this.dqk = false;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.gallery.GestureGalleryUI
 * JD-Core Version:    0.6.2
 */