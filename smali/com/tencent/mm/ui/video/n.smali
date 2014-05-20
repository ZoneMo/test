.class final Lcom/tencent/mm/ui/video/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/base/w;


# instance fields
.field final synthetic hsO:Lcom/tencent/mm/ui/video/VideoPlayerUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/tencent/mm/ui/video/n;->hsO:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ai(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/n;->hsO:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->k(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/video/n;->hsO:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->l(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/video/n;->hsO:Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->m(Lcom/tencent/mm/ui/video/VideoPlayerUI;)V

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
