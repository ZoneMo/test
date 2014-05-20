package com.tencent.mm.ui.contact;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.ui.base.MaskLayout;
import java.io.IOException;

public class ChatroomContactEntranceView extends RelativeLayout
{
  private Context context;
  private View fng = null;
  private View gTh = null;

  public ChatroomContactEntranceView(Context paramContext)
  {
    super(paramContext);
    this.context = paramContext;
    init();
  }

  public ChatroomContactEntranceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.context = paramContext;
    init();
  }

  public ChatroomContactEntranceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.context = paramContext;
    init();
  }

  private void init()
  {
    View.inflate(getContext(), 2130903142, this);
    this.fng = findViewById(2131362131);
    this.gTh = this.fng.findViewById(2131362202);
    this.gTh.setOnClickListener(new at(this));
    this.gTh.setOnTouchListener(new au(this));
    ImageView localImageView = (ImageView)((MaskLayout)this.gTh.findViewById(2131362203)).getContentView();
    try
    {
      Bitmap localBitmap1 = h.decodeStream(getContext().getAssets().open("avatar/default_chatroom.png"));
      Bitmap localBitmap2 = Bitmap.createScaledBitmap(localBitmap1, 96, 96, true);
      localBitmap1.recycle();
      localImageView.setImageBitmap(h.a(localBitmap2, true, 1.0F));
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  public final void setVisible(boolean paramBoolean)
  {
    View localView = this.fng;
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ChatroomContactEntranceView
 * JD-Core Version:    0.6.2
 */