package com.tencent.mm.ui.tools.gridviewheaders;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.tools.ImageGalleryGridUI;
import com.tencent.mm.ui.tools.a.ad;
import com.tencent.mm.ui.tools.a.u;
import com.tencent.mm.ui.tools.cc;
import com.tencent.mm.ui.tools.ee;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class x extends BaseAdapter
  implements t
{
  private final Context context;
  private boolean fuN;
  private LayoutInflater ge;
  private int hoG;
  private int hoH;
  private List hoI;

  public x(Context paramContext, List paramList)
  {
    this.hoI = paramList;
    this.hoG = 2130903364;
    this.hoH = 2130903365;
    this.fuN = be.uz().isSDCardAvailable();
    this.ge = LayoutInflater.from(paramContext);
    this.context = paramContext;
  }

  public final View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    aa localaa;
    Object localObject1;
    Object localObject2;
    if (paramView == null)
    {
      paramView = this.ge.inflate(this.hoG, paramViewGroup, false);
      localaa = new aa(this);
      localaa.cQf = ((TextView)paramView.findViewById(2131362860));
      paramView.setTag(localaa);
      localObject1 = getItem(paramInt);
      if (!(localObject1 instanceof CharSequence))
        break label94;
      localObject2 = (CharSequence)localObject1;
    }
    while (true)
    {
      localaa.cQf.setText((CharSequence)localObject2);
      return paramView;
      localaa = (aa)paramView.getTag();
      break;
      label94: if ((localObject1 instanceof Date))
      {
        localObject2 = a.aOj().a((Date)localObject1, paramView.getContext());
      }
      else if ((localObject1 instanceof ak))
      {
        Date localDate = new Date(((ak)localObject1).field_createTime);
        localObject2 = a.aOj().a(localDate, paramView.getContext());
      }
      else
      {
        localObject2 = localObject1.toString();
      }
    }
  }

  public final boolean areAllItemsEnabled()
  {
    return false;
  }

  public final int getCount()
  {
    return this.hoI.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.hoI.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ab localab;
    if (paramView == null)
    {
      paramView = this.ge.inflate(this.hoH, paramViewGroup, false);
      localab = new ab(this);
      localab.ekQ = ((ImageView)paramView.findViewById(2131362861));
      paramView.setTag(localab);
    }
    Object localObject;
    while (true)
    {
      localObject = getItem(paramInt);
      if (((localObject instanceof CharSequence)) || (!(localObject instanceof ak)))
        break label245;
      if (!this.fuN)
        break label391;
      if ((this.context instanceof ImageGalleryGridUI))
        break;
      throw new IllegalArgumentException("the context should be ImageGalleryGridUI");
      localab = (ab)paramView.getTag();
    }
    ak localak = (ak)localObject;
    ee localee = new ee(localak, String.valueOf(localak.field_msgId));
    ImageGalleryGridUI localImageGalleryGridUI = (ImageGalleryGridUI)this.context;
    ImageView localImageView = localab.ekQ;
    if (localImageGalleryGridUI.aNo().contains(Integer.valueOf(paramInt)))
    {
      if (localImageGalleryGridUI.hjG == paramInt)
      {
        if (!localImageGalleryGridUI.hjR.isLocked())
        {
          localImageView.setVisibility(4);
          paramViewGroup.setVisibility(0);
        }
        u.ch(this.context);
        u.a(localee).aOS().aOV().aOU().aOR().a(localab.ekQ, new y(this, localImageGalleryGridUI, localee, localImageView));
        label245: return paramView;
      }
      u.ch(this.context);
      u.a(localee).aOS().aOV().aOU().aOR().e(localab.ekQ);
      return paramView;
    }
    if (localImageGalleryGridUI.hjG == paramInt)
    {
      if (!localImageGalleryGridUI.hjR.isLocked())
      {
        localImageView.setVisibility(4);
        paramViewGroup.setVisibility(0);
      }
      u.ch(this.context);
      u.a(localee).aOS().aOU().aOR().a(localab.ekQ, new z(this, localImageGalleryGridUI, localee, localImageView));
      return paramView;
    }
    u.ch(this.context);
    u.a(localee).aOS().aOU().aOR().e(localab.ekQ);
    return paramView;
    label391: u.ch(this.context);
    u.aOI().aOS().aOU().e(localab.ekQ);
    return paramView;
  }

  public final long or(int paramInt)
  {
    Object localObject = getItem(paramInt);
    if ((localObject instanceof CharSequence))
      return ((CharSequence)localObject).subSequence(0, 1).charAt(0);
    if ((localObject instanceof Date))
      return a.aOj().a((Date)localObject);
    if ((localObject instanceof ak))
    {
      Date localDate = new Date(((ak)localObject).field_createTime);
      return a.aOj().a(localDate);
    }
    return localObject.toString().subSequence(0, 1).charAt(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gridviewheaders.x
 * JD-Core Version:    0.6.2
 */