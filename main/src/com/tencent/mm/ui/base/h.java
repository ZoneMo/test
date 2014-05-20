package com.tencent.mm.ui.base;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.webkit.WebView;
import android.widget.Toast;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.tools.dg;
import com.tencent.mm.ui.tools.dl;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class h
{
  public static ar a(Context paramContext, String paramString, List paramList1, List paramList2, w paramw)
  {
    return a(paramContext, paramString, paramList1, paramList2, null, true, paramw);
  }

  public static ar a(Context paramContext, String paramString1, List paramList1, List paramList2, String paramString2, w paramw)
  {
    return a(paramContext, paramString1, paramList1, paramList2, paramString2, true, paramw);
  }

  @Deprecated
  public static ar a(Context paramContext, String paramString1, List paramList1, List paramList2, String paramString2, boolean paramBoolean, w paramw)
  {
    if (((paramList1 == null) || (paramList1.size() == 0)) && (cj.hX(paramString2)))
      return null;
    if (paramList1 == null)
      paramList1 = new ArrayList();
    if (paramBoolean)
    {
      dg localdg = new dg(paramContext);
      localdg.a(new s(paramString1, paramList1, paramList2, paramString2));
      localdg.b(new t(paramw));
      localdg.c(null);
      ar localar = localdg.aNy();
      a(paramContext, localar);
      return localar;
    }
    dl localdl = new dl(paramContext);
    localdl.a(new u(paramString1, paramList1, paramList2, paramString2));
    localdl.b(new j(paramw));
    localdl.c(null);
    localdl.cB();
    return null;
  }

  public static ar a(Context paramContext, String paramString1, String[] paramArrayOfString, String paramString2, v paramv)
  {
    return a(paramContext, paramString1, paramArrayOfString, paramString2, true, paramv, null);
  }

  public static ar a(Context paramContext, String paramString1, String[] paramArrayOfString, String paramString2, v paramv, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return a(paramContext, paramString1, paramArrayOfString, paramString2, true, paramv, paramOnCancelListener);
  }

  @Deprecated
  private static ar a(Context paramContext, String paramString1, String[] paramArrayOfString, String paramString2, boolean paramBoolean, v paramv, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    if (((paramArrayOfString == null) || (paramArrayOfString.length == 0)) && (cj.hX(paramString2)))
      return null;
    ArrayList localArrayList = new ArrayList();
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
      Collections.addAll(localArrayList, paramArrayOfString);
    if (!cj.hX(paramString2))
      localArrayList.add(paramString2);
    if (paramBoolean)
    {
      dg localdg = new dg(paramContext);
      localdg.a(new k(paramString1, localArrayList));
      localdg.b(new l(paramv));
      localdg.c(paramOnCancelListener);
      ar localar = localdg.aNy();
      a(paramContext, localar);
      return localar;
    }
    dl localdl = new dl(paramContext);
    localdl.a(new m(paramString1, localArrayList));
    localdl.b(new n(paramv));
    localdl.c(paramOnCancelListener);
    localdl.cB();
    return null;
  }

  private static ch a(Context paramContext, int paramInt, String paramString, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    ej.a(paramContext, true, null);
    ch localch = ch.b(paramContext, paramString, paramBoolean, paramInt, new q(paramOnCancelListener, paramContext));
    a(paramContext, localch);
    return localch;
  }

  public static ch a(Context paramContext, String paramString, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return a(paramContext, 0, paramString, paramBoolean, paramOnCancelListener);
  }

  public static x a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    if (paramInt2 != 0)
      localaa.mR(paramInt2);
    localaa.mS(paramInt1);
    localaa.b(paramInt3, paramOnClickListener1);
    localaa.c(paramInt4, paramOnClickListener2);
    localaa.a(new o(paramOnClickListener2));
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener)
  {
    return a(paramContext, paramInt1, paramInt2, true, paramOnClickListener);
  }

  public static x a(Context paramContext, int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    return a(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2), paramOnClickListener1, paramOnClickListener2);
  }

  public static x a(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    if (paramInt2 > 0)
      localaa.mR(paramInt2);
    localaa.mS(paramInt1);
    localaa.b(com.tencent.mm.n.bee, paramOnClickListener);
    localaa.dp(paramBoolean);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString, Drawable paramDrawable, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(null);
    localaa.wg(null);
    localaa.wh(paramString);
    localaa.f(paramDrawable);
    localaa.b(com.tencent.mm.n.bee, paramOnClickListener);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString, View paramView, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString);
    localaa.ai(paramView);
    localaa.b(com.tencent.mm.n.bee, paramOnClickListener);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString, View paramView, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString);
    localaa.wg(null);
    localaa.ai(paramView);
    localaa.b(com.tencent.mm.n.bee, paramOnClickListener1);
    localaa.c(com.tencent.mm.n.bds, paramOnClickListener2);
    localaa.a(new p(paramOnClickListener2));
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString1, View paramView, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    return a(paramContext, true, paramString1, paramView, paramString2, paramString3, paramOnClickListener1, paramOnClickListener2);
  }

  public static x a(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener)
  {
    return a(paramContext, paramString1, paramString2, true, paramOnClickListener);
  }

  public static x a(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString2);
    localaa.wg(paramString1);
    localaa.b(com.tencent.mm.n.bee, paramOnClickListener);
    localaa.a(paramOnCancelListener);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString2);
    localaa.wg(paramString1);
    localaa.b(com.tencent.mm.n.bee, paramOnClickListener1);
    localaa.c(com.tencent.mm.n.bds, paramOnClickListener2);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString1, String paramString2, View paramView, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString1);
    localaa.ai(paramView);
    localaa.a(paramString2, paramOnClickListener);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, DialogInterface.OnClickListener paramOnClickListener)
  {
    View localView = View.inflate(paramContext, com.tencent.mm.k.bbY, null);
    x localx = a(paramContext, paramString1, localView, paramString3, paramString4, paramOnClickListener, null);
    localx.setOnDismissListener(new r());
    ((WebView)localView.findViewById(com.tencent.mm.i.awP)).loadUrl(paramString2);
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString2);
    localaa.wg(paramString1);
    localaa.a(paramString3, paramOnClickListener1);
    localaa.b(paramString4, paramOnClickListener2);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString1, String paramString2, String paramString3, boolean paramBoolean, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString2);
    localaa.wg(paramString1);
    localaa.a(paramString3, paramOnClickListener);
    localaa.dp(paramBoolean);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, DialogInterface.OnClickListener paramOnClickListener)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString2);
    localaa.wg(paramString1);
    localaa.b(com.tencent.mm.n.bee, paramOnClickListener);
    localaa.dp(paramBoolean);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString2);
    localaa.wg(paramString1);
    localaa.b(com.tencent.mm.n.bee, paramOnClickListener1);
    localaa.c(com.tencent.mm.n.bds, paramOnClickListener2);
    localaa.dp(paramBoolean);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, boolean paramBoolean, String paramString1, View paramView, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString1);
    localaa.ai(paramView);
    localaa.a(paramString2, paramOnClickListener1);
    localaa.b(paramString3, paramOnClickListener2);
    localaa.dp(paramBoolean);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static x a(Context paramContext, boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString2);
    localaa.wg(paramString1);
    localaa.a(paramString3, paramOnClickListener1);
    localaa.b(paramString4, paramOnClickListener2);
    localaa.dp(paramBoolean);
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }

  public static void a(Context paramContext, Dialog paramDialog)
  {
    if ((paramContext instanceof MMActivity))
      ((MMActivity)paramContext).a(paramDialog);
  }

  public static Toast an(Context paramContext, String paramString)
  {
    Toast localToast = Toast.makeText(paramContext, paramString, 0);
    localToast.show();
    return localToast;
  }

  public static ar b(Context paramContext, String paramString1, List paramList1, List paramList2, String paramString2, w paramw)
  {
    return a(paramContext, paramString1, paramList1, paramList2, paramString2, false, paramw);
  }

  public static ar b(Context paramContext, String paramString1, String[] paramArrayOfString, String paramString2, v paramv)
  {
    return a(paramContext, paramString1, paramArrayOfString, paramString2, true, paramv, null);
  }

  public static ch b(Context paramContext, String paramString, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return a(paramContext, 2, paramString, true, paramOnCancelListener);
  }

  public static x b(Context paramContext, int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    return a(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2), false, paramOnClickListener1, paramOnClickListener2);
  }

  public static ar c(Context paramContext, String paramString1, String[] paramArrayOfString, String paramString2, v paramv)
  {
    return a(paramContext, paramString1, paramArrayOfString, paramString2, false, paramv, null);
  }

  public static x c(Context paramContext, int paramInt1, int paramInt2)
  {
    return p(paramContext, paramContext.getString(paramInt1), paramContext.getString(paramInt2));
  }

  public static x e(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    return a(paramContext, paramString1, paramString2, paramString3, true, null);
  }

  public static x p(Context paramContext, String paramString1, String paramString2)
  {
    if (((paramContext instanceof Activity)) && (((Activity)paramContext).isFinishing()))
      return null;
    aa localaa = new aa(paramContext);
    localaa.wf(paramString2);
    localaa.wg(paramString1);
    localaa.dp(true);
    localaa.b(com.tencent.mm.n.bee, new i());
    x localx = localaa.aGI();
    localx.show();
    a(paramContext, localx);
    return localx;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.h
 * JD-Core Version:    0.6.2
 */