package com.google.android.gms.common.images;

import android.content.Context;
import android.os.Handler;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public final class ImageManager
{
  private static final Object Ks = new Object();
  private static HashSet Kt = new HashSet();
  private final ExecutorService Ku;
  private final b Kv;
  private final Map Kw;
  private final Map Kx;
  private final Context mContext;
  private final Handler mHandler;
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.images.ImageManager
 * JD-Core Version:    0.6.2
 */