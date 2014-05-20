package com.tencent.mm.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint.FontMetrics;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import com.tencent.mm.pluginsdk.ui.a;
import com.tencent.mm.pluginsdk.ui.b;
import com.tencent.mm.pluginsdk.ui.f;

public class AddressView extends View
  implements b, f
{
  public final int AVATAR_LAYOUT_WIDTH = getResources().getDimensionPixelSize(2131558464);
  public final int AVATAR_PADDING = getResources().getDimensionPixelSize(2131558428);
  public final int AVATAR_START_POS = 0;
  public final int AVATAR_WIDTH = getResources().getDimensionPixelSize(2131558464);
  public final int COMMON_PADDING = 0;
  public final float NAME_TEXT_SIZE = getResources().getDimensionPixelSize(2131558419);
  public final int WEIBO_ICON_SIZE = getResources().getDimensionPixelSize(2131558438);
  Drawable avatarDrawable;
  Context context;
  float density;
  CharSequence destNickName;
  private TextPaint displayNamePaint;
  Drawable drawable = getResources().getDrawable(2130839298);
  private Paint.FontMetrics fm;
  boolean imageViewHasSetBounds;
  StaticLayout layout;
  boolean nameIsSpanned;
  boolean needInvaildate;
  boolean needInvaliate;
  BitmapDrawable needMask;
  boolean needUpdatePostion = true;
  CharSequence nickName;
  private int nickNameCurrentTextColor;
  int nickNameHeight;
  private ColorStateList nickNameTextColor;
  int nickNameWidth;
  StaticLayout nickNamelayout;
  int nickWidth;
  float textBaseY;

  public AddressView(Context paramContext)
  {
    this(paramContext, null, 0);
  }

  public AddressView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public AddressView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public static int dip2px(Context paramContext, float paramFloat)
  {
    return (int)(0.5F + paramFloat * paramContext.getResources().getDisplayMetrics().density);
  }

  private TextPaint generateOnePaint()
  {
    TextPaint localTextPaint = new TextPaint();
    localTextPaint.setAntiAlias(true);
    localTextPaint.setTextSize(this.NAME_TEXT_SIZE);
    localTextPaint.setColor(getResources().getColor(2131492907));
    return localTextPaint;
  }

  private void updateDrawableBounds()
  {
    this.avatarDrawable.setBounds(this.AVATAR_START_POS, (getHeight() - this.AVATAR_WIDTH) / 2, this.AVATAR_START_POS + this.AVATAR_WIDTH, (getHeight() - this.AVATAR_WIDTH) / 2 + this.AVATAR_WIDTH);
    this.needMask.setBounds(this.AVATAR_START_POS + this.AVATAR_WIDTH - this.needMask.getIntrinsicWidth() / 2, (getHeight() - this.AVATAR_WIDTH) / 2 + this.AVATAR_WIDTH - this.needMask.getIntrinsicHeight() / 2 - 2 * this.COMMON_PADDING, this.AVATAR_START_POS + this.AVATAR_WIDTH + this.needMask.getIntrinsicWidth() / 2, (getHeight() - this.AVATAR_WIDTH) / 2 + this.AVATAR_WIDTH - this.needMask.getIntrinsicHeight() / 2 - 2 * this.COMMON_PADDING + this.needMask.getIntrinsicHeight());
  }

  public void doInvalidate()
  {
    invalidate();
  }

  protected void drawableStateChanged()
  {
    updateTextColors();
    super.drawableStateChanged();
  }

  public int fromDPToPix(Context paramContext, int paramInt)
  {
    return Math.round(getDensity(paramContext) * paramInt);
  }

  public float getDensity(Context paramContext)
  {
    if (paramContext == null)
      paramContext = getContext();
    if (this.density < 0.0F)
      this.density = paramContext.getResources().getDisplayMetrics().density;
    return this.density;
  }

  public float getDesiredWidth(CharSequence paramCharSequence, TextPaint paramTextPaint)
  {
    if ((paramCharSequence instanceof Spanned))
      return Layout.getDesiredWidth(paramCharSequence, paramTextPaint);
    return paramTextPaint.measureText(paramCharSequence, 0, paramCharSequence.length());
  }

  public Drawable getDrawable()
  {
    return this.avatarDrawable;
  }

  public float getNickNameSize()
  {
    return this.NAME_TEXT_SIZE;
  }

  public int getTextAreaWidth()
  {
    return getMeasuredWidth() - this.AVATAR_LAYOUT_WIDTH - this.AVATAR_PADDING;
  }

  public void invalidateDrawable(Drawable paramDrawable)
  {
    invalidate();
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    updatePosition();
    if (this.avatarDrawable != null)
      this.avatarDrawable.draw(paramCanvas);
    if (this.needMask != null)
      this.needMask.draw(paramCanvas);
    if (this.nameIsSpanned)
    {
      paramCanvas.save();
      paramCanvas.translate(this.AVATAR_LAYOUT_WIDTH + this.AVATAR_PADDING, (getHeight() - this.nickNameHeight) / 2);
      this.nickNamelayout.draw(paramCanvas);
      paramCanvas.restore();
    }
    while (this.destNickName == null)
      return;
    paramCanvas.drawText(this.destNickName, 0, this.destNickName.length(), this.AVATAR_LAYOUT_WIDTH + this.AVATAR_PADDING, (getHeight() - (this.fm.bottom - this.fm.top)) / 2.0F - this.fm.top, this.displayNamePaint);
  }

  @TargetApi(14)
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    try
    {
      CharSequence localCharSequence = this.nickName;
      if (!TextUtils.isEmpty(localCharSequence))
        paramAccessibilityNodeInfo.setText(localCharSequence);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void onScrollStateChanged(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      stopAvatarLoad();
      return;
    }
    resumeAvatarLoad();
  }

  public void resumeAvatarLoad()
  {
    if (this.avatarDrawable != null)
      ((a)this.avatarDrawable).ars();
  }

  public void setImageDrawable(Drawable paramDrawable)
  {
    this.avatarDrawable = paramDrawable;
    if (paramDrawable != null)
      this.avatarDrawable.setCallback(this);
  }

  public void setMaskBitmap(Bitmap paramBitmap)
  {
    this.needMask = new BitmapDrawable(getResources(), paramBitmap);
  }

  public void setName(CharSequence paramCharSequence)
  {
    if ((this.nickName == null) || (!this.nickName.equals(paramCharSequence)))
      this.needInvaildate = true;
    this.nickName = paramCharSequence;
    this.nameIsSpanned = (paramCharSequence instanceof Spanned);
    if (this.displayNamePaint == null)
      this.displayNamePaint = generateOnePaint();
    if (this.fm == null)
      this.fm = this.displayNamePaint.getFontMetrics();
  }

  public void setNickNameTextColor(ColorStateList paramColorStateList)
  {
    this.nickNameTextColor = paramColorStateList;
  }

  public void stopAvatarLoad()
  {
    if (this.avatarDrawable != null)
      ((a)this.avatarDrawable).arr();
  }

  public void updateDrawBounds()
  {
    updateDrawableBounds();
  }

  public void updatePosition()
  {
    if (!this.needUpdatePostion)
      return;
    this.nickNameWidth = (getTextAreaWidth() - getPaddingLeft() - getPaddingRight());
    if ((int)getDesiredWidth(this.nickName, this.displayNamePaint) > this.nickNameWidth)
    {
      this.destNickName = TextUtils.ellipsize(this.nickName, this.displayNamePaint, this.nickNameWidth, TextUtils.TruncateAt.END);
      if (!(this.nickName instanceof Spanned))
        break label157;
      this.nickNamelayout = new StaticLayout(this.destNickName, this.displayNamePaint, getWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, true);
    }
    for (this.nickNameHeight = this.nickNamelayout.getHeight(); ; this.nickNameHeight = (2 + (int)Math.ceil(this.fm.descent - this.fm.top)))
    {
      updateDrawBounds();
      this.needUpdatePostion = false;
      return;
      this.destNickName = this.nickName;
      this.nickNameWidth = ((int)getDesiredWidth(this.destNickName, this.displayNamePaint));
      break;
      label157: this.nickNamelayout = null;
    }
  }

  public void updatePositionFlag()
  {
    this.needUpdatePostion = true;
    if (this.needInvaildate)
    {
      invalidate();
      this.needInvaildate = false;
    }
  }

  public void updateTextColors()
  {
    int i = this.nickNameTextColor.getColorForState(getDrawableState(), 0);
    if (i != this.nickNameCurrentTextColor)
    {
      this.nickNameCurrentTextColor = i;
      if (this.displayNamePaint == null)
        this.displayNamePaint = generateOnePaint();
      this.displayNamePaint.setColor(this.nickNameCurrentTextColor);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.AddressView
 * JD-Core Version:    0.6.2
 */