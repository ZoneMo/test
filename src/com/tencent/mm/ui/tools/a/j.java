package com.tencent.mm.ui.tools.a;

import android.content.Context;
import android.graphics.Bitmap;

class j extends d
{
  final Context context;

  j(Context paramContext, n paramn, e parame, af paramaf, a parama)
  {
    super(paramn, parame, paramaf, parama);
    this.context = paramContext;
  }

  Bitmap a(ab paramab)
  {
    return b(paramab);
  }

  final s aOC()
  {
    return s.hqs;
  }

  // ERROR //
  protected final Bitmap b(ab paramab)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 13	com/tencent/mm/ui/tools/a/j:context	Landroid/content/Context;
    //   6: invokevirtual 32	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   9: astore_3
    //   10: aload_1
    //   11: invokevirtual 38	com/tencent/mm/ui/tools/a/ab:aOM	()Z
    //   14: ifeq +99 -> 113
    //   17: new 40	android/graphics/BitmapFactory$Options
    //   20: dup
    //   21: invokespecial 43	android/graphics/BitmapFactory$Options:<init>	()V
    //   24: astore 4
    //   26: aload 4
    //   28: iconst_1
    //   29: putfield 47	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   32: aload_3
    //   33: aload_1
    //   34: getfield 51	com/tencent/mm/ui/tools/a/ab:uri	Landroid/net/Uri;
    //   37: invokevirtual 57	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   40: astore_2
    //   41: aload_2
    //   42: aconst_null
    //   43: aload 4
    //   45: invokestatic 63	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   48: pop
    //   49: aload_2
    //   50: invokestatic 69	com/tencent/mm/ui/tools/a/ah:f	(Ljava/io/InputStream;)V
    //   53: aload_1
    //   54: getfield 73	com/tencent/mm/ui/tools/a/ab:dhY	I
    //   57: aload_1
    //   58: getfield 76	com/tencent/mm/ui/tools/a/ab:dhZ	I
    //   61: aload 4
    //   63: invokestatic 79	com/tencent/mm/ui/tools/a/j:a	(IILandroid/graphics/BitmapFactory$Options;)V
    //   66: aload_3
    //   67: aload_1
    //   68: getfield 51	com/tencent/mm/ui/tools/a/ab:uri	Landroid/net/Uri;
    //   71: invokevirtual 57	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   74: astore 7
    //   76: aload 7
    //   78: aconst_null
    //   79: aload 4
    //   81: invokestatic 63	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   84: astore 9
    //   86: aload 7
    //   88: invokestatic 69	com/tencent/mm/ui/tools/a/ah:f	(Ljava/io/InputStream;)V
    //   91: aload 9
    //   93: areturn
    //   94: astore 5
    //   96: aload_2
    //   97: invokestatic 69	com/tencent/mm/ui/tools/a/ah:f	(Ljava/io/InputStream;)V
    //   100: aload 5
    //   102: athrow
    //   103: astore 8
    //   105: aload 7
    //   107: invokestatic 69	com/tencent/mm/ui/tools/a/ah:f	(Ljava/io/InputStream;)V
    //   110: aload 8
    //   112: athrow
    //   113: aconst_null
    //   114: astore 4
    //   116: goto -50 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   32	49	94	finally
    //   76	86	103	finally
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.j
 * JD-Core Version:    0.6.2
 */