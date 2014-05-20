package com.tencent.mm.ui.chatting;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.tencent.mm.ao.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ChattingAnimFrame extends FrameLayout
{
  List gLN = new ArrayList();
  int size = 0;

  public ChattingAnimFrame(Context paramContext)
  {
    super(paramContext);
  }

  public ChattingAnimFrame(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  ChattingAnimFrame(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private int getSize()
  {
    if (this.size == 0)
      return (int)(1.2D * new TextView(getContext()).getTextSize());
    return this.size;
  }

  static float o(float paramFloat1, float paramFloat2)
  {
    return paramFloat1 + (float)Math.random() * (paramFloat2 - paramFloat1);
  }

  public final void aq(View paramView)
  {
    this.gLN.remove(paramView);
    removeView(paramView);
  }

  public final void j(Activity paramActivity, int paramInt)
  {
    Iterator localIterator = this.gLN.iterator();
    while (localIterator.hasNext())
    {
      View localView = (View)localIterator.next();
      localView.clearAnimation();
      removeView(localView);
    }
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    setVisibility(0);
    for (int i = 0; i < 30; i++)
    {
      bd localbd = new bd(this, localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
      Drawable localDrawable = a.s(paramActivity, paramInt);
      if (localDrawable != null)
      {
        localDrawable.setBounds(0, 0, getSize(), getSize());
        ImageSpan localImageSpan = new ImageSpan(localDrawable, 1);
        SpannableString localSpannableString = new SpannableString("! ");
        localSpannableString.setSpan(localImageSpan, 0, 1, 33);
        TextView localTextView = new TextView(getContext());
        localTextView.setSingleLine();
        localTextView.setText(localSpannableString);
        localTextView.setAnimation(localbd);
        localTextView.setTag(localbd);
        addView(localTextView);
        ((bb)localbd).ar(localTextView);
        this.gLN.add(localTextView);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ChattingAnimFrame
 * JD-Core Version:    0.6.2
 */