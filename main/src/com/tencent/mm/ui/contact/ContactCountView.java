package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.k;

public class ContactCountView extends FrameLayout
{
  private int count = 0;
  private View fng;
  private TextView gTn;
  private int gTo = 1;
  private boolean visible = true;

  public ContactCountView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public ContactCountView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  private void init()
  {
    inflate(getContext(), 2130903218, this);
  }

  public final void aKx()
  {
    this.gTo = 2;
  }

  public final void aKy()
  {
    String[] arrayOfString1 = w.chR;
    if (this.gTo == 1)
    {
      k localk2 = be.uz().su();
      String[] arrayOfString3 = new String[4];
      arrayOfString3[0] = v.th();
      arrayOfString3[1] = "weixin";
      arrayOfString3[2] = "helper_entry";
      arrayOfString3[3] = "filehelper";
      this.count = localk2.b(arrayOfString1, arrayOfString3);
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(this.count);
      aa.e("MicroMsg.ContactCountView", "contact count %d", arrayOfObject1);
      if (this.gTn != null)
      {
        if (this.gTo != 1)
          break label213;
        TextView localTextView2 = this.gTn;
        Resources localResources2 = getContext().getResources();
        int j = this.count;
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Integer.valueOf(this.count);
        localTextView2.setText(localResources2.getQuantityString(2131230726, j, arrayOfObject3));
      }
    }
    while (true)
    {
      setVisible(this.visible);
      return;
      k localk1 = be.uz().su();
      String[] arrayOfString2 = new String[4];
      arrayOfString2[0] = v.th();
      arrayOfString2[1] = "weixin";
      arrayOfString2[2] = "helper_entry";
      arrayOfString2[3] = "filehelper";
      this.count = localk1.c(arrayOfString1, arrayOfString2);
      break;
      label213: TextView localTextView1 = this.gTn;
      Resources localResources1 = getContext().getResources();
      int i = this.count;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(this.count);
      localTextView1.setText(localResources1.getQuantityString(2131230727, i, arrayOfObject2));
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    aa.d("MicroMsg.ContactCountView", "onMeasure");
    if (this.fng == null)
    {
      this.fng = ((FrameLayout)findViewById(2131362383));
      this.gTn = ((TextView)findViewById(2131362384));
    }
    aKy();
    super.onMeasure(paramInt1, paramInt2);
  }

  public final void setVisible(boolean paramBoolean)
  {
    this.visible = paramBoolean;
    View localView;
    if (this.fng != null)
    {
      localView = this.fng;
      if ((!paramBoolean) || (this.count <= 0))
        break label36;
    }
    label36: for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ContactCountView
 * JD-Core Version:    0.6.2
 */