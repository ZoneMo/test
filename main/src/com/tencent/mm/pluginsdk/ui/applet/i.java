package com.tencent.mm.pluginsdk.ui.applet;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.ao.b;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.ce;
import junit.framework.Assert;

public final class i
{
  private static ce X(View paramView)
  {
    ce localce = new ce(paramView, -1, -1);
    localce.setFocusable(true);
    localce.setTouchable(true);
    return localce;
  }

  public static ce a(Activity paramActivity, Bitmap paramBitmap, String paramString, r paramr)
  {
    View localView = g(paramActivity, com.tencent.mm.k.aTk);
    ce localce = X(localView);
    a(localView, paramr, localce);
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.MMConfirmDialog", "showDialogItem7 fail, message is empty");
      return null;
    }
    TextView localTextView = (TextView)localView.findViewById(com.tencent.mm.i.apW);
    localTextView.setText(b.e(paramActivity, paramString, (int)localTextView.getTextSize()));
    Button localButton = (Button)localView.findViewById(com.tencent.mm.i.apQ);
    a(localce, localView, com.tencent.mm.i.apZ, paramBitmap, true);
    localButton.setOnClickListener(new j(paramr, localView, localce));
    a(paramActivity, localce);
    return localce;
  }

  public static ce a(Activity paramActivity, String paramString1, String paramString2, r paramr1, r paramr2)
  {
    View localView = g(paramActivity, com.tencent.mm.k.aTi);
    ce localce = X(localView);
    ((Button)localView.findViewById(com.tencent.mm.i.apQ)).setOnClickListener(new n(paramr1, localView, localce));
    ((Button)localView.findViewById(com.tencent.mm.i.apS)).setOnClickListener(new o(paramr2, localView, localce));
    a(localView, com.tencent.mm.i.apQ, paramString1);
    a(localView, com.tencent.mm.i.apS, paramString2);
    ((Button)localView.findViewById(com.tencent.mm.i.apS)).setVisibility(0);
    a(paramActivity, localce);
    return localce;
  }

  public static ce a(Activity paramActivity, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, r paramr)
  {
    View localView = g(paramActivity, com.tencent.mm.k.aTl);
    ce localce = X(localView);
    a(localView, paramr, localce);
    if (cj.hX(paramString2))
    {
      aa.e("MicroMsg.MMConfirmDialog", "showDialogItem8 fail,title or  message is empty");
      return null;
    }
    a(localView, com.tencent.mm.i.aqb, paramString2, false, 0);
    TextView localTextView = (TextView)localView.findViewById(com.tencent.mm.i.apW);
    if (!cj.hX(paramString1))
      localTextView.setText(b.e(paramActivity, w.cu(paramString1), (int)localTextView.getTextSize()));
    while (true)
    {
      a(localView, com.tencent.mm.i.apU, paramString4, true, 8);
      Button localButton = (Button)localView.findViewById(com.tencent.mm.i.apQ);
      if (!cj.hX(paramString5))
        localButton.setText(paramString5);
      localButton.setOnClickListener(new k(paramr, localView, localce));
      if (!cj.hX(paramString1))
        com.tencent.mm.pluginsdk.ui.c.a((ImageView)localView.findViewById(com.tencent.mm.i.apZ), paramString1);
      a(paramActivity, localce);
      return localce;
      localTextView.setText(b.e(paramActivity, paramString3, (int)localTextView.getTextSize()));
    }
  }

  public static ce a(MMActivity paramMMActivity, int paramInt, String paramString1, String paramString2, String paramString3, boolean paramBoolean, r paramr)
  {
    return a(paramMMActivity, paramInt, paramString1, paramString2, paramString3, paramBoolean, "", paramr);
  }

  public static ce a(MMActivity paramMMActivity, int paramInt, String paramString1, String paramString2, String paramString3, boolean paramBoolean, String paramString4, r paramr)
  {
    View localView = g(paramMMActivity, com.tencent.mm.k.aTh);
    ce localce = X(localView);
    a(localView, paramr, localce);
    a(localView, paramBoolean);
    a(localView, paramMMActivity);
    if (!cj.hX(paramString4))
      a(localView, com.tencent.mm.i.apQ, paramString4);
    TextView localTextView1 = (TextView)localView.findViewById(com.tencent.mm.i.aqb);
    localTextView1.setText(b.e(paramMMActivity, paramString1, (int)localTextView1.getTextSize()));
    TextView localTextView2 = (TextView)localView.findViewById(com.tencent.mm.i.apW);
    localTextView2.setText(b.e(paramMMActivity, paramString2, (int)localTextView2.getTextSize()));
    TextView localTextView3 = (TextView)localView.findViewById(com.tencent.mm.i.apX);
    ImageView localImageView;
    if ((paramString3 == null) || (paramString3.length() == 0))
    {
      localTextView3.setVisibility(8);
      localImageView = (ImageView)localView.findViewById(com.tencent.mm.i.apZ);
      if (localImageView != null)
      {
        if (paramInt <= 0)
          break label204;
        localImageView.setImageResource(paramInt);
      }
    }
    while (true)
    {
      a(paramMMActivity, localce);
      return localce;
      localTextView3.setText(paramString3);
      localTextView3.setVisibility(0);
      break;
      label204: localImageView.setVisibility(8);
    }
  }

  public static ce a(MMActivity paramMMActivity, Bitmap paramBitmap, String paramString1, String paramString2, String paramString3, r paramr)
  {
    View localView = g(paramMMActivity, com.tencent.mm.k.aTh);
    ce localce = X(localView);
    a(localView, paramr, localce);
    a(localView, true);
    a(localView, paramMMActivity);
    TextView localTextView1 = (TextView)localView.findViewById(com.tencent.mm.i.aqb);
    localTextView1.setText(b.e(paramMMActivity, paramString1, (int)localTextView1.getTextSize()));
    TextView localTextView2 = (TextView)localView.findViewById(com.tencent.mm.i.apW);
    localTextView2.setText(b.e(paramMMActivity, paramString2, (int)localTextView2.getTextSize()));
    TextView localTextView3 = (TextView)localView.findViewById(com.tencent.mm.i.apX);
    ImageView localImageView;
    if ((paramString3 == null) || (paramString3.length() == 0))
    {
      localTextView3.setVisibility(8);
      localImageView = (ImageView)localView.findViewById(com.tencent.mm.i.apZ);
      if (localImageView != null)
      {
        if ((paramBitmap != null) && (!paramBitmap.isRecycled()))
          break label196;
        aa.w("MicroMsg.MMConfirmDialog", "showDialogItem4, thumbBmp is null or recycled");
        localImageView.setVisibility(8);
      }
    }
    while (true)
    {
      a(paramMMActivity, localce);
      return localce;
      localTextView3.setText(paramString3);
      localTextView3.setVisibility(0);
      break;
      label196: localImageView.setVisibility(0);
      localImageView.setImageBitmap(paramBitmap);
      a(localce, paramBitmap);
    }
  }

  public static ce a(MMActivity paramMMActivity, String paramString1, Bitmap paramBitmap, String paramString2, String paramString3, int paramInt, boolean paramBoolean, r paramr)
  {
    if (((paramString1 == null) || (paramString1.length() == 0)) && ((paramString2 == null) || (paramString2.length() == 0)))
    {
      aa.e("MicroMsg.MMConfirmDialog", "showDialogItem6 fail, title message both are empty");
      return null;
    }
    View localView = g(paramMMActivity, com.tencent.mm.k.aTj);
    ce localce = X(localView);
    a(localView, paramr, localce);
    a(localView, false);
    a(localView, paramMMActivity);
    ((Button)localView.findViewById(com.tencent.mm.i.apQ)).setText(paramInt);
    TextView localTextView1 = (TextView)localView.findViewById(com.tencent.mm.i.aqb);
    localTextView1.setText(b.e(paramMMActivity, paramString1, (int)localTextView1.getTextSize()));
    TextView localTextView2 = (TextView)localView.findViewById(com.tencent.mm.i.apW);
    localTextView2.setText(b.e(paramMMActivity, paramString2, (int)localTextView2.getTextSize()));
    ImageView localImageView;
    if ((paramString3 == null) || (paramString3.length() == 0))
    {
      localView.findViewById(com.tencent.mm.i.apX).setVisibility(8);
      localImageView = (ImageView)localView.findViewById(com.tencent.mm.i.apZ);
      if (localImageView != null)
      {
        if ((paramBitmap == null) || (paramBitmap.isRecycled()))
          break label257;
        localImageView.setImageBitmap(paramBitmap);
        a(localce, paramBitmap);
      }
    }
    while (true)
    {
      if (paramBoolean)
        ((ImageView)localView.findViewById(com.tencent.mm.i.apP)).setVisibility(0);
      a(paramMMActivity, localce);
      return localce;
      ((TextView)localView.findViewById(com.tencent.mm.i.apX)).setText(paramString3);
      break;
      label257: localImageView.setVisibility(4);
    }
  }

  public static ce a(MMActivity paramMMActivity, String paramString1, String paramString2, String paramString3, String paramString4, r paramr)
  {
    if (((paramString1 == null) || (paramString1.length() == 0)) && ((paramString3 == null) || (paramString3.length() == 0)))
    {
      aa.e("MicroMsg.MMConfirmDialog", "showDialogItem1 fail, title message both are empty");
      return null;
    }
    View localView = g(paramMMActivity, com.tencent.mm.k.aTe);
    ce localce = X(localView);
    a(localView, paramr, localce);
    a(localView, true);
    a(localView, paramMMActivity);
    if (paramString4 != null)
      ((Button)localView.findViewById(com.tencent.mm.i.apQ)).setText(paramString4);
    TextView localTextView1 = (TextView)localView.findViewById(com.tencent.mm.i.aqb);
    localTextView1.setText(b.e(paramMMActivity, paramString1, (int)localTextView1.getTextSize()));
    if (paramString1.length() == 0)
    {
      localTextView1.setVisibility(8);
      localView.findViewById(com.tencent.mm.i.aqa).setVisibility(8);
    }
    TextView localTextView2 = (TextView)localView.findViewById(com.tencent.mm.i.apW);
    localTextView2.setText(b.e(paramMMActivity, paramString3, (int)localTextView2.getTextSize()));
    localView.findViewById(com.tencent.mm.i.apX).setVisibility(8);
    int i = e.a(paramMMActivity, 120.0F);
    CdnImageView localCdnImageView = (CdnImageView)localView.findViewById(com.tencent.mm.i.apZ);
    if (localCdnImageView != null)
      localCdnImageView.t(paramString2, i, i);
    a(paramMMActivity, localce);
    return localce;
  }

  public static ce a(MMActivity paramMMActivity, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, r paramr)
  {
    if (((paramString1 == null) || (paramString1.length() == 0)) && ((paramString3 == null) || (paramString3.length() == 0)))
    {
      aa.e("MicroMsg.MMConfirmDialog", "showDialogItem1 fail, title message both are empty");
      return null;
    }
    View localView = g(paramMMActivity, com.tencent.mm.k.aTe);
    ce localce = X(localView);
    a(localView, paramr, localce);
    if (localView != null)
    {
      EditText localEditText = (EditText)localView.findViewById(com.tencent.mm.i.apY);
      if (localEditText != null)
        localEditText.setVisibility(0);
      localEditText.setText(paramString4);
    }
    a(localView, paramMMActivity);
    if (paramString5 != null)
      ((Button)localView.findViewById(com.tencent.mm.i.apQ)).setText(paramString5);
    TextView localTextView1 = (TextView)localView.findViewById(com.tencent.mm.i.aqb);
    localTextView1.setText(b.e(paramMMActivity, paramString1, (int)localTextView1.getTextSize()));
    if (paramString1.length() == 0)
    {
      localTextView1.setVisibility(8);
      localView.findViewById(com.tencent.mm.i.aqa).setVisibility(8);
    }
    TextView localTextView2 = (TextView)localView.findViewById(com.tencent.mm.i.apW);
    localTextView2.setText(b.e(paramMMActivity, paramString3, (int)localTextView2.getTextSize()));
    localView.findViewById(com.tencent.mm.i.apX).setVisibility(8);
    int i = e.a(paramMMActivity, 120.0F);
    CdnImageView localCdnImageView = (CdnImageView)localView.findViewById(com.tencent.mm.i.apZ);
    if (localCdnImageView != null)
      localCdnImageView.t(paramString2, i, i);
    a(paramMMActivity, localce);
    return localce;
  }

  public static ce a(MMActivity paramMMActivity, String paramString1, String paramString2, boolean paramBoolean, r paramr)
  {
    return a(paramMMActivity, paramString1, paramString2, paramBoolean, "", paramr);
  }

  public static ce a(MMActivity paramMMActivity, String paramString1, String paramString2, boolean paramBoolean, String paramString3, r paramr)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      aa.e("MicroMsg.MMConfirmDialog", "showDialogItem2 fail, message is empty");
      return null;
    }
    View localView = g(paramMMActivity, com.tencent.mm.k.aTf);
    ce localce = X(localView);
    a(localView, paramr, localce);
    a(localView, paramBoolean);
    a(localView, paramMMActivity);
    if (!cj.hX(paramString3))
      a(localView, com.tencent.mm.i.apQ, paramString3);
    TextView localTextView = (TextView)localView.findViewById(com.tencent.mm.i.apW);
    localTextView.setText(b.e(paramMMActivity, paramString1, (int)localTextView.getTextSize()));
    if ((paramString2 == null) || (paramString2.length() == 0))
      localView.findViewById(com.tencent.mm.i.apX).setVisibility(8);
    while (true)
    {
      a(paramMMActivity, localce);
      return localce;
      ((TextView)localView.findViewById(com.tencent.mm.i.apX)).setText(paramString2);
    }
  }

  public static ce a(MMActivity paramMMActivity, String paramString1, byte[] paramArrayOfByte, String paramString2, String paramString3, boolean paramBoolean, r paramr)
  {
    return a(paramMMActivity, paramString1, paramArrayOfByte, paramString2, paramString3, paramBoolean, "", paramr);
  }

  public static ce a(MMActivity paramMMActivity, String paramString1, byte[] paramArrayOfByte, String paramString2, String paramString3, boolean paramBoolean, String paramString4, r paramr)
  {
    if (((paramString1 == null) || (paramString1.length() == 0)) && ((paramString2 == null) || (paramString2.length() == 0)))
    {
      aa.e("MicroMsg.MMConfirmDialog", "showDialogItem1 fail, title message both are empty");
      return null;
    }
    View localView = g(paramMMActivity, com.tencent.mm.k.aTe);
    ce localce = X(localView);
    a(localView, paramr, localce);
    a(localView, paramBoolean);
    a(localView, paramMMActivity);
    if (!cj.hX(paramString4))
      a(localView, com.tencent.mm.i.apQ, paramString4);
    TextView localTextView1 = (TextView)localView.findViewById(com.tencent.mm.i.aqb);
    localTextView1.setText(b.e(paramMMActivity, paramString1, (int)localTextView1.getTextSize()));
    TextView localTextView2 = (TextView)localView.findViewById(com.tencent.mm.i.apW);
    localTextView2.setText(b.e(paramMMActivity, paramString2, (int)localTextView2.getTextSize()));
    ImageView localImageView;
    if ((paramString3 == null) || (paramString3.length() == 0))
    {
      localView.findViewById(com.tencent.mm.i.apX).setVisibility(8);
      localImageView = (ImageView)localView.findViewById(com.tencent.mm.i.apZ);
      if (localImageView != null)
      {
        if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0))
          break label264;
        Bitmap localBitmap = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
        if (localBitmap == null)
          break label254;
        localImageView.setImageBitmap(localBitmap);
        a(localce, localBitmap);
      }
    }
    while (true)
    {
      a(paramMMActivity, localce);
      return localce;
      ((TextView)localView.findViewById(com.tencent.mm.i.apX)).setText(paramString3);
      break;
      label254: localImageView.setVisibility(8);
      continue;
      label264: localImageView.setVisibility(8);
    }
  }

  public static ce a(MMActivity paramMMActivity, byte[] paramArrayOfByte, String paramString1, String paramString2, String paramString3, boolean paramBoolean, int paramInt, r paramr)
  {
    return a(paramMMActivity, paramArrayOfByte, paramString1, paramString2, paramString3, paramBoolean, paramInt, "", paramr);
  }

  public static ce a(MMActivity paramMMActivity, byte[] paramArrayOfByte, String paramString1, String paramString2, String paramString3, boolean paramBoolean, int paramInt, String paramString4, r paramr)
  {
    View localView = g(paramMMActivity, com.tencent.mm.k.aTh);
    ce localce = X(localView);
    a(localView, paramr, localce);
    a(localView, paramBoolean);
    a(localView, paramMMActivity);
    if (!cj.hX(paramString4))
      a(localView, com.tencent.mm.i.apQ, paramString4);
    TextView localTextView1 = (TextView)localView.findViewById(com.tencent.mm.i.aqb);
    localTextView1.setText(b.e(paramMMActivity, paramString1, (int)localTextView1.getTextSize()));
    TextView localTextView2 = (TextView)localView.findViewById(com.tencent.mm.i.apW);
    localTextView2.setText(b.e(paramMMActivity, paramString2, (int)localTextView2.getTextSize()));
    TextView localTextView3 = (TextView)localView.findViewById(com.tencent.mm.i.apX);
    ImageView localImageView1;
    ImageView localImageView2;
    if ((paramString3 == null) || (paramString3.length() == 0))
    {
      localTextView3.setVisibility(8);
      localImageView1 = (ImageView)localView.findViewById(com.tencent.mm.i.apZ);
      localImageView2 = (ImageView)localView.findViewById(com.tencent.mm.i.aDT);
      if (localImageView1 != null)
      {
        if ((paramArrayOfByte != null) && (paramArrayOfByte.length != 0))
          break label227;
        aa.w("MicroMsg.MMConfirmDialog", "showDialogItem4, thumbData is null");
        localImageView1.setVisibility(8);
      }
    }
    while (true)
    {
      a(paramMMActivity, localce);
      return localce;
      localTextView3.setText(paramString3);
      localTextView3.setVisibility(0);
      break;
      label227: localImageView1.setVisibility(0);
      Bitmap localBitmap = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length);
      localImageView1.setImageBitmap(localBitmap);
      a(localce, localBitmap);
      if (localImageView2 != null)
      {
        localImageView2.setVisibility(0);
        switch (paramInt)
        {
        default:
          localImageView2.setVisibility(8);
          break;
        case 1:
          localImageView2.setImageResource(com.tencent.mm.h.ajI);
          break;
        case 2:
          localImageView2.setImageResource(com.tencent.mm.h.afZ);
        }
      }
    }
  }

  public static ce a(MMActivity paramMMActivity, byte[] paramArrayOfByte, String paramString, boolean paramBoolean, r paramr)
  {
    return a(paramMMActivity, paramArrayOfByte, paramString, paramBoolean, "", paramr);
  }

  public static ce a(MMActivity paramMMActivity, byte[] paramArrayOfByte, String paramString1, boolean paramBoolean, String paramString2, r paramr)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
    {
      aa.e("MicroMsg.MMConfirmDialog", "showDialogItem3 fail, imgData is null");
      return null;
    }
    View localView = g(paramMMActivity, com.tencent.mm.k.aTg);
    ce localce = X(localView);
    a(localView, paramr, localce);
    a(localView, paramBoolean);
    a(localView, paramMMActivity);
    if (!cj.hX(paramString2))
      a(localView, com.tencent.mm.i.apQ, paramString2);
    int i = e.a(paramMMActivity, 120.0F);
    Bitmap localBitmap = com.tencent.mm.sdk.platformtools.h.a(BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length), i, i);
    a(localce, localView, com.tencent.mm.i.apV, localBitmap, false);
    if ((paramString1 == null) || (paramString1.length() == 0))
      localView.findViewById(com.tencent.mm.i.apX).setVisibility(8);
    while (true)
    {
      a(paramMMActivity, localce);
      return localce;
      ((TextView)localView.findViewById(com.tencent.mm.i.apX)).setText(paramString1);
    }
  }

  private static void a(Activity paramActivity, ce paramce)
  {
    if (!paramActivity.isFinishing())
    {
      paramce.setInputMethodMode(1);
      paramce.setSoftInputMode(16);
      paramce.showAtLocation(paramActivity.getWindow().getDecorView(), 17, 0, 0);
    }
  }

  private static void a(View paramView, int paramInt, String paramString)
  {
    Button localButton = (Button)paramView.findViewById(paramInt);
    if (localButton != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if ((paramString != null) && (paramString.length() > 0))
        localButton.setText(paramString);
      return;
    }
  }

  private static void a(View paramView, int paramInt1, String paramString, boolean paramBoolean, int paramInt2)
  {
    TextView localTextView = (TextView)paramView.findViewById(paramInt1);
    if (localTextView != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      if ((!paramBoolean) || (!cj.hX(paramString)))
        break;
      localTextView.setVisibility(paramInt2);
      return;
    }
    localTextView.setText(paramString);
  }

  private static void a(View paramView, r paramr, ce paramce)
  {
    ((Button)paramView.findViewById(com.tencent.mm.i.apQ)).setOnClickListener(new l(paramr, paramView, paramce));
    Button localButton = (Button)paramView.findViewById(com.tencent.mm.i.apR);
    if (localButton != null)
      localButton.setOnClickListener(new m(paramr, paramce));
  }

  private static void a(View paramView, MMActivity paramMMActivity)
  {
    View localView = paramView.findViewById(com.tencent.mm.i.apT);
    if (localView != null)
      localView.setOnTouchListener(new p(paramMMActivity, paramView));
  }

  private static void a(View paramView, boolean paramBoolean)
  {
    EditText localEditText;
    if (paramView != null)
    {
      localEditText = (EditText)paramView.findViewById(com.tencent.mm.i.apY);
      if (localEditText != null)
        if (!paramBoolean)
          break label31;
    }
    label31: for (int i = 0; ; i = 8)
    {
      localEditText.setVisibility(i);
      return;
    }
  }

  private static void a(ce paramce, Bitmap paramBitmap)
  {
    paramce.setOnDismissListener(new q(paramBitmap));
  }

  private static void a(ce paramce, View paramView, int paramInt, Bitmap paramBitmap, boolean paramBoolean)
  {
    ImageView localImageView = (ImageView)paramView.findViewById(paramInt);
    if (localImageView != null)
    {
      if ((paramBitmap == null) || (paramBitmap.isRecycled()))
        break label38;
      localImageView.setImageBitmap(paramBitmap);
      a(paramce, paramBitmap);
    }
    label38: 
    while (!paramBoolean)
      return;
    localImageView.setVisibility(8);
  }

  public static ce b(MMActivity paramMMActivity, String paramString1, String paramString2, boolean paramBoolean, r paramr)
  {
    return b(paramMMActivity, paramString1, paramString2, paramBoolean, "", paramr);
  }

  public static ce b(MMActivity paramMMActivity, String paramString1, String paramString2, boolean paramBoolean, String paramString3, r paramr)
  {
    if ((paramString1 == null) || (!com.tencent.mm.a.c.as(paramString1)))
    {
      aa.e("MicroMsg.MMConfirmDialog", "showDialogItem3 fail, img does not exist");
      return null;
    }
    View localView = g(paramMMActivity, com.tencent.mm.k.aTg);
    ce localce = X(localView);
    a(localView, paramr, localce);
    a(localView, paramBoolean);
    a(localView, paramMMActivity);
    if (!cj.hX(paramString3))
      a(localView, com.tencent.mm.i.apQ, paramString3);
    int i = e.a(paramMMActivity, 120.0F);
    Bitmap localBitmap = com.tencent.mm.sdk.platformtools.h.a(paramString1, i, i, false);
    if (localBitmap == null)
    {
      aa.e("MicroMsg.MMConfirmDialog", "showDialogItem3 fail, bmp is null");
      return null;
    }
    ((ImageView)localView.findViewById(com.tencent.mm.i.apV)).setImageBitmap(localBitmap);
    a(localce, localBitmap);
    if ((paramString2 == null) || (paramString2.length() == 0))
      localView.findViewById(com.tencent.mm.i.apX).setVisibility(8);
    while (true)
    {
      a(paramMMActivity, localce);
      return localce;
      ((TextView)localView.findViewById(com.tencent.mm.i.apX)).setText(paramString2);
    }
  }

  private static View g(Context paramContext, int paramInt)
  {
    return ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(paramInt, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.i
 * JD-Core Version:    0.6.2
 */