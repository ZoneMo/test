.class final Lcom/tencent/mm/ui/tools/a/q;
.super Lcom/tencent/mm/ui/tools/a/j;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/tencent/mm/ui/tools/a/j;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/tools/a/n;Lcom/tencent/mm/ui/tools/a/e;Lcom/tencent/mm/ui/tools/a/af;Lcom/tencent/mm/ui/tools/a/a;)V

    .line 21
    return-void
.end method

.method static i(Landroid/net/Uri;)I
    .locals 3
    .parameter

    .prologue
    .line 30
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v1, "Orientation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 32
    packed-switch v0, :pswitch_data_0

    .line 40
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 34
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 36
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 38
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method final a(Lcom/tencent/mm/ui/tools/a/ab;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p1, Lcom/tencent/mm/ui/tools/a/ab;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/a/q;->i(Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/a/d;->hqe:I

    .line 26
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/tools/a/j;->a(Lcom/tencent/mm/ui/tools/a/ab;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
